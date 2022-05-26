SELECT e.FirstName || " " || e.LastName as EmployeeName, SUM(i.Total) as TotalSales
FROM Employee e
JOIN Customer c
ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
ON i.CustomerId = c.CustomerId
GROUP By e.EmployeeId