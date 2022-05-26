SELECT i.BillingCountry, SUM(i.total) as CountrySales
FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY CountrySales DESC