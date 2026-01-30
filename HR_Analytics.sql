
/* HR ANALYTICS SQL PROJECT */
CREATE DATABASE IF NOT EXISTS hr_analytics;
USE hr_analytics;

CREATE TABLE employees (
 employee_id INT PRIMARY KEY,
 name VARCHAR(50),
 department VARCHAR(50),
 hire_date DATE,
 salary DECIMAL(10,2)
);

INSERT INTO employees VALUES
(1,'Ali','HR','2019-01-10',80000),
(2,'Sara','Finance','2020-03-15',90000),
(3,'Usman','IT','2018-07-01',100000);

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;
