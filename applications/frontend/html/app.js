async function loadTodos() {
  const res = await fetch("/api/todos");
  const todos = await res.json();
  const list = document.getElementById("todos");
  list.innerHTML = "";
  todos.forEach(t => {
    const li = document.createElement("li");
    li.innerText = t.task;
    list.appendChild(li);
  });
}

async function addTodo() {
  const task = document.getElementById("newTodo").value;
  await fetch("/api/todos", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ task })
  });
  loadTodos();
}

loadTodos();
