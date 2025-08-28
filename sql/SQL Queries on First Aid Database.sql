/*
Create Queries and Views

    Write at least four sample queries.
    Include queries that join two or more tables.
    Create at least two views for common or useful data retrieval.
    */

USE first_aid_business;    
    
--     Query 1: Select all from table customer and orders 

SELECT *
FROM Orders O
INNER JOIN Customer C ON O.Foreign_Customer_ID = C.customer_id;

-- Query 2 Select Distinct Count of Cancelled Orders with a calculated total_lost_amount 
SELECT 
  (SELECT COUNT(DISTINCT Order_ID) 
   FROM Orders 
   WHERE Status = 'Cancelled') AS Cancelled_Order_Count,
   
  (SELECT SUM(Total_Amount) 
   FROM Orders 
   WHERE Status = 'Cancelled') AS Total_Lost_Amount;
   
   -- Query 2B; I use a case statement to make do it in one pass.
SELECT 
	COUNT(DISTINCT CASE WHEN Status = 'Cancelled' THEN Order_ID END) AS Cancelled_Order_Count,
	SUM(CASE WHEN Status = 'Cancelled' THEN Total_Amount ELSE 0 END) AS Total_Lost_Amount
FROM Orders;

-- Query 3; I generate a view for pending shipments outbound that have not shipped.
CREATE VIEW Pending_Not_Shipped_Orders AS
SELECT O.*
FROM Orders AS O
LEFT JOIN Shipment AS S ON O.Order_ID = S.order_id
WHERE O.Status = 'Pending' AND S.order_id IS NOT NULL;


-- Query 3A Shows everything from Pending not Shipped view.
SELECT *
FROM Pending_Not_Shipped_Orders;


DROP VIEW Pending_Not_Shipped_Orders;

-- Query 4 I create a view for trouble shooting delivery orders with

CREATE VIEW Problems_With_Customer AS
SELECT 
    P.ISSUE_ID,
    P.order_id,
    P.resolved,
    P.issue,
    O.Foreign_Customer_ID
FROM Problems P
INNER JOIN Orders O ON P.order_id = O.Order_ID;

-- Query 4A Count distinct solved problems for year end review.

SELECT COUNT(DISTINCT ISSUE_ID) AS Resolved_Issues_Count
FROM Problems_With_Customer
WHERE resolved = TRUE;

-- Query 5 Find out Inventory Level is ) so I can reorder products.
SELECT ProductID, Product_name, Stock_Level, Price$
FROM Inventory
WHERE Stock_Level = 0 ;







