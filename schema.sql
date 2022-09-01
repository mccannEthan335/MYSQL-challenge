DROP DATABASE if EXISTS inventory_db
CREATE DATABASE inventory_db

USE inventory_db

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY
    name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY
    title VARCHAR(30) NOT NULL
    salary DECIMAL(10,2)
    department_id INT,
    FOREIGN KEY (department)
    REFERENCES department(id)
    ON DELETE SET NULL
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY
    first_name VARCHAR(30)
    last_name VARCHAR(30)
    role_id INT,
    FOREIGN KEY (role)
    REFERENCES department(id)
    ON DELETE SET NULL
    manager_id VARCHAR(30),
    
);