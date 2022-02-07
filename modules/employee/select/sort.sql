USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.employeeSort;
GO


CREATE PROCEDURE employeeSort
AS

BEGIN

    SELECT *
    FROM employee
    INNER JOIN person 
    ON [person_id] = person.id
    ORDER BY [type] ASC, [wage] DESC;

END

GO


EXEC employeeSort;

GO