-- OrderID | ProductId | UnitPrice | Quantity | Discount | SubTotal

SELECT O.OrderID, O.ProductID, O.UnitPrice, O.Quantity, O.Discount,
CONVERT(MONEY, (1 - O.Discount) * (O.Quantity * O.UnitPrice), 2) AS SubTotal
FROM [Order Details] O;

-- OrderID | CustomerId | OrderDate | Total

SELECT O.OrderID, O.CustomerID, O.OrderDate, 
SUM(CONVERT(MONEY, (1 - OD.Discount) * (OD.UnitPrice * OD.Quantity), 2)) AS Total
FROM Orders O INNER JOIN [Order Details] OD
ON O.OrderID = OD.OrderID
GROUP BY O.OrderID, O.CustomerID, O.OrderDate;
GO

-- FUNCTIONS

-- 1 SCALER FUNCTIONS (single value)

CREATE OR ALTER FUNCTION dbo.CalculateSubTotal(@discount REAL, @unitPrice MONEY, @quantity INT)
RETURNS MONEY WITH SCHEMABINDING
AS
BEGIN
	DECLARE @subTotal MONEY;
	SELECT @subTotal = CONVERT(MONEY, (1 - @discount) * (@unitPrice * @quantity), 2);
	RETURN @subtotal;
END;
GO

CREATE OR ALTER FUNCTION dbo.CalculateOrderTotal(@orderId int)
RETURNS MONEY
AS
BEGIN
	DECLARE @total MONEY;
	SELECT @total = SUM(Subtotal) FROM dbo.GetOrderDetails(@orderId);
	RETURN @total;
END;
GO

-- 2 TABLE VALUED FUNCTIONS (result set)

CREATE OR ALTER FUNCTION dbo.GetOrderDetails(@orderId INT)
RETURNS TABLE
RETURN
(
	SELECT OD.OrderID, OD.ProductId, OD.UnitPrice, OD.Quantity,OD.Discount,
	dbo.CalculateSubTotal(OD.Discount, OD.UnitPrice, OD.Quantity) AS SubTotal
	FROM Orders O INNER JOIN [Order Details] OD
	ON O.OrderID = OD.OrderID
);
GO

CREATE OR ALTER FUNCTION dbo.GetCustomerOrders(@customerId nchar(5))
RETURNS TABLE
AS 
RETURN
(
	SELECT O.OrderID, O.CustomerID, O.OrderDate,
		dbo.CalculateOrderTotal(O.OrderID) As Total
	FROM Orders O
	WHERE O.CustomerID = @customerId
);
GO

SELECT *
FROM dbo.GetCustomerOrders('ALFKI');

SELECT *
FROM dbo.GetOrderDetails(10835);

-- 3 System FUNCITON (Built in function)

-- Numeric Function 

SELECT ABS(-100);

-- DATE FUNCITON

SELECT GETDATE();
SELECT ISDATE('12020-10-19');

-- String Function

SELECT LEN('MUSTAFA AHMAD ABDULRAHMAN')
SELECT LOWER('MUSTAFA AHMAD ABDULRAHMAN') AS LowerName

-- CONVERSION Function

SELECT CONVERT(MONEY, '100', 2)