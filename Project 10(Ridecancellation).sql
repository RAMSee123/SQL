CREATE TABLE Trips(id INT,client_id INT,driver_id INT,city_id INT,status VARCHAR(50),request_at date)
INSERT INTO Trips(id,client_id,driver_id,city_id,status,request_at)
VALUES (1,1,10,1,'completed','2023-07-12'),
(2,2,11,1,'cancelled_by_driver','2023-07-12'),
(3,3,12,6,'completed','2023-07-12'),
(4,4,13,6,'cancelled_by_client','2023-07-12'),
(5,1,10,1,'completed','2023-07-13'),
(6,2,11,6,'completed','2023-07-13'),
(7,3,12,6,'completed','2023-07-13'),
(8,2,12,12,'completed','2023-07-14'),
(9,3,10,12,'completed','2023-07-14'),
(10,4,13,12,'cancelled_by_driver','2023-07-14');
SELECT * FROM Trips

CREATE TABLE Users(user_id NUMERIC,banned VARCHAR(30),roles VARCHAR(30))
INSERT INTO Users(user_id,banned,roles) VALUES (1,'No','client'),(2,'Yes','client'),(3,'No','client'),(4,'No','client'),(10,'No','driver'),(11,'No','driver'),(12,'No','driver'),(13,'No','driver')

SELECT request_at, sum(CASE WHEN status LIKE 'cancelled%' THEN 1 ELSE 0 END)*1.0/count(id) AS cancellation_rate FROM trips GROUP BY request_at ORDER BY request_at
INNER JOIN users AS tclient  
ON trips.client_id = tclient.user_id 
INNER JOIN users AS tdriver
ON trips.driver_id = tdriver.user_id 


