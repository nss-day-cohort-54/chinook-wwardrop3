SELECT e.FirstName || " " || e.LastName as FullName, InvoiceId
FROM Employee e
JOIN Customer c
ON e.EmployeeId = c.SupportRepId
JOIN Invoice i
ON c.CustomerId = i.CustomerId