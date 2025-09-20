from datetime import datetime
from decimal import Decimal
from pathlib import Path
from unittest.mock import MagicMock
import sys

import pytest

sys.path.append(str(Path(__file__).resolve().parents[1]))

import app as app_module


@pytest.fixture(autouse=True)
def reset_pool_and_config():
    """Ensure globals are reset between tests to avoid cross-test state."""
    app_module.reset_connection_pool()
    app_module.app.config.pop("DB_CONFIG", None)
    yield
    app_module.reset_connection_pool()
    app_module.app.config.pop("DB_CONFIG", None)


@pytest.fixture
def client():
    app_module.app.config.update(TESTING=True)
    with app_module.app.test_client() as test_client:
        yield test_client


def mock_connection(rows=None):
    cursor = MagicMock()
    cursor.fetchall.return_value = rows or []
    connection = MagicMock()
    connection.cursor.return_value = cursor
    connection.is_connected.return_value = True
    return connection, cursor


def test_get_env_var_missing(monkeypatch):
    monkeypatch.delenv("MISSING_ENV", raising=False)
    with pytest.raises(RuntimeError) as exc:
        app_module.get_env_var("MISSING_ENV")
    assert "MISSING_ENV" in str(exc.value)


def test_get_int_env_var_invalid(monkeypatch):
    monkeypatch.setenv("INVALID_INT", "not-a-number")
    with pytest.raises(RuntimeError) as exc:
        app_module.get_int_env_var("INVALID_INT")
    assert "INVALID_INT" in str(exc.value)


def test_normalise_row_handles_datetime_and_decimal():
    row = {
        "last_login": datetime(2024, 1, 1, 12, 0, 0),
        "win_rate": Decimal("56.5"),
        "gamer_tag": "Vyking",
    }
    normalised = app_module.normalise_row(row)
    assert normalised["last_login"].startswith("2024-01-01T12:00:00")
    assert normalised["win_rate"] == pytest.approx(56.5)
    assert normalised["gamer_tag"] == "Vyking"


def test_readiness_success(client, monkeypatch):
    connection, cursor = mock_connection()
    monkeypatch.setattr(app_module, "get_connection", lambda: connection)

    response = client.get("/readiness")
    assert response.status_code == 200
    assert response.get_json() == {"status": "ready"}
    cursor.execute.assert_called_once_with("SELECT 1")
    cursor.close.assert_called_once()
    connection.close.assert_called_once()


def test_leaderboard_success(client, monkeypatch):
    rows = [
        {
            "player_id": 1,
            "gamer_tag": "Vyking",
            "region": "EU",
            "player_level": 42,
            "total_matches": 120,
            "win_rate": Decimal("55.5"),
            "avg_session_length": Decimal("32.4"),
            "favorite_mode": "Solo",
            "last_login": datetime(2024, 1, 1, 10, 0, 0),
        }
    ]
    connection, cursor = mock_connection(rows)
    monkeypatch.setattr(app_module, "get_connection", lambda: connection)

    response = client.get("/leaderboard")

    assert response.status_code == 200
    payload = response.get_json()
    assert isinstance(payload, list)
    assert payload[0]["win_rate"] == pytest.approx(55.5)
    assert payload[0]["last_login"].startswith("2024-01-01T10:00:00")
    cursor.execute.assert_called_once()


def test_leaderboard_failure(client, monkeypatch):
    def raise_error(*_args, **_kwargs):
        raise RuntimeError("boom")

    monkeypatch.setattr(app_module, "get_connection", raise_error)

    response = client.get("/leaderboard")
    assert response.status_code == 500
    assert "boom" in response.get_json()["error"]
