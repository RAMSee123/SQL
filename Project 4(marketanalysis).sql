CREATE TABLE marketanalysis (CustomerId INT,ProductId VARCHAR(30),PurchaseDate  date, Quantity INT, Revenue DECIMAL(10,2)) 
INSERT INTO marketanalysis(CustomerId,productId,Purchasedate,Quantity,Revenue) 
VALUES (1,'A','2023-01-01',5,100.00),
       (2,'B','2023-01-02',3,50.00),
       (3,'A','2023-01-03',2,30.00),
       (4,'C','2023-01-03',1,20.00),
       (1,'B','2023-01-04',4,80.00);
       DROP TABLE marketanalysis
 SELECT *  FROM marketanalysis 
 SELECT sum(revenue) AS Total_Revenue FROM marketanalysis
 
 SELECT ProductId,sum(Quantity),sum(Revenue) FROM marketanalysis GROUP BY ProductId ORDER BY ProductId ASC
 SELECT CustomerId, sum(Revenue) FROM marketanalysis GROUP BY CustomerId ORDER BY CustomerId ASC 