USE tempdb
GO

SELECT CustomerId, CustomerFirstName, CustomerOtherInitials, CustomerLastName
INTO dbo.Customers
FROM ApressFinancial.CustomerDetails.Customers

DELETE FROM dbo.Customers
WHERE CustomerId = 4

--�������� � ����������� ������� IDENTITY
DELETE FROM DBO.Customers

--������ ��������
TRUNCATE TABLE dbo.Customers