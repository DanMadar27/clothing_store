USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.customerSortLocation;
GO


CREATE PROCEDURE customerSortLocation
AS

BEGIN

    SELECT *
    FROM customer
    INNER JOIN person 
    ON [person_id] = person.id
    ORDER BY [country] ASC, [city] ASC, [address] ASC, [zip_code] ASC;

END

GO


EXEC customerSortLocation;

GO