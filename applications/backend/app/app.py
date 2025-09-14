from flask import Flask, request, jsonify
import mysql.connector
import os

app = Flask(__name__)

# MySQL connection from env vars
db_config = {
    "host": os.getenv("MYSQL_HOST", "mysql-dev"),
    "port": int(os.getenv("MYSQL_PORT", "3306")),
    "user": os.getenv("MYSQL_USER", "devuser"),
    "password": os.getenv("MYSQL_PASSWORD", "devpass123"),
    "database": os.getenv("MYSQL_DATABASE", "devdb"),
}

def get_connection():
    return mysql.connector.connect(**db_config)

@app.route("/todos", methods=["GET"])
def get_todos():
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("CREATE TABLE IF NOT EXISTS todos (id INT AUTO_INCREMENT PRIMARY KEY, task VARCHAR(255))")
    cursor.execute("SELECT * FROM todos")
    todos = cursor.fetchall()
    cursor.close()
    conn.close()
    return jsonify(todos)

@app.route("/add", methods=["POST"])
def add_todo():
    data = request.json
    task = data.get("task")
    conn = get_connection()
    cursor = conn.cursor()
    cursor.execute("INSERT INTO todos (task) VALUES (%s)", (task,))
    conn.commit()
    cursor.close()
    conn.close()
    return jsonify({"message": "Task added"}), 201

@app.route("/delete/<int:todo_id>", methods=["DELETE"])
def delete_todo(todo_id):
    conn = get_connection()
    cursor = conn.cursor()
    cursor.execute("DELETE FROM todos WHERE id = %s", (todo_id,))
    conn.commit()
    cursor.close()
    conn.close()
    return jsonify({"message": "Task deleted"})
