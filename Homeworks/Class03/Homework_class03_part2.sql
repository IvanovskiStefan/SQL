USE SEDC

GO

SELECT Name be FROM BusinessEntities 
UNION 
SELECT Name FROM Customers 

GO

SELECT Region be FROM BusinessEntities be
INTERSECT 
SELECT RegionName FROM Customers c

GO


SELECT be.Region
FROM BusinessEntities be
INNER JOIN Customers cu
ON be.Region= cu.RegionName

GO