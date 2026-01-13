INSERT INTO PM.Companies(CRNNO, CompanyName) VALUES (101, 'aTechNova Ltd');

INSERT INTO PM.Companies(CompanyName, CRNNO) VALUES('InnoSoft Corp', 102);

INSERT INTO PM.Companies VALUES (103, 'NextGen Systems');

INSERT INTO PM.Companies VALUES 
				(104, 'Alpha Solutions'),
				(105, 'BetaWorks'),
				(106, 'CloudEdge Inc'),
				(107, 'DataSphere LLC'),
				(108, 'FutureLink');
GO

INSERT INTO PM.Managers (Id, Email) VALUES
				(201, 'david.manager@pmdb.com'),
				(202, 'emma.manager@pmdb.com '),
				(203, 'frank.manager@pmdb.com'),
				(204, 'grace.manager@pmdb.com');
GO

INSERT INTO PM.Technologies(Id, Name) VALUES (301, 'C#');
INSERT INTO PM.Technologies(Id, Name) VALUES (302, 'Java');
INSERT INTO PM.Technologies(Id, Name) VALUES (303, 'Python');
INSERT INTO PM.Technologies(Id, Name) VALUES (304, 'Angular');
INSERT INTO PM.Technologies(Id, Name) VALUES (305, 'React');
INSERT INTO PM.Technologies(Id, Name) VALUES (306, 'SQL Server');
INSERT INTO PM.Technologies(Id, Name) VALUES (307, 'Docker');
INSERT INTO PM.Technologies(Id, Name) VALUES (308, 'Azure');
GO

INSERT INTO PM.Projects (PRJNO, Title, ManagerId, StartDate, InitialCost, Parked, CRNNO)
	VALUES (401, 'Inventory Management System', 201, '2024-01-15', 50000.00  , 0, 101),
		   (402, 'E-Commerce Platform'        , 202, '2024-02-10', 120000.00 , 0, 102),
		   (403, 'HR Automation Tool'         , 203, '2024-03-05', 75000.00  , 1, 103),
		   (404, 'Cloud Migration Project'    , 204, '2024-01-20', 200000.00 , 0, 104),
		   (405, 'Mobile Banking App'         , 201, '2024-04-01', 180000.00 , 0, 105),
		   (406, 'Data Analytics Dashboard'   , 202, '2024-02-25', 90000.00  , 1, 106),
		   (407, 'AI Recommendation Engine'   , 203, '2024-03-18', 250000.00 , 0, 107),
		   (408, 'IoT Monitoring System'      , 204, '2024-05-10', 110000.00 , 0, 108);
GO

INSERT INTO PM.ProjectTechnologies(PRJNO, TCHID) VALUES (401, 301);
INSERT INTO PM.ProjectTechnologies(PRJNO, TCHID) VALUES (401, 302);
INSERT INTO PM.ProjectTechnologies(PRJNO, TCHID) VALUES (401, 303);
INSERT INTO PM.ProjectTechnologies(PRJNO, TCHID) VALUES (402, 301);
INSERT INTO PM.ProjectTechnologies(PRJNO, TCHID) VALUES (402, 302);
INSERT INTO PM.ProjectTechnologies(PRJNO, TCHID) VALUES (402, 304);
INSERT INTO PM.ProjectTechnologies(PRJNO, TCHID) VALUES (403, 301);
INSERT INTO PM.ProjectTechnologies(PRJNO, TCHID) VALUES (403, 302);
INSERT INTO PM.ProjectTechnologies(PRJNO, TCHID) VALUES (403, 308);
INSERT INTO PM.ProjectTechnologies(PRJNO, TCHID) VALUES (404, 306);
INSERT INTO PM.ProjectTechnologies(PRJNO, TCHID) VALUES (405, 307);
INSERT INTO PM.ProjectTechnologies(PRJNO, TCHID) VALUES (405, 305);
INSERT INTO PM.ProjectTechnologies(PRJNO, TCHID) VALUES (406, 307);
INSERT INTO PM.ProjectTechnologies(PRJNO, TCHID) VALUES (406, 308);
GO