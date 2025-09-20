import logging
import os
from contextlib import contextmanager
from datetime import datetime
from decimal import Decimal
from typing import Any, Dict, Iterator

import mysql.connector
from flask import Flask, jsonify
from mysql.connector import Error, pooling

logger = logging.getLogger(__name__)

app = Flask(__name__)


def get_env_var(key: str) -> str:
    """Fetch required environment variable or raise error if missing."""
    value = os.getenv(key)
    if not value:
        raise RuntimeError(f"❌ Missing required environment variable: {key}")
    return value


def get_int_env_var(key: str, *, default: int | None = None) -> int:
    """Fetch an environment variable expected to contain an integer."""
    raw_value = os.getenv(key)
    if raw_value in (None, ""):
        if default is not None:
            return default
        raise RuntimeError(f"❌ Missing required environment variable: {key}")
    try:
        return int(raw_value)
    except ValueError as exc:
        raise RuntimeError(f"❌ Environment variable {key} must be an integer (got {raw_value!r})") from exc


def load_db_config_from_env() -> Dict[str, Any]:
    """Build the database configuration from environment variables."""
    return {
        "host": get_env_var("MYSQL_HOST"),
        "port": get_int_env_var("MYSQL_PORT"),
        "user": get_env_var("MYSQL_USER"),
        "password": get_env_var("MYSQL_PASSWORD"),
        "database": get_env_var("MYSQL_DATABASE"),
        # Short connection timeout so readiness checks fail fast when MySQL is down.
        "connection_timeout": get_int_env_var("MYSQL_CONNECT_TIMEOUT", default=5),
    }


def get_db_config() -> Dict[str, Any]:
    """Return the cached database configuration, loading it from the environment if needed."""
    cached_config = app.config.get("DB_CONFIG")
    if cached_config is not None:
        return cached_config

    config = load_db_config_from_env()
    app.config["DB_CONFIG"] = config
    return config


_CONNECTION_POOL: pooling.MySQLConnectionPool | None = None


def reset_connection_pool() -> None:
    """Clear the cached connection pool (primarily used in tests)."""
    global _CONNECTION_POOL
    _CONNECTION_POOL = None


def get_connection_pool() -> pooling.MySQLConnectionPool:
    """Create (or retrieve) the shared MySQL connection pool."""
    global _CONNECTION_POOL
    if _CONNECTION_POOL is not None:
        return _CONNECTION_POOL

    db_config = get_db_config()
    pool_size = get_int_env_var("MYSQL_POOL_SIZE", default=5)

    try:
        _CONNECTION_POOL = pooling.MySQLConnectionPool(
            pool_name="leaderboard_pool",
            pool_size=pool_size,
            pool_reset_session=True,
            **db_config,
        )
    except Error as exc:
        raise RuntimeError(f"❌ Failed to initialise database connection pool: {exc}") from exc

    return _CONNECTION_POOL


def get_connection() -> mysql.connector.MySQLConnection:
    """Obtain a connection from the pool and ensure it is healthy."""
    try:
        pool = get_connection_pool()
    except RuntimeError:
        # Bubble up the runtime error (missing env vars, pool init failure, etc.).
        raise

    try:
        connection = pool.get_connection()
    except pooling.PoolError as exc:
        # Pool may have been invalidated; reset and retry once.
        logger.warning("MySQL connection pool exhausted or invalid. Re-initialising: %s", exc)
        reset_connection_pool()
        pool = get_connection_pool()
        connection = pool.get_connection()
    except Error as exc:
        raise RuntimeError(f"❌ Database connection failed: {exc}") from exc

    try:
        # Ensure the connection is alive; reconnect if needed.
        connection.ping(reconnect=True, attempts=3, delay=1)
    except Error as exc:
        connection.close()
        reset_connection_pool()
        raise RuntimeError(f"❌ Database connection failed: {exc}") from exc

    return connection


@contextmanager
def mysql_cursor(*, dictionary: bool = False) -> Iterator[mysql.connector.cursor.MySQLCursor]:
    """Context manager yielding a cursor that always cleans up resources."""
    connection: mysql.connector.MySQLConnection | None = None
    cursor: mysql.connector.cursor.MySQLCursor | None = None

    try:
        connection = get_connection()
        cursor = connection.cursor(dictionary=dictionary)
        yield cursor
    finally:
        if cursor is not None:
            cursor.close()
        if connection is not None and connection.is_connected():
            connection.close()


def normalise_row(row: Dict[str, Any]) -> Dict[str, Any]:
    """Convert MySQL-specific types (e.g. Decimal, datetime) into JSON serialisable values."""
    normalised: Dict[str, Any] = {}
    for key, value in row.items():
        if isinstance(value, datetime):
            normalised[key] = value.isoformat()
        elif isinstance(value, Decimal):
            normalised[key] = float(value)
        else:
            normalised[key] = value
    return normalised


@app.route("/health", methods=["GET"])
def health():
    return {"status": "ok"}, 200


@app.route("/readiness", methods=["GET"])
def readiness():
    try:
        with mysql_cursor() as cursor:
            cursor.execute("SELECT 1")
        return {"status": "ready"}, 200
    except Exception as exc:
        logger.exception("Readiness check failed")
        return {"status": "not ready", "details": str(exc)}, 500


@app.route("/leaderboard", methods=["GET"])
def get_leaderboard():
    query = (
        """
        SELECT
            player_id,
            gamer_tag,
            region,
            player_level,
            total_matches,
            win_rate,
            avg_session_length,
            favorite_mode,
            last_login
        FROM player_leaderboard
        ORDER BY win_rate DESC, total_matches DESC
        LIMIT 15
        """
    )

    try:
        with mysql_cursor(dictionary=True) as cursor:
            cursor.execute(query)
            rows = cursor.fetchall()
        leaderboard = [normalise_row(row) for row in rows]
        return jsonify(leaderboard), 200
    except Exception as exc:
        logger.exception("Failed to fetch leaderboard")
        return jsonify({"error": f"Failed to fetch leaderboard: {exc}"}), 500


if __name__ == "__main__":
    port = int(os.getenv("PORT", 8081))
    app.run(host="0.0.0.0", port=port, debug=False)
