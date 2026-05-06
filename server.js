const express = require("express");
const app = express();

const PORT = process.env.PORT || 3000;
const ENV = process.env.ENV || "dev";
const VERSION = process.env.VERSION || "1.0";

app.get("/", (req, res) => {
  res.send("Hello from DevOps Project 🚀");
});

app.get("/health", (req, res) => {
  res.json({ status: "ok" });
});

app.get("/info", (req, res) => {
  res.json({
    env: ENV,
    version: VERSION
  });
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});