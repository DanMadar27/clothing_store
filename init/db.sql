-- Create a new database called 'clothing_store' if it does not exist
-- 
-- Connect to the 'master' database to run this snippet

USE master
GO


IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'clothing_store'
)

    CREATE DATABASE clothing_store;

GO