USE ApressFinancial
GO

INSERT INTO CustomerDetails.Customers
(CustomerTitleId, CustomerFirstName, CustomerOtherInitials, CustomerLastName, AddresId, AccountNumber, AccountTypeId, CleareBalance, UncleareBalance)
VALUES
	(3, 'Bernie', 'I', 'MCGee', 314, 65368765, 1, 6653.11, 0.00),
	(2, 'Julie', 'A', 'Dewson', 2314, 81625422, 1, 53.32, -12.21),
	(1, 'Kirsty', Null, 'Hull', 4312, 96565334, 1, 1266.00, 10.32);

INSERT INTO ShareDetails.Shares
(ShareDesc, ShareTickerID, CurrentPrice)
VALUES
	('FAT-BELLY.COM', 'FBC', 45.20),
	('NetRadio Inc', 'NRI', 29.79),
	('Texas Oil Industries', 'TOI', 0.455),
	('London Bridge Club', 'LBC', 1.46);