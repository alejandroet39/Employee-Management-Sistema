const sql = require("sql");
const inquirer = require("inquirer");
const mysql = require("./assets");
let connection;

const handle_err = (err) => {
  console.log(err);
};

connection = sql.createConnection({
  host: "localhost",
});
