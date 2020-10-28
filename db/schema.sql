DROP DATABASE IF EXISTS employee_tracker_db;

CREATE DATABASE employee_tracker_db;

USE employee_tracker_db;

CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR (30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT,
);

CREATE TABLE department(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
);

CREATE TABLE role (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL,
    department_id INT NOT NULL,
);

INSERT INTO department(name) VALUES ("EXECUTIVE");
INSERT INTO department(name) VALUES ("ENGINEERING");

INSERT INTO role(title, salary, department_id) VALUES ("CEO",200,000, 1);
INSERT INTO role(title, salary, department_id) VALUES ("Developer",70,000, 2);

INSERT INTO employee(first_name,last_name,role_id,manager_id) VALUES ("Ben", "Resnicoff", 1, NULL)
