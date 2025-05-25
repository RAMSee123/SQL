CREATE TABLE Performingads(adid INT,Viewss INT,clicks INT,costs DECIMAL (10,2))
INSERT INTO Performingads (adid,viewss,clicks,costs) VALUES (1,1000,50,20.5),(2,800,30,15.2),(3,1200,80,25.7),(4,600,20,10.9),(5,1500,120,40.3)
SELECT * FROM Performingads
ALTER TABLE performingads
ALTER viewss TYPE NUMERIC
ALTER TABLE Performingads
ALTER clicks TYPE NUMERIC

SELECT adid,to_char((clicks/viewss)*100 'FM999.0' || '%') AS CTR,viewss,clicks,costs FROM Performingads ORDER BY CTR DESC

