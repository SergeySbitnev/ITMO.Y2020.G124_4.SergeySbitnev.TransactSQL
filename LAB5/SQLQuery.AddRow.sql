USE [ApressFinancial]
GO

INSERT INTO [CustomerDetails].[Customers]
           ([CustomerTitleId]
           ,[CustomerFirstName]
           ,[CustomerOtherInitials]
           ,[CustomerLastName]
           ,[AddresId]
           ,[AccountNumber]
           ,[AccountTypeId]
           ,[CleareBalance]
           ,[UncleareBalance])
     VALUES
           (1
           ,'Sergey'
           ,'SSV'
           ,'Sbitnev'
           ,188662
           ,88005553535
           ,1
           ,500
           ,200)
GO


