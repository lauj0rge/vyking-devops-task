// Auto-detect backend URL based on environment
const getBackendUrl = () => {
  const hostname = window.location.hostname;

  if (hostname.includes('dev') || hostname.includes('localhost')) {
    return 'http://backend-dev:8081';
  } else if (hostname.includes('prod')) {
    return 'http://backend-prod:8081';
  } else {
    return '/api'; // Proxy through nginx for ingress
  }
};

const API_BASE = getBackendUrl();

async function loadTodos() {
  try {
    const res = await fetch(`${API_BASE}/todos`);
    if (!res.ok) throw new Error(`HTTP ${res.status}`);
    const todos = await res.json();
    const list = document.getElementById("todos");
    list.innerHTML = "";
    todos.forEach(t => {
      const li = document.createElement("li");
      li.innerText = t.task;
      list.appendChild(li);
    });
  } catch (error) {
    console.error("Failed to load todos:", error);
  }
}

async function addTodo() {
  const task = document.getElementById("newTodo").value;
  try {
    await fetch(`${API_BASE}/add`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ task })
    });
    loadTodos();
  } catch (error) {
    console.error("Failed to add todo:", error);
  }
}

// Initialize
document.addEventListener('DOMContentLoaded', loadTodos);