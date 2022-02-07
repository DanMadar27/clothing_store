USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.supplierSortLocation;
GO


CREATE PROCEDURE supplierSortLocation
AS

BEGIN

    SELECT *
    FROM supplier
    ORDER BY [country] ASC, [city] ASC, [address] ASC, [zip_code] ASC;

END

GO


EXEC supplierSortLocation;

GO