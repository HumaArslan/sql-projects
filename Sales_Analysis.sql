
/* SALES ANALYSIS SQL PROJECT */
CREATE DATABASE IF NOT EXISTS sales_db;
USE sales_db;

CREATE TABLE sales (
 sale_id INT PRIMARY KEY,
 product VARCHAR(50),
 region VARCHAR(50),
 sale_date DATE,
 revenue DECIMAL(10,2)
);

INSERT INTO sales VALUES
(1,'Laptop','North','2024-01-10',150000),
(2,'Mobile','South','2024-01-15',80000),
(3,'Tablet','North','2024-02-01',60000);

SELECT region, SUM(revenue) AS total_revenue
FROM sales
GROUP BY region;
