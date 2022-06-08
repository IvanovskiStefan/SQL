USE [SEDC] 

SELECT  COUNT(Name) AS [CustomerName]
FROM Customers

use [SEDC_IS]
select COUNT(Price) AS [ProductsWeight]
FROM Products_Test

use [SEDC]
select COUNT( DISTINCT Name) AS [CustomerName]
FROM Customers
