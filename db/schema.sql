DROP DATABASE IF EXISTS employee_db;

CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR (30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT
);

CREATE TABLE department(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL
);

INSERT INTO department(name) VALUES ("Executive");
INSERT INTO department(name) VALUES ("Sales");
INSERT INTO department(name) VALUES ("Engineering");
INSERT INTO department(name) VALUES ("Finance");
INSERT INTO department(name) VALUES ("Legal");

INSERT INTO roles(title, salary, department_id) VALUES ("CEO",200000, 1);
INSERT INTO roles(title, salary, department_id) VALUES ("Assistant to the CEO",25000, 1);
INSERT INTO roles(title, salary, department_id) VALUES ("VP Sales",100000, 2);
INSERT INTO roles(title, salary, department_id) VALUES ("Salesperson",50000, 2);
INSERT INTO roles(title, salary, department_id) VALUES ("VP Engineering",125000, 3);
INSERT INTO roles(title, salary, department_id) VALUES ("Engineer",75000, 3);
INSERT INTO roles(title, salary, department_id) VALUES ("Accountant",50000, 4);
INSERT INTO roles(title, salary, department_id) VALUES ("Head Lawyer",125000, 5);
INSERT INTO roles(title, salary, department_id) VALUES ("Lawyer",100000, 5);

INSERT INTO employees(first_name,last_name,role_id,manager_id) VALUES
("Ben", "Resnicoff", 1, NULL),
("Tommy", "Serrino", 2, NULL),
("Kinar", "Prasad", 3, NULL),
("Henry", "Shrier", 4, NULL),
("Evan", "Palatnik", 5, NULL),
("Mason", "Alexander", 6, NULL),
("Henry", "Thinnes", 7, NULL),
("Alex", "Kiener", 8, NULL),
("Bobby", "Sieja", 9, NULL);
