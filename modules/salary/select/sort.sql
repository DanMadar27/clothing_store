USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.salarySort;
GO


CREATE PROCEDURE salarySort
AS

BEGIN

    SELECT *
    FROM salary
    ORDER BY [employee_id] ASC, [brutto] DESC, [netto] DESC;

END

GO


EXEC salarySort;

GO