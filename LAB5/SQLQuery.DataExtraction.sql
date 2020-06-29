USE ApressFinancial
GO

SELECT * FROM CustomerDetails.Customers

SELECT CustomerFirstName, CustomerLastName, CleareBalance
FROM CustomerDetails.Customers

SELECT CustomerFirstName AS 'First Name',
	   CustomerLastName AS 'Last Name',
	   CleareBalance AS 'Balance'
FROM CustomerDetails.Customers