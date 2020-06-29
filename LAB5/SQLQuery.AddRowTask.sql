USE ApressFinancial
GO

INSERT INTO CustomerDetails.Customers
(
	CustomerTitleId,
	CustomerLastName,
	CustomerFirstName,
	CustomerOtherInitials,
	AddresId,
	AccountNumber,
	AccountTypeId,
	CleareBalance,
	UncleareBalance
)
VALUES
(
	3,
	'Lobel',
	'Leonard',
	NULL,
	145,
	53431993,
	2,
	437.97,
	-10.56
)