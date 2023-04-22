function saveToClipboard(text) {
  navigator.clipboard.writeText(text).then(function (x) {
    alert("Copied!");
  });
}
