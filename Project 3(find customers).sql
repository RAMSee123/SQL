CREATE TABLE customers(id INT ,namess VARCHAR(50))
SELECT * FROM customers
INSERT INTO customers(id,namess) VALUES (1,'joe'),(2,'henry'),(3,'sam'),(4,'max')

CREATE TABLE orders(id INT ,customerid INT )

SELECT * FROM orders
INSERT INTO orders(id,customerid) VALUES (2,1),(1,3)
SELECT customers.namess AS customers FROM customers 
LEFT JOIN orders
ON customers.id = orders.customerid
WHERE customerid IS NULL

 
