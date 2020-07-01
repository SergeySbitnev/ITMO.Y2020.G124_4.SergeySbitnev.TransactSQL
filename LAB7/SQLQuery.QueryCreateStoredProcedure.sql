CREATE PROCEDURE CustomerDetails.apf_CusMovement
	@CustID bigint, @FromDate datetime, @ToDate datetime
AS
BEGIN
/*��� ����� ��� ���������� ����������:
������������� ���������� �� ������� ����� ������� � @LastTran
@StillCalc ������������ ��� �������� ����� WHILE*/
	
	DECLARE @RunningBal money, @StillCalc bit, @LastTran bigint
	SELECT @StillCalc = 1, @LastTran = 0, @RunningBal = 0
-- ���������� ����� WHILE ������������, ���� ���������� ���������� ������
-- ���� ������ �� ��������, ������ � ��������� ��� ������ ��� ���������
	
	WHILE @StillCalc = 1
	BEGIN

-- ���������� SELECT ���������� ���� ������, � ������� (WHILE):
-- ������������� TransactionmId ������ ����������� ������������� ��������������,
-- ���������� ��������� ������� �� ������ ������� �
-- ���������� ��������� � ���������� ��������� ���
		
		SELECT TOP 1 @RunningBal = @RunningBal + CASE
				WHEN tt.CreditType = 1 THEN t.Amount
				ELSE t.Amount* -1 END,
			@LastTran = t.TransactionId
		FROM CustomerDetails.Customers AS c
			JOIN TransactionDetails.Transactions AS t
				ON t.CustomerId = c.CustomerId
			JOIN TransactionDetails.TransactionTypes AS tt
				ON tt.TransactionTypesId = t.TransactionType
		WHERE t.TransactionId > @LastTran AND
			tt.AffectCashBalance = 1 AND
			DateEntered BETWEEN @FromDate AND @ToDate
		ORDER BY DateEntered

--���� ������ ����������, �� ���������� ����� ������������
		
		IF @@ROWCOUNT > 0
			--����� ������� ��������� ������ ��������
			CONTINUE
		ELSE
			BREAK
	END
	SELECT @RunningBal AS 'End Balance'
END;
