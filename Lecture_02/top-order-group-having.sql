-- Top 4 records in projects table

SELECT TOP 4 * 
FROM PM.Projects;
GO

-- Top 50% records in technologies table

SELECT TOP 50 PERCENT *
FROM PM.Technologies;
GO

-- Projects ordered by start date

SELECT P.PRJNO, P.Title, P.StartDate
FROM PM.Projects P
ORDER BY P.StartDate;
GO

-- Companies ordered alphabetically

SELECT *
FROM PM.Companies C
ORDER BY C.CompanyName DESC;
GO

-- Projects ordered by cost

SELECT P.Title, P.InitialCost
FROM PM.Projects P
ORDER BY P.InitialCost DESC;
GO

-- Managers with multiple projects

SELECT COUNT(*)
FROM PM.Projects P
GROUP BY P.ManagerId
HAVING COUNT(*) > 1;
GO

-- Companies with high project volume

SELECT COUNT(*) AS 'COMPANIES PROJECT'
FROM PM.Projects P
GROUP BY P.CRNNO 
HAVING COUNT(*) = 1;
GO

-- Frequently used technologies

SELECT T.Name, COUNT(T.NAME) AS 'PROJECTS' 
FROM PM.ProjectTechnologies PT INNER JOIN PM.Technologies T
ON T.Id = PT.TCHID
GROUP BY T.Name
HAVING COUNT(*) > 2;
GO