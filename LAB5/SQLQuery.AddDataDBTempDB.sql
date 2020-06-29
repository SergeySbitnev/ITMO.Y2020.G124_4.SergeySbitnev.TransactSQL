USE [tempdb]
GO

INSERT INTO [dbo].[Customers]
           ([CustomerFirstName]
           ,[CustomerOtherInitials]
           ,[CustomerLastName])
     VALUES
           ('Sergey'
           ,'TitanSSV'
           ,'Sbitnev')
GO

SELECT * FROM dbo.Customers

