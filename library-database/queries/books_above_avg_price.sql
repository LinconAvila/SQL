SELECT B.NameBook, B.PriceBook
FROM Book B,
	(SELECT AVG(PriceBook) AS PriceMean FROM Book) AS Subquery
WHERE B.PriceBook > Subquery.PriceMean;