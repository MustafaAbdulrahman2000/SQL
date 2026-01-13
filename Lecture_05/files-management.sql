SELECT	
	DB_NAME() AS [DATABASE], 
	NAME, 
	physical_name, 
	(SIZE * 8 / 1024) AS [SIZE],
	((SIZE * 8 / 1024) - FILEPROPERTY(NAME, 'SpaceUsed') * 8 /1024) AS [FREE SPACE]
FROM 
	SYS.database_files;
GO

DBCC showfilestats;
DBCC IND('CRMDB', 'Customers', -1);