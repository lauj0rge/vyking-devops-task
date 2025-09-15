from flask import Flask, request, jsonify
import mysql.connector
import os

app = Flask(__name__)

def get_env_var(key: str) -> str:
    """Fetch required environment variable or raise error if missing."""
    value = os.getenv(key)
    if not value:
        raise RuntimeError(f"❌ Missing required environment variable: {key}")
    return value

# Database config from environment variables (provided by Kubernetes Secrets)
db_config = {
    "host": get_env_var("MYSQL_HOST"),
    "port": int(get_env_var("MYSQL_PORT")),
    "user": get_env_var("MYSQL_USER"),
    "password": get_env_var("MYSQL_PASSWORD"),
    "database": get_env_var("MYSQL_DATABASE"),
}

def get_connection():
    try:
        return mysql.connector.connect(**db_config)
    except mysql.connector.Error as e:
        raise RuntimeError(f"❌ Database connection failed: {e}")

# -------------------------
# Endpoints
# -------------------------

@app.route("/health", methods=["GET"])
def health():
    """Health check endpoint for Kubernetes probes."""
    try:
        conn = get_connection()
        conn.close()
        return {"status": "ok"}, 200
    except Exception as e:
        return {"status": "error", "details": str(e)}, 500

@app.route("/todos", methods=["GET"])
def get_todos():
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute(
        "CREATE TABLE IF NOT EXISTS todos (id INT AUTO_INCREMENT PRIMARY KEY, task VARCHAR(255))"
    )
    cursor.execute("SELECT * FROM todos")
    todos = cursor.fetchall()
    cursor.close()
    conn.close()
    return jsonify(todos)

@app.route("/add", methods=["POST"])
def add_todo():
    data = request.json
    task = data.get("task")
    if not task:
        return {"error": "Task is required"}, 400
    conn = get_connection()
    cursor = conn.cursor()
    cursor.execute("INSERT INTO todos (task) VALUES (%s)", (task,))
    conn.commit()
    cursor.close()
    conn.close()
    return {"message": "Task added"}, 201

@app.route("/delete/<int:todo_id>", methods=["DELETE"])
def delete_todo(todo_id):
    conn = get_connection()
    cursor = conn.cursor()
    cursor.execute("DELETE FROM todos WHERE id = %s", (todo_id,))
    conn.commit()
    cursor.close()
    conn.close()
    return {"message": "Task deleted"}

if __name__ == "__main__":
    port = int(os.getenv("PORT", 8081))
    app.run(host="0.0.0.0", port=port, debug=False)