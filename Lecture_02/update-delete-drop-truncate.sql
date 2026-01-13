-- Update statment

UPDATE PM.Technologies
SET Name = 'LINQ'
WHERE Id = 302;
GO

SELECT * FROM PM.Technologies;
GO

-- Delete statment

DELETE FROM PM.Companies
WHERE CRNNO = 108;
GO

-- Drop statment

DROP TABLE PM.Projects;
GO

-- Truncate statment

TRUNCATE TABLE PM.Projects;
GO