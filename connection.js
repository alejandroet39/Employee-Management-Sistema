const Sequelize = require("sequelize");
require("dotenv").config();

const sequelize = new Sequelize(
  process.env.DB_COMPANY,
  process.env.DB_ROLES,
  process.env.DB_EMPLOYEES,
  process.env.DB_DEPARTMENT,
  {
    host: "localhost",
    dialect: "mysql",
    port: 3001,
  }
);

module.exports = sequelize;
