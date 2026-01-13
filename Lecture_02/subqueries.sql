-- Subqueries

UPDATE PM.Projects
SET InitialCost = InitialCost * 1.50
WHERE PRJNO = 
(
	SELECT PRJNO
	FROM PM.ProjectTechnologies
	WHERE TCHID = (
		SELECT Id
		FROM PM.Technologies 
		WHERE NAME = 'SQL server'
	)
);
GO

SELECT * FROM PM.Projects;
GO