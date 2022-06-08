SELECT STRING_AGG(FirstName, ' / ') as [AllEmployeeNames]

From Employees
WHERE FirstName = 'Ana'
SELECT STRING_AGG(TotalPrice, ',') as [TotalPriceOfOrders]

From Orders

SELECT GETDATE()
SELECT CAST(GETDATE() AS time)--
SELECT CAST(GETDATE() AS date)--
