USE ApressFinancial
GO

INSERT INTO ShareDetails.SharePrices (ShareID, Price, PriceDate)
VALUES
	(1, 2.155, '01.08.2010 10:10'),
	(1, 2.2125, '01.08.2010 10:12'),
	(1, 2.4175, '01.08.2010 10:16'),
	(1, 2.21, '01.08.2010 11:22'),
	(1, 2.17, '01.08.2010 14:54'),
	(1, 2.34125, '01.08.2010 16:10'),
	(2, 41.10, '01.08.2010 10:10'),
	(2, 43.22, '02.08.2010 10:10'),
	(2, 45.20, '03.08.2010 10:10')
INSERT INTO ShareDetails.Shares (ShareDesc, ShareTickerID, CurrentPrice)
VALUES
	('FAT-BELLY.COM', 'FBC', 45.20000)