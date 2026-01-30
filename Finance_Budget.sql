
/* FINANCE & BUDGET SQL PROJECT */
CREATE DATABASE IF NOT EXISTS finance_db;
USE finance_db;

CREATE TABLE expenses (
 expense_id INT PRIMARY KEY,
 department VARCHAR(50),
 expense_type VARCHAR(50),
 amount DECIMAL(10,2),
 expense_date DATE
);

INSERT INTO expenses VALUES
(1,'HR','Training',50000,'2024-01-05'),
(2,'IT','Software',120000,'2024-01-20'),
(3,'Marketing','Ads',90000,'2024-02-01');

SELECT department, SUM(amount) AS total_expense
FROM expenses
GROUP BY department;
