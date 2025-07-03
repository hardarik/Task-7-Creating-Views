USE task7;

CREATE TABLE Sales_Order (
    OrderID INT PRIMARY KEY,
    ClientName VARCHAR(50),
    OrderDate DATE,
    TotalAmount DECIMAL(10,2)
);

CREATE TABLE Client_Master (
    ClientID INT PRIMARY KEY,
    ClientName VARCHAR(50),
    City VARCHAR(50),
    Grade INT
);


INSERT INTO Sales_Order VALUES 
(1, 'Arik', '2024-07-01', 15000.00),
(2, 'Sneha', '2024-07-02', 22000.00);

INSERT INTO Client_Master VALUES 
(101, 'Arik', 'Delhi', 2),
(102, 'Sneha', 'Mumbai', 1);



-- 1. View: High Value Orders

CREATE VIEW HighValueOrders AS
SELECT OrderID, ClientName, TotalAmount
FROM Sales_Order
WHERE TotalAmount > 20000;


-- 2. View: Join Two Tables

CREATE VIEW ClientOrderDetails AS
SELECT c.ClientName, c.City, c.Grade, s.OrderID, s.OrderDate, s.TotalAmount
FROM Client_Master c
JOIN Sales_Order s ON c.ClientName = s.ClientName;


-- 3. View: Aggregation Example

CREATE VIEW TotalOrderByClient AS
SELECT ClientName, SUM(TotalAmount) AS TotalSpent
FROM Sales_Order
GROUP BY ClientName;