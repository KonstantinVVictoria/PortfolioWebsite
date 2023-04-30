function query(id) {
  const input = document.getElementById(id);
  fetch("api/ask", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({ query: input.value }),
  });
}
