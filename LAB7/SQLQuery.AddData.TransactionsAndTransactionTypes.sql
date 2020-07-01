USE ApressFinancial
GO

INSERT INTO TransactionDetails.Transactions
	(CustomerId, TransactionType, DateEntered, Amount, RelatedProductId)
VALUES
	(1, 1, '01.08.2008', 100.00, 1),
	(1, 1, '03.08.2008', 75.67, 1),
	(1, 2, '05.08.2008', 35.20, 1),
	(1, 2, '06.08.2008', 20.00, 1);

INSERT INTO TransactionDetails.TransactionTypes 
	(TransactionDescription, CreditType, AffectCashBalance)
VALUES
	('proc+', 1, 1),
	('proc-', 0, 1);

EXECUTE CustomerDetails.apf_CusMovement 1, '01.08.2008', '31.08.2008';