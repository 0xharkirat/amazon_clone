// creating an api
//jshint esversion:6
const express = require("express");
const app = express();

const port = 3000;
app.get("/", function (req, res) {
  res.json({
    "hi": "hello"
  });
});

app.listen(port, "0.0.0.0",  () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
