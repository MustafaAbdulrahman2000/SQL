CREATE OR ALTER VIEW dbo.SimpleCustomers
AS
	SELECT [CustomerID]
      ,[CompanyName]
      ,[ContactName]
      ,[ContactTitle]
      ,[Address]
      ,[City]
    FROM Customers;
GO

CREATE UNIQUE CLUSTERED INDEX CUSTOMER_IX ON dbo.SimpleCustomers([CustomerID]);

SELECT * FROM dbo.SimpleCustomers;