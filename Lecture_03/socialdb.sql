CREATE DATABASE SocialDB;
GO

USE SocialDB;
GO

CREATE SCHEMA soc;
GO

-- Create single social network table
CREATE TABLE soc.SocialUsers (
    user_id INT IDENTITY(1,1) PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    bio VARCHAR(255),
    followers_count INT,
    following_count INT,
    created_at DATETIME
);
GO

-- Generate 1,000,000 rows using a tally table approach

WITH Numbers AS (
    SELECT TOP (1000000)
           ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
    FROM sys.objects a
    CROSS JOIN sys.objects b
)
INSERT INTO soc.SocialUsers (
    username,
    email,
    bio,
    followers_count,
    following_count,
    created_at
)
SELECT
    CONCAT('user_', n) AS username,
    CONCAT('user_', n, '@example.com') AS email,
    CONCAT('This is bio for user ', n) AS bio,
    ABS(CHECKSUM(NEWID())) % 100000 AS followers_count,
    ABS(CHECKSUM(NEWID())) % 5000 AS following_count,
    DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 3650, GETDATE()) AS created_at
FROM Numbers;
GO

-- Verify row count
SELECT COUNT(*) AS total_users FROM soc.SocialUsers;
GO
