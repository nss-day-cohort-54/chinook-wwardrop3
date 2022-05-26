SELECT Country, MAX(CountrySales)
FROM(SELECT i.BillingCountry as Country, SUM(i.total) as CountrySales
FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY CountrySales DESC
)
  