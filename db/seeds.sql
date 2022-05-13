USE company_db;

INSERT INTO department (dept_name)
VALUES ("Human Resources"),
("Sales"),
("Drivers"),
("Aerokit");

INSERT INTO roles (id, title, salary, dept_id)
VALUES ("Engineer", 80000, 1),
("Manager", 100000, 1),
("Intern", 60000, 2);

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES ("Kimi", "Raikkonen", 2, NULL),
("Nico", "Rosberg", 1, 1),
("Alain", "Prost", 1, 1),
("Lando", "Norris", 3, 3);