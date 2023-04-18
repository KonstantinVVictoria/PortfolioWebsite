const API_key = "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";
import fs from "fs";
import fetch from "node-fetch";
const guide = fs.readFileSync("./data.txt", "utf-8");
let memory = [Response("system", guide || "You are a helpful assistant.")];

function Response(role, content) {
  return {
    role: role,
    content: content,
  };
}

function prompt(question, callback) {
  var stdin = process.stdin,
    stdout = process.stdout;

  stdin.resume();
  stdout.write(question);

  stdin.once("data", function (data) {
    callback(data.toString().trim());
  });
}

let PromptUser = async (question) =>
  await prompt(question, async function (input) {
    if (input == "exit") process.exit();
    else {
      memory.push(Response("user", input));
      const OpenAIParameters = {
        model: "gpt-4",
        messages: memory,
        temperature: 0.7,
      };
      const request = {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: "Bearer " + API_key,
        },
        body: JSON.stringify(OpenAIParameters),
      };
      console.log("Hold on I'm looking into it...");
      fetch("https://api.openai.com/v1/chat/completions", request)
        .then((request) => request.json())
        .then((data) => {
          try {
            console.log(data.choices[0].message.content);
          } catch (error) {
            console.log(error);
          }
          PromptUser("What else can I help you with?\n");
        })
        .catch((error) => console.log(error));
    }
  });

PromptUser("How can I help you?\n");
