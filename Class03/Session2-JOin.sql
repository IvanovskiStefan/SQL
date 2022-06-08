USE JOINEXAMPLE
GO 
DROP DATABASE IF EXISTS JOINEXAMPLE


CREATE DATABASE JOINEXAMPLE
GO

DROP TABLE IF EXISTS TableA
DROP TABLE IF EXISTS TableB
GO

CREATE TABLE TableA(IdA int,[Name] nvarchar (50))
CREATE TABLE TableB(IdB int,[Name] nvarchar (50))
GO


INSERT INTO TableA VALUES (1,'Martin'), (2, 'Aleksandar')
INSERT INTO TableB VALUES (2,'Marija'), (3,'Stefan')
GO

SELECT * FROM	TableA
SELECT * FROM	TableB

--inner join

SELECT * 
FROM TableA ta
INNER JOIN	TableB tb ON ta.IdA = tb.IdB

--LEFT JOIN

SELECT * 
FROM TableA ta
LEFT JOIN	TableB tb ON ta.IdA = tb.IdB

--RIGHT JOIN

SELECT * 
FROM TableA ta
RIGHT JOIN	TableB tb ON ta.IdA = tb.IdB

--- full join

SELECT * 
FROM TableA ta
FULL JOIN	TableB tb ON ta.IdA = tb.IdB

--- cross join

SELECT * 
FROM TableA 
CROSS JOIN	TableB  