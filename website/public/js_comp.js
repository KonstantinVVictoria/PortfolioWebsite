let StateTemplate = {};

StateTemplate.init = function () {
  let _internal = {};
  return {
    add: function (state_name, init_value) {
      let _callback = () => {};
      _internal[state_name] = {
        value: init_value,
        update: function (new_value) {
          _internal[state_name].value = new_value;
          _callback(_internal[state_name].value);
        },
      };
      return {
        on_change: function (callback) {
          _callback = (new_state) => callback(new_state);
        },
      };
    },
    get: function (state_name) {
      return _internal[state_name];
    },
  };
};

let State = StateTemplate.init();
function hoverColor(element_id, color) {
  if (element_id === "") return;
  let element = document.getElementById(element_id);
  element.style.backgroundColor = color;
}
function hoverBorderNavItem(id, transparency) {
  const element = document.getElementById(id);
  const navbar = document.getElementById("navbar_container");
  element.style.borderBottom = `2px solid rgba(249, 194, 60, ${transparency})`;
}
function linkTo(link) {
  window.location.href = link;
}
function saveToClipboard(text) {
  navigator.clipboard.writeText(text).then(function (x) {
    alert("Copied!");
  });
}
