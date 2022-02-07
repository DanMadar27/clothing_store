USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.customerAllAge;
GO


CREATE PROCEDURE customerAllAge
AS

BEGIN

    SELECT customer.id,
    DATEDIFF(YEAR, date_of_birth, GETDATE()) -1 AS age,
    [date_of_birth]
    FROM customer
    INNER JOIN person 
    ON [person_id] = person.id
    ORDER BY [date_of_birth] DESC;

END

GO


EXEC customerAllAge;

GO