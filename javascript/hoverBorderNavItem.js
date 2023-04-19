function hoverBorderNavItem(id, transparency) {
  const element = document.getElementById(id);
  const navbar = document.getElementById("navbar_container");
  element.style.borderBottom = `2px solid rgba(249, 194, 60, ${transparency})`;
}
