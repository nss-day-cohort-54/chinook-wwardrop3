
SELECT EmployeeName, MAX(Sales)
FROM (SELECT e.FirstName || " " || e.LastName as EmployeeName, SUM(i.Total) as Sales
FROM Employee e
JOIN Customer c
ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
ON i.CustomerId = c.CustomerId
WHERE i.InvoiceDate BETWEEN "2009-01-01" AND "2009-12-31" 
GROUP BY e.EmployeeId) 
