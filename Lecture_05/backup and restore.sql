BACKUP DATABASE [CRMDB]
TO DISK = N'A:\المرحلة الانتقالية\المحور الفرعي 2\التطبيق\MSSQL\Lecture_05\Backups\CRMDB.bak'
WITH NOINIT,
NAME = 'BACKUP_01',
DESCRIPTION = 'FIRST BACKUP';

RESTORE HEADERONLY FROM DISK = N'A:\المرحلة الانتقالية\المحور الفرعي 2\التطبيق\MSSQL\Lecture_05\Backups\CRMDB.bak';

ALTER DATABASE [CRMDB]
SET RECOVERY FULL;

BACKUP LOG [CRMDB]
TO DISK = N'A:\المرحلة الانتقالية\المحور الفرعي 2\التطبيق\MSSQL\Lecture_05\Backups\CRMDB_log.bak'
WITH NOINIT,
NAME = 'BACKUP_LOG_01',
DESCRIPTION = 'FIRST LOG BACKUP';

UPDATE Customers SET Telephone = '999-777-8888' WHERE Id = 101;

SELECT * FROM Customers;

BACKUP LOG [CRMDB]
TO DISK = N'A:\المرحلة الانتقالية\المحور الفرعي 2\التطبيق\MSSQL\Lecture_05\Backups\CRMDB_log.bak'
WITH NOINIT,
NAME = 'BACKUP_LOG_02',
DESCRIPTION = 'SECOND LOG BACKUP';

UPDATE Customers SET Telephone = '000-000-0000' WHERE Id = 101;

SELECT * FROM Customers;

BACKUP LOG [CRMDB]
TO DISK = N'A:\المرحلة الانتقالية\المحور الفرعي 2\التطبيق\MSSQL\Lecture_05\Backups\CRMDB_log.bak'
WITH NOINIT,
NAME = 'BACKUP_LOG_03',
DESCRIPTION = 'THIRD LOG BACKUP';

RESTORE HEADERONLY FROM DISK = N'A:\المرحلة الانتقالية\المحور الفرعي 2\التطبيق\MSSQL\Lecture_05\Backups\CRMDB_log.bak'
RESTORE FILELISTONLY FROM DISK = N'A:\المرحلة الانتقالية\المحور الفرعي 2\التطبيق\MSSQL\Lecture_05\Backups\CRMDB_log.bak'

CREATE DATABASE [CRMDB_TEST]
ON PRIMARY
(
	NAME = 'CRMDB_TEST',
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL17.SQLEXPRESS\MSSQL\DATA\CRMDB_TEST.mdf'
)
LOG ON
(
	NAME = 'CRMDB_TEST_log',
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL17.SQLEXPRESS\MSSQL\DATA\CRMDB_TEST_log.ldf'
);
GO

RESTORE DATABASE [CRMDB_TEST]
FROM DISK = N'A:\المرحلة الانتقالية\المحور الفرعي 2\التطبيق\MSSQL\Lecture_05\Backups\CRMDB.bak'
WITH REPLACE,
MOVE 'CRMDB' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.SQLEXPRESS\MSSQL\DATA\CRMDB_TEST.mdf',
MOVE 'CRMDB_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.SQLEXPRESS\MSSQL\DATA\CRMDB_TEST_log.ldf',
NORECOVERY;

RESTORE LOG [CRMDB_TEST] 
FROM DISK = N'A:\المرحلة الانتقالية\المحور الفرعي 2\التطبيق\MSSQL\Lecture_05\Backups\CRMDB_log.bak'
WITH FILE = 1,
NORECOVERY;

RESTORE LOG [CRMDB_TEST] 
FROM DISK = N'A:\المرحلة الانتقالية\المحور الفرعي 2\التطبيق\MSSQL\Lecture_05\Backups\CRMDB_log.bak'
WITH FILE = 2,
NORECOVERY;

RESTORE DATABASE [CRMDB_TEST] WITH RECOVERY;