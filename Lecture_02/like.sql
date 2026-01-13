-- Managers with specific text in their email

SELECT M.Id, M.Email
FROM PM.Managers M 
WHERE M.Email LIKE '_r%';
GO

-- Companies with a specific starting pattern

SELECT * 
FROM PM.Companies C
WHERE C.CompanyName LIKE '%s';
GO

-- Technologies with a specific ending pattern

SELECT *
FROM PM.Technologies T
WHERE T.Name LIKE '_Q_%';
GO

-- Projects containing a keyword in the title

SELECT *
FROM PM.Projects P
WHERE P.Title LIKE '%ing%';
GO

-- Projects matching a fixed prefix and minimum length

SELECT P.PRJNO, P.Title
FROM PM.Projects P
WHERE P.Title LIKE 'AI_%';
GO
