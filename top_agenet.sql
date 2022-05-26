
SELECT EmployeeName, MAX(Sales)
FROM (SELECT e.FirstName || " " || e.LastName as EmployeeName, SUM(i.Total) as Sales
FROM Employee e
JOIN Customer c
ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
ON i.CustomerId = c.CustomerId

GROUP BY e.EmployeeId) 
