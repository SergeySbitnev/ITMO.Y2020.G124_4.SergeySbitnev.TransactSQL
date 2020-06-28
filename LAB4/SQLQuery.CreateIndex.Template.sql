-- =============================================
-- Create index basic template
-- =============================================
USE ApressFinancial
GO

CREATE INDEX IX_CustomersProducts
ON CustomerDetails.CustomersProducts 
(
	CustomerId
)
GO
