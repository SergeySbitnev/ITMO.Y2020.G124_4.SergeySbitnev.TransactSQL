USE ApressFinancial
GO


-- ������ AmountToCollect �� ����� ���� ������ 0
INSERT INTO CustomerDetails.CustomersProducts
(CustomerId, FinancialProductID, AmountToCollect, Frequency, LastCollected, LastCollection, Renewable)
VALUES
(1, 1, -100, 0, '24.08.2010', '24.08.2010', 0)

USE ApressFinancial
GO

-- ������ ���� LastCollection �� ����� ���� ������ LastCollected
INSERT INTO CustomerDetails.CustomersProducts
(CustomerId, FinancialProductID, AmountToCollect, Frequency, LastCollected, LastCollection, Renewable)
VALUES
(1, 1, 100, 0, '24.08.2010', '20.08.2010', 0)