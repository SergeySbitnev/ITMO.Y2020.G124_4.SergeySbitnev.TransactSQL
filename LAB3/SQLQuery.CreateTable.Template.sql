-- =========================================
-- Create table template
-- =========================================
USE ApressFinancial
GO

IF OBJECT_ID('TransactionDetails.TransactionTypes', 'U') IS NOT NULL
  DROP TABLE TransactionDetails.TransactionTypes
GO

CREATE TABLE TransactionDetails.TransactionTypes
(
	TransactionTypesId int NOT NULL, 
	TransactionDescription nvarchar(30) NULL, 
	CreditType bit NOT NULL, 
    CONSTRAINT PK_sample_table PRIMARY KEY (TransactionTypesId)
)
GO
