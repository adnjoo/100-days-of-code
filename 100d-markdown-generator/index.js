const fs = require("fs");
const prompt = require("prompt-sync")({ sigint: true });

const userPrompt = prompt("Use today's date? (y/n)");
let markdownDate;

(() => {
  if (userPrompt === "y" || userPrompt === "enter") {
    markdownDate = new Date().toISOString();
  } else {
    markdownDate = prompt("Enter date (yyyy-mm-dd): ");
    if (markdownDate.length !== 10) {
      console.log("Invalid date");
      return;
    }
  }
})();

const increaseDate = () => {
  markdownDate = new Date(markdownDate);
  markdownDate.setDate(markdownDate.getDate() + 1);
  markdownDate = markdownDate.toISOString();
};

const markdownArray = [];
for (let i = 1; i <= 100; i++) {
  markdownArray.push(`#### D${i}: ${markdownDate.slice(5, 10)}`);
  increaseDate();
}

fs.writeFile("./template.md", markdownArray.join("\n"), (err) => {
  if (err) throw err;
  console.log("The file has been saved!");
});
