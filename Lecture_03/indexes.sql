 -- Remove all elements from the plan cache for the entire instance
DBCC FREEPROCCACHE;

 -- Flush the plan cache for the entire instance 
DBCC FREEPROCCACHE;

 -- Get execution time down to milliseconds
SET STATISTICS TIME, IO ON;

SELECT * FROM soc.SocialUsers;

 -- Get the 10 newest users
SELECT TOP(10) U.username, U.created_at FROM soc.SocialUsers U ORDER BY U.created_at DESC;
GO

 -- Find users with more than 50,000 followers
SELECT  U.username, U.followers_count FROM soc.SocialUsers U WHERE U.followers_count > 50000;
GO

 -- Count total users
SELECT COUNT(*) FROM soc.SocialUsers;
GO

 -- Average number of followers
SELECT AVG(CAST(U.followers_count  AS FLOAT)) FROM soc.SocialUsers U;
GO

 -- Users created in the last 30 days
SELECT U.username, U.created_at FROM soc.SocialUsers U WHERE U.created_at >= DATEADD(DAY, -30, GETDATE());
GO

 -- Top 20 most-followed users
SELECT TOP(20) U.username, U.followers_count FROM soc.SocialUsers U ORDER BY U.followers_count; 
GO

 -- Users who follow more people than follow them
SELECT U.username, U.following_count, U.followers_count FROM soc.SocialUsers U WHERE U.following_count > U.followers_count;
GO

 -- Search users by username pattern
SELECT u.username FROM soc.SocialUsers U WHERE U.username LIKE '%user_3%';
GO

 -- Users with empty or missing bio
SELECT U.username, U.bio FROM soc.SocialUsers U WHERE U.bio = '';
GO

 -- Number of users per year
SELECT YEAR(U.created_at) AS CreationYear ,COUNT(*) AS JoinedUsers FROM SOC.SocialUsers U GROUP BY YEAR(U.created_at) ORDER BY YEAR(U.created_at) DESC;
GO

CREATE INDEX SOCIALUSERS_USERNAME_IX 
ON soc.SocialUsers(username);
GO

 -- Search users by username pattern
SELECT u.username FROM soc.SocialUsers U WHERE U.username LIKE '%user_3%';
GO

 -- Count total users
SELECT COUNT(*) FROM soc.SocialUsers;
GO


CREATE INDEX SOCIALUSERS_USERNAME_CREATEDAT_IX 
ON soc.SocialUsers(created_at)
INCLUDE(username);
GO

 -- Users created in the last 30 days
SELECT U.username, U.created_at FROM soc.SocialUsers U WHERE U.created_at >= DATEADD(DAY, -30, GETDATE());
GO