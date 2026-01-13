-- Distinct statement

SELECT DISTINCT * 
FROM PM.Projects;
GO

-- Inner join

SELECT DISTINCT (P.ManagerId), (M.Email)
FROM PM.Projects P INNER JOIN PM.Managers M
ON M.Id = P.ManagerId;
GO

-- Left join

SELECT P.CRNNO, C.CompanyName 
FROM PM.Projects P LEFT JOIN PM.Companies C
ON P.CRNNO = C.CRNNO;
GO

-- Right join

SELECT DISTINCT (P.ManagerId), (M.Email)
FROM PM.Projects P RIGHT JOIN PM.Managers M
ON M.Id = P.ManagerId;
GO

-- Full join 

SELECT DISTINCT (P.ManagerId), (M.Email)
FROM PM.Projects P FULL JOIN PM.Managers M
ON M.Id = P.ManagerId;
GO

-- Join

SELECT DISTINCT (P.ManagerId), (M.Email)
FROM PM.Projects P JOIN PM.Managers M
ON M.Id = P.ManagerId;
GO