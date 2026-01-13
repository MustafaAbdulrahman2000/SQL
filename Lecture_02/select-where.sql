-- List of managers by email

SELECT M.Id, M.Email
FROM PM.Managers M;
GO

-- Active projects with cost filtering

SELECT P.PRJNO, P.Title, P.InitialCost
FROM PM.Projects P
WHERE NOT P.Parked = 0 AND P.InitialCost <= 100000;
GO

-- Projects belonging to a specific company

SELECT P.Title, P.StartDate
FROM PM.Projects P
WHERE P.CRNNO = 106;
GO