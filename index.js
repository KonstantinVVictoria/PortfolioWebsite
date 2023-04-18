const express = require("express");
const path = require("path");
const app = express();
const { exec } = require("child_process");

async function initialize() {
  console.log("Building...");

  await new Promise((res) =>
    exec("lua build.lua", (error, stdout, stderr) => {
      if (error) {
        console.log(`error: ${error.message}`);
        return;
      }
      if (stderr) {
        console.log(`stderr: ${stderr}`);
        return;
      }
      console.log(`stdout: ${stdout}`);

      res();
    })
  );

  app.listen(3000, () => console.log("Server listening at port 3000"));

  app.use(express.static(path.join(__dirname, "./website/public")));
  app.use(express.static(path.join(__dirname, "./website/images")));
  // respond with "hello world" when a GET request is made to the homepage
  app.get("/", (req, res) => {
    res.sendFile("./index.html", { root: "./website" });
  });
}

initialize();
