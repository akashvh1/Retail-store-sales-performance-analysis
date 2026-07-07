-- ============================================================
-- Data Analytics & Business Intelligence - Task 2
-- Advanced Data Analysis, SQL Joins & Business KPI Dashboard
-- Dataset: Retail Sales Dataset (Kaggle) 
-- ============================================================

-- ------------------------------------------------------------
-- STEP 1: Create Tables
-- ------------------------------------------------------------

CREATE TABLE Customers (
    Customer_ID     VARCHAR(10) PRIMARY KEY,
    Customer_Name   VARCHAR(100),
    Region          VARCHAR(20),
    Segment         VARCHAR(20),
    Gender          VARCHAR(10),
    Age             INT
);

CREATE TABLE Orders (
    Order_ID          INT PRIMARY KEY,
    Order_Date        DATE,
    Customer_ID       VARCHAR(10),
    Product_Category  VARCHAR(30),
    Quantity          INT,
    Price_per_Unit    DECIMAL(10,2),
    Sales             DECIMAL(10,2),
    Discount          DECIMAL(4,2),
    Profit            DECIMAL(10,2),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

-- ------------------------------------------------------------
-- STEP 2: INNER JOIN - Combine Orders and Customers
-- ------------------------------------------------------------

SELECT
    o.Order_ID,
    o.Order_Date,
    c.Customer_Name,
    c.Region,
    c.Segment,
    o.Product_Category,
    o.Sales,
    o.Profit
FROM Orders o
INNER JOIN Customers c
    ON o.Customer_ID = c.Customer_ID;

-- ------------------------------------------------------------
-- STEP 3: Calculate Key KPIs
-- ------------------------------------------------------------

-- 1. Total Sales by Region
SELECT
    c.Region,
    SUM(o.Sales) AS Total_Sales
FROM Orders o
JOIN Customers c ON o.Customer_ID = c.Customer_ID
GROUP BY c.Region
ORDER BY Total_Sales DESC;

-- 2. Profit Margin by Category
SELECT
    Product_Category,
    SUM(Profit) / SUM(Sales) AS Profit_Margin
FROM Orders
GROUP BY Product_Category
ORDER BY Profit_Margin DESC;

-- 3. Monthly Sales Trend
SELECT
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Monthly_Sales
FROM Orders
GROUP BY Month
ORDER BY Month;

-- 4. Top 10 Customers by Revenue
SELECT
    c.Customer_Name,
    c.Region,
    c.Segment,
    SUM(o.Sales) AS Total_Revenue
FROM Orders o
JOIN Customers c ON o.Customer_ID = c.Customer_ID
GROUP BY c.Customer_Name
ORDER BY Total_Revenue DESC
LIMIT 10;

