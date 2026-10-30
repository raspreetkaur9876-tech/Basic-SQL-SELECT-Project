
-- BASIC SQL SELECT PROJECT
-- Database Creation

CREATE DATABASE IF NOT EXISTS Basic_SQL_Project;

USE Basic_SQL_Project;

-- Create Sales Table

CREATE TABLE IF NOT EXISTS Sales (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Product VARCHAR(50),
    Category VARCHAR(50),
    City VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10,2)
);

-- Insert Sample Data

INSERT INTO Sales VALUES
(1, 'Rahul', 'Laptop', 'Electronics', 'Delhi', 2, 55000),
(2, 'Priya', 'Mobile', 'Electronics', 'Mumbai', 3, 20000),
(3, 'Aman', 'Chair', 'Furniture', 'Delhi', 5, 3000),
(4, 'Simran', 'Table', 'Furniture', 'Chandigarh', 2, 7000),
(5, 'Neha', 'Headphones', 'Electronics', 'Pune', 4, 1500),
(6, 'Arjun', 'Notebook', 'Stationery', 'Mumbai', 10, 100),
(7, 'Karan', 'Pen', 'Stationery', 'Delhi', 20, 20),
(8, 'Mehak', 'Monitor', 'Electronics', 'Chandigarh', 2, 12000),
(9, 'Riya', 'Sofa', 'Furniture', 'Pune', 1, 18000),
(10, 'Dev', 'Keyboard', 'Electronics', 'Mumbai', 3, 2500);

-- QUERY 1: Display All Records

SELECT * FROM Sales;

-- QUERY 2: Display Customer Names

SELECT CustomerName FROM Sales;

-- QUERY 3: Display Product Names

SELECT Product FROM Sales;

-- QUERY 4: Find Orders from Delhi

SELECT * FROM Sales
WHERE City = 'Delhi';

-- QUERY 5: Find Electronics Products

SELECT * FROM Sales
WHERE Category = 'Electronics';

-- QUERY 6: Find Quantity Greater Than 3

SELECT * FROM Sales
WHERE Quantity > 3;

-- QUERY 7: Sort Products by Price (Ascending)

SELECT * FROM Sales
ORDER BY Price ASC;

-- QUERY 8: Sort Products by Price (Descending)

SELECT * FROM Sales
ORDER BY Price DESC;

-- QUERY 9: Find Orders with Price Greater Than 5000

SELECT * FROM Sales
WHERE Price > 5000;

-- QUERY 10: Sort Customers Alphabetically

SELECT * FROM Sales
ORDER BY CustomerName ASC;
