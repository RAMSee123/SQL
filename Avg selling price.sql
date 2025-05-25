DROP TABLE Products
CREATE TABLE Products(product_id INT,product_name VARCHAR(50),selling_price DECIMAL(10,2))
INSERT INTO Products(product_id,product_name,selling_price) VALUES (1,'Product A',100.00)
INSERT INTO Products(product_id,product_name,selling_price) VALUES (2,'Product B',150.00)
INSERT INTO Products(product_id,product_name,selling_price) VALUES (1,'Product A',120.00)
INSERT INTO Products(product_id,product_name,selling_price) VALUES (3,'Product C',200.00)
INSERT INTO Products(product_id,product_name,selling_price) VALUES (2,'Product B',180.00)
INSERT INTO Products(product_id,product_name,selling_price) VALUES (1,'Product A',90.00)
INSERT INTO Products(product_id,product_name,selling_price) VALUES (3,'Product C',210.00)
SELECT * FROM Products
SELECT  Product_name,Round(avg(selling_price),6)AS avg_selling_price FROM products GROUP BY Product_name
