show databases;
use dbemp;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);


INSERT INTO employees VALUES
(1, 'Samar Shakya', 1),
(2, 'swodesh Singh', 2),
(3, 'Aadarsh Chaulagain', 2),
(4, 'Himal adhikari', 3),
(5, 'Mohit Tichkule', NULL);


INSERT INTO departments VALUES
(1, 'Sales'),
(2, 'Engineering'),
(3, 'Human Resources'),
(4, 'Customer Service'),
(5, 'Research And Development');

SELECT 
    employees.employee_id,
    employees.employee_name,
    departments.department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.department_id;


SELECT 
    employees.employee_id,
    employees.employee_name,
    departments.department_name
FROM employees
inner JOIN departments
ON employees.department_id = departments.department_id;

SELECT 
    employees.employee_id,
    employees.employee_name,
    departments.department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id;


SELECT 
    employees.employee_id,
    employees.employee_name,
    departments.department_name
FROM employees
full JOIN departments
ON employees.department_id = departments.department_id;

SELECT 
    employees.employee_id,
    employees.employee_name,
    departments.department_name
FROM employees
cross JOIN departments
ON employees.department_id = departments.department_id;
