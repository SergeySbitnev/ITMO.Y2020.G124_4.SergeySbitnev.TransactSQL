USE ApressFinancial
GO
-- COMMIT TRAN
SELECT 'Before', ShareId, ShareDesc, CurrentPrice
	FROM ShareDetails.Shares
	WHERE ShareID = 3
BEGIN TRAN ShareUpd
	UPDATE ShareDetails.Shares
	SET CurrentPrice = CurrentPrice * 1.1
	WHERE ShareID = 3
COMMIT TRAN
SELECT 'After', ShareId, ShareDesc, CurrentPrice
	FROM ShareDetails.Shares
	WHERE ShareId = 3

-- ROLLBACK TRAN
SELECT 'Before', ShareId, ShareDesc, CurrentPrice
	FROM ShareDetails.Shares
	WHERE ShareID <= 3
BEGIN TRAN ShareUpd
	UPDATE ShareDetails.Shares
		SET CurrentPrice = CurrentPrice * 2.0
		WHERE ShareID <= 3
	SELECT 'Within the transaction', ShareId, ShareDesc, CurrentPrice
		FROM ShareDetails.Shares WHERE ShareId <= 3
ROLLBACK TRAN
SELECT 'After', ShareId, ShareDesc, CurrentPrice
	FROM ShareDetails.Shares
	WHERE ShareId <= 3

-- Проверка работы вложенных транзакции
BEGIN TRAN ShaerUpd
	SELECT '1st TranCount', @@TRANCOUNT
BEGIN TRAN ShareUpd2
	SELECT '2nd TranCount', @@TRANCOUNT
COMMIT TRAN ShareUpd2
	SELECT '3rd TranCount', @@TRANCOUNT
COMMIT TRAN -- It is as this point data modifications will be committed
	SELECT 'Last TranCount', @@TRANCOUNT