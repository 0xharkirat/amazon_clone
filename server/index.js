// creating an api
//jshint esversion:6
// imports from packages
const express = require("express");
const mongoose = require("mongoose");
require('dotenv').config();

// Imports from local files
const authRouter = require("./routes/auth");

// INIT
const app = express();
const port = 3000;

// Middlewares
app.use(authRouter);

// connections
mongoose
  .connect(`mongodb+srv://${process.env.DB_USER}:${process.env.DB_PASS}@cluster0.2tfm6n7.mongodb.net/?retryWrites=true&w=majority`)
  .then(() => {
    console.log("connection successfull");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(port, "0.0.0.0", () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
