CREATE TRIGGER trgSprocs
ON DATABASE
FOR CREATE_PROCEDURE, ALTER_PROCEDURE, DROP_PROCEDURE
AS
IF DATEPART (hh, GETDATE()) > 9 AND DATEPART (hh, GETDATE()) < 17
BEGIN
	DECLARE @Message nvarchar(max)
	SELECT @Message = 'Compliting work during core hours. Trying to release -' +
						EVENTDATA().value
	('(/EVENT_INSTANCE/TSQLCommand/CommandText)[1]','nvarchar(max)')
		RAISERROR (@Message, 16, 1)
		ROLLBACK
	EXEC msdb.dbo.sp_send_dbmail
		@profile_name = 'SQL Server Database Mail Profile',
		@recipients = 'exam@limtu.spb.ru',
		@body = 'A stored procedure change',
		@subject = 'A stored procedure change has been initiated 
						and rolled back during core hours'
END;

CREATE PROC Test1
AS
SELECT 'Hello all';

CREATE TRIGGER trgDBDump
ON DATABASE
FOR DDL_DATABASE_LEVEL_EVENTS
AS
	SELECT EVENTDATA();

CREATE PROC Test2
AS
SELECT 'Hello all';


DROP TRIGGER trgSprocs ON DATABASE;
DROP TRIGGER trgDBDump ON DATABASE;

DROP PROC Test1;
DROP PROC Test2;
