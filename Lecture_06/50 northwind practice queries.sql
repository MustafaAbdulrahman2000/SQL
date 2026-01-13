-- Q[1].

SELECT [CategoryName], [Description] 
FROM [Categories]
ORDER BY [CategoryName];
GO

-- Q[2].

SELECT [ContactName], [CompanyName], [ContactTitle], [Phone]
FROM [Customers]
ORDER BY Phone;
GO

-- Q[3].

SELECT UPPER([FirstName]) AS FirstName, UPPER([LastName]) AS LastName, [HireDate]
FROM [Employees]
ORDER BY [HireDate] DESC;
GO

-- Q[4].

SELECT TOP 10 [OrderID], [OrderDate], [ShippedDate], [CustomerID], [Freight] 
FROM [Orders]
ORDER BY [Freight] DESC;
GO

-- Q[5].

SELECT LOWER([CustomerID]) AS ID
FROM [Customers];
GO

-- Q[6].

SELECT [CompanyName], [Fax], [Phone], [Country], [HomePage]
FROM [Suppliers]
ORDER BY [Country] DESC, [CompanyName] ASC;
GO

-- Q[7].

SELECT [CompanyName], [ContactName]
FROM [Customers]
WHERE [City] = 'Buenos Aires';
GO

-- Q[8].

SELECT [ProductName], [UnitPrice], [QuantityPerUnit] 
FROM [Products]
WHERE [UnitsInStock] = 0;
GO

-- Q[9].

SELECT  [ContactName], [Address], [City] 
FROM [Customers]
WHERE [Country] NOT IN ('Germany', 'Mexico', 'Spain');
GO

-- Q[10].

SELECT [OrderDate], [ShippedDate], [CustomerID], [Freight]
FROM [Orders]
WHERE [OrderDate] = '1996-05-21 00:00:00.000';
GO

-- Q[11].

SELECT [FirstName], [LastName], [Country]
FROM [Employees]
WHERE [Country] <> 'USA';
GO

-- Q[12].

SELECT [EmployeeID], [OrderID], [CustomerID], [RequiredDate], [ShippedDate]
FROM [Orders]
WHERE [ShippedDate] > [RequiredDate];
GO

-- Q[13].

SELECT [City], [CompanyName], [ContactName]
FROM [Customers]
WHERE [City] LIKE 'A%' OR [CITY] LIKE 'B%';
GO

-- Q[14].

SELECT  [OrderID]
FROM [Orders]
WHERE [OrderID] % 2 = 0;
GO

-- Q[15].

SELECT *
FROM [Orders]
WHERE [Freight] > 500;
GO

-- Q[16].

SELECT [ProductName], [UnitsInStock], [UnitsOnOrder], [ReorderLevel]
FROM [Products]
WHERE [UnitsInStock] < [ReorderLevel];
GO

-- Q[17].

SELECT [CompanyName], [ContactName], [Phone]
FROM [Customers]
WHERE [Fax] IS NULL;
GO

-- Q[18].

SELECT [FirstName], [LastName]
FROM [Employees]
WHERE [ReportsTo] IS NULL;
GO

-- Q[19].

SELECT [OrderID]
FROM [Orders]
WHERE [OrderID] % 2 <> 0;
GO

-- Q[20].

SELECT [CompanyName], [ContactName], [Fax] 
FROM [Customers]
WHERE [Fax] IS NULL
ORDER BY [ContactName];
GO

-- Q[21].

SELECT [City], [CompanyName], [ContactName]
FROM [Customers]
WHERE [City] LIKE '%L%'
ORDER BY [ContactName];
GO

-- Q[22].

SELECT [FirstName], [LastName], [BirthDate]
FROM [Employees]
WHERE YEAR([BirthDate]) >= 1950 AND YEAR([BirthDate]) < 1960;
GO

-- Q[23].

SELECT [FirstName], [LastName], YEAR([BirthDate]) AS BirthYear 
FROM [Employees];
GO

-- Q[24].

SELECT [OrderID], COUNT([OrderID]) AS NumberofOrders
FROM [Order Details]
GROUP BY [OrderID]
ORDER BY NumberofOrders DESC;
GO

-- Q[25].

SELECT [S].[SupplierID], P.[ProductName], S.[CompanyName]
FROM [Products] [P] INNER JOIN [Suppliers] [S]
ON [P].[SupplierID] = [S].[SupplierID]
WHERE [S].[CompanyName] IN ('Exotic Liquids', 'Specialty Biscuits, Ltd.', 'Escargots Nouveaux')
ORDER BY [S].[SupplierID]
GO

-- Q[26].



-- Q[27].



-- Q[28].



-- Q[29].



-- Q[30].



-- Q[31].



-- Q[31].



-- Q[33].



-- Q[34].



-- Q[35].



-- Q[36].



-- Q[37].



-- Q[38].



-- Q[39].



-- Q[40].



-- Q[41].



-- Q[42].



-- Q[43].



-- Q[44].



-- Q[45].



-- Q[46].



-- Q[47].



-- Q[48].



-- Q[49].



-- Q[50].


