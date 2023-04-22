function hoverColor(element_id, color) {
  if (element_id === "") return;
  let element = document.getElementById(element_id);
  element.style.backgroundColor = color;
}
