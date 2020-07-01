-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Sergey Sbitnev
-- Create date: 01.07.2020
-- Description:	This is to insert a customer
-- =============================================
CREATE PROCEDURE CustomerDetails.apf_insCustomer 
	-- Add the parameters for the stored procedure here
	@FirstName varchar(50), 
	@LastName varchar(50),
	@CustTitle int,
	@CustInitials varchar(10),
	@AddressId int,
	@AccountNumber nvarchar(15),
	@AccountTypeId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO CustomerDetails.Customers
		(CustomerTitleId, CustomerFirstName, CustomerOtherInitials, CustomerLastName,
		AddresId, AccountNumber, AccountTypeId, CleareBalance, UncleareBalance)
	VALUES 
		(@CustTitle, @FirstName, @CustInitials, @LastName, @AddressId, @AccountNumber,
		@AccountTypeId, 0, 0)

 --   -- Insert statements for procedure here
	--SELECT @FirstName, @LastName
END
GO
