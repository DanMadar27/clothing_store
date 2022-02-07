USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.customerSearch;
GO


CREATE PROCEDURE customerSearch
    @name NVARCHAR(50)
AS

BEGIN

    SELECT *
    FROM customer
    INNER JOIN person 
    ON [person_id] = person.id
    WHERE [first_name] LIKE @name + '%' OR
    [last_name] LIKE @name + '%';

END

GO


DECLARE
    @name NVARCHAR(50);


SET @name = 'g';


EXEC customerSearch
    @name = @name;


GO