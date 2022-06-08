select sum (Price) AS [TotalProductPrice]
From Products


select sum (Weight) AS [WeightOfAllProducts]
From Products

--- MIN and MAX

select MAX(TotalPrice) AS [Order with the highest price]
From Orders

select MIN(TotalPrice) AS [Order with the lowes price]
From Orders

select MIN(TotalPrice) AS [Order with the lowes price]
From Orders
WHERE TotalPrice > 0

select MIN(TotalPrice) AS [Order with the lowes price]
From Orders
WHERE TotalPrice BETWEEN 1 AND 1000


SELECT MIN (Name) 
FROM Customers


SELECT AVG(TotalPrice) as [AveragePriceOFoRDERS]
From Orders;

SELECT ROUND(AVG(Price),0) as [AveragePriceofProducts]
From Products

