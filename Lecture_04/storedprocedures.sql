CREATE OR ALTER PROCEDURE dbo.SalesByCategoryAndYear
(
	@categoryName NVARCHAR(40),
	@year INT,
	@count INT OUTPUT
)
AS
BEGIN

	SELECT P.ProductName, 
		ROUND(SUM((1 - OD.Discount) * OD.Quantity * OD.UnitPrice), 0) AS TotalPurchase
	FROM [Order Details] OD 
	INNER JOIN Orders O ON OD.OrderID = O.OrderID
	INNER JOIN Products P ON OD.ProductID = P.ProductID
	INNER JOIN Categories C ON P.CategoryID = C.CategoryID
	WHERE C.CategoryName = @categoryName AND YEAR(O.OrderDate) = @year
	GROUP BY P.ProductName
	ORDER BY P.ProductName;
	
	SELECT @count = @@ROWCOUNT 
END;
GO

DECLARE @count INT;
EXEC dbo.SalesByCategoryAndYear 'Beverages', 1996, @count OUTPUT;
SELECT @count AS TotalPurchase


