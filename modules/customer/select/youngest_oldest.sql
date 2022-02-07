USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.customerYoungestOldest;
GO


CREATE PROCEDURE customerYoungestOldest
AS

BEGIN

    SELECT customer.id,
    DATEDIFF(YEAR, date_of_birth, GETDATE()) -1 AS age,
    [date_of_birth]
    FROM customer
    INNER JOIN person 
    ON [person_id] = person.id
    WHERE [date_of_birth] = 
        (SELECT MAX(date_of_birth)
        FROM customer
        INNER JOIN person 
        ON [person_id] = person.id);


    SELECT customer.id,
    DATEDIFF(YEAR, date_of_birth, GETDATE()) -1 AS age,
    [date_of_birth]
    FROM customer
    INNER JOIN person 
    ON [person_id] = person.id
    WHERE [date_of_birth] = 
        (SELECT MIN(date_of_birth)
        FROM customer
        INNER JOIN person 
        ON [person_id] = person.id);

END

GO


EXEC customerYoungestOldest;

GO