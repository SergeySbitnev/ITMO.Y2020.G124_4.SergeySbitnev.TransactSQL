USE tempdb
GO

SELECT CustomerId, CustomerFirstName, CustomerOtherInitials, CustomerLastName
INTO dbo.Customers
FROM ApressFinancial.CustomerDetails.Customers

DELETE FROM dbo.Customers
WHERE CustomerId = 4

--Очищение с сохранением колонки IDENTITY
DELETE FROM DBO.Customers

--Полное удаление
TRUNCATE TABLE dbo.Customers