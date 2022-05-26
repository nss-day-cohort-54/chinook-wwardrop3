SELECT e.FirstName || " " || e.LastName as Employee, COUNT(c.CustomerId) as CustomerCount
FROM Employee e
LEFT JOIN Customer c ON c.SupportRepId = e.EmployeeId
Group BY e.EmployeeId
ORDER BY CustomerCount DESC
