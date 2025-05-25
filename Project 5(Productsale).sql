CREATE TABLE Products(ProductName VARCHAR(50),Price DECIMAL (10,2))
INSERT INTO Products(ProductName,Price) VALUES ('Apple',2.5),('Banana',1.50),('Orange',3.00),('Mango',2.00)
SELECT * FROM Products

CREATE TABLE Orders(OrderId INT,ProductId INT,Quantity INT,Sales DECIMAL (10,2))
INSERT INTO Orders(OrderId,ProductId,Quantity,Sales) VALUES (1,1,10,25.00),(2,1,5,12.50),(3,2,8,12.00),(4,3,12,36.00),(5,4,6,12.00)
SELECT * FROM Orders

ALTER TABLE Products 
ADD PID INT;
UPDATE Products SET PID=1 WHERE ProductName='Apple'
UPDATE Products SET PID=2 WHERE ProductName='Banana'
UPDATE Products SET PID=3 WHERE ProductName='Orange'
UPDATE Products SET PID=4 WHERE ProductName='Mango'

SELECT * FROM Products
SELECT Products.ProductName,sum(Orders.Sales) AS Total_Revenue  FROM Products
LEFT OUTER JOIN Orders
ON Products.PID=Orders.ProductId GROUP BY ProductName ORDER BY sum(Orders.Sales) DESC

