CREATE TABLE Emails(id INT,namess VARCHAR (30),email VARCHAR (50),phone NUMERIC)
INSERT INTO Emails(id,namess,email,phone) VALUES (1,'Rahul','rahul@example.com',9839473902) ,(2,'Rohit','rohit@example.com',9883782971),(3,'Suresh','rahul@example.com',7654321098),(4,'Manish','manish@example.com',8927394619),(5,'Amit','amit@example.com',9399303840),(6,'Rahul','rahul@example.com',9737466147)
SELECT * FROM Emails
SELECT DISTINCT ON (email)* FROM Emails ORDER BY email DESC
DROP TABLE Emails