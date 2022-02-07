-- Deleting a database called 'clothing_store' if it exists
-- 
-- Connect to the 'master' database to run this snippet

USE master
GO


IF EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'clothing_store'
)

    DROP DATABASE clothing_store;

GO