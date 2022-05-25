SELECT c.FirstName || " " || c.LastName as CustomerName, c.Country, e.FirstName || " " || e.LastName as EmployeeName, i.Total
FROM Customer c
JOIN Invoice i
ON i.CustomerId = c.CustomerId
JOIN Employee e
ON c.SupportRepId = e.EmployeeId