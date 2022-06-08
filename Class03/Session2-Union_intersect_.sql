select * from Products_Test
INSERT INTO Products_Test ([Name])
VALUES ('Crunchy'),
('Granola'),
('Regular/soft'),
('Gluten Free'),
('Multigrain'),
('Take away')

SELECT [Name] FROM Products
union 
select[Name] FROM Products_Test


SELECT [Name] FROM Products
union ALL
select[Name] FROM Products_Test

--intersect.

SELECT [Name] FROM Products
INTERSECT
select[Name] FROM Products_Test

--EXEPT
SELECT [Name] FROM Products
EXCEPT
select[Name] FROM Products_Test


--select[Name] FROM Products_Test
--EXCEPT
--SELECT [Name] FROM Products

