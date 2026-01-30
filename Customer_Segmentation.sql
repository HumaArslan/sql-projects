
/* CUSTOMER SEGMENTATION SQL PROJECT */
CREATE DATABASE IF NOT EXISTS customers_db;
USE customers_db;

CREATE TABLE customers (
 customer_id INT PRIMARY KEY,
 name VARCHAR(50),
 age INT,
 city VARCHAR(50),
 total_spent DECIMAL(10,2)
);

INSERT INTO customers VALUES
(1,'Ayesha',28,'Lahore',120000),
(2,'Bilal',35,'Karachi',200000),
(3,'Hina',22,'Islamabad',50000);

SELECT city, AVG(total_spent) AS avg_spending
FROM customers
GROUP BY city;
