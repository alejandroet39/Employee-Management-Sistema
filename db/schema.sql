DROP DATABASE IF EXISTS company_db
create DATABASE company_db

USE company_db;

CREATE TABLE departments (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dept_name VARCHAR(10) NOT NULL UNQ
);

CREATE TABLE employees (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  first_name VARCHAR(30) NOT NULL,
  last_name Varchar(30) NOT NULL,
  role_id INT,
  manager_id INT,
  FOREIGN KEY (role_id) REFERENCES roles(id) DELETE NULL,
  FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE NULL  
);

CREATE TABLE roles (
  id INT NOT NULL AUTO_INCREMENT PRIMARY_KEY,
  tittle VARCHAR (20) NOT NULL UNQ,
  dept_id INT,
  salary INT NOT NULL,
  FOREIGN KEY (dept_id) REFERENCES department(id) ON DELETE SET NULL 
);

CREATE USER "employees"@"localhost";
DROP USER IF EXISTS "employees"@"localhost";
