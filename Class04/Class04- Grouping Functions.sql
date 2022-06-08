SELECT Gender, COUNT (*) as [GenderBalance:D]
FROM Employees
GROUP BY Gender;

SELECT Size, COUNT(*) as [GroupBySize]
From BusinessEntities
GROUP BY Size
HAVING SIZE <> 'medium'


SELECT Name, COUNT(*) as [Count by name]
From Products
GROUP BY Name
HAVING Name like  '%soy%'