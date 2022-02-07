USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.incomeExpenseProfit;
GO


CREATE PROCEDURE incomeExpenseProfit
    @from DATETIME = NULL,
    @to DATETIME = NULL
AS

BEGIN

    DECLARE
        @income DECIMAL (12, 2), 
        @salary_expense DECIMAL (12, 2),
        @supply_expense DECIMAL (12, 2), 
        @total_expense DECIMAL (12, 2), 
        @profit DECIMAL (12, 2);
        

    IF (@from IS NULL AND @to IS NULL)

    BEGIN

        SELECT @income = SUM(price)
        FROM purchase_product;
    
        SELECT @supply_expense = SUM(price)
        FROM supply;
        
        SELECT @salary_expense = SUM(brutto)
        FROM salary;

    END

    ELSE

    BEGIN

        IF (@to IS NULL)

        BEGIN

            SELECT @income = SUM(price)
            FROM purchase
            INNER JOIN purchase_product
            ON purchase.id = [purchase_id]
            WHERE purchase.created_at >= @from;

            SELECT @supply_expense = SUM(price)
            FROM supply
            WHERE [created_at] >= @from;
            
            SELECT @salary_expense = SUM(brutto)
            FROM salary
            WHERE [created_at] >= @from;
        
        END

        ELSE

            IF (@from IS NULL)
            
            BEGIN

                SELECT @income = SUM(price)
                FROM purchase
                INNER JOIN purchase_product
                ON purchase.id = [purchase_id]
                WHERE purchase.created_at <= @to;

                SELECT @supply_expense = SUM(price)
                FROM supply
                WHERE [created_at] <= @to;
                
                SELECT @salary_expense = SUM(brutto)
                FROM salary
                WHERE [created_at] <= @to;
                
            END
            
            ELSE 

            BEGIN

                SELECT @income = SUM(price)
                FROM purchase
                INNER JOIN purchase_product
                ON purchase.id = [purchase_id]
                WHERE purchase.created_at BETWEEN @from AND @to;

                SELECT @supply_expense = SUM(price)
                FROM supply
                WHERE [created_at] BETWEEN @from AND @to;
                
                SELECT @salary_expense = SUM(brutto)
                FROM salary
                WHERE [created_at] BETWEEN @from AND @to;

                
            END

    END

    SET @income = ISNULL(@income, 0);
    
    SET @supply_expense = ISNULL(@supply_expense, 0);
 
    SET @salary_expense = ISNULL(@salary_expense, 0);
    
    SET @total_expense = @supply_expense + @salary_expense;
    
    SET @profit = @income - @total_expense;

    PRINT 'income : '  + CAST (@income AS VARCHAR);
    PRINT 'supply expense : '  + CAST (@supply_expense AS VARCHAR);
    PRINT 'salary expense : '  + CAST (@salary_expense AS VARCHAR);
    PRINT 'total expense : '  + CAST (@total_expense AS VARCHAR);
    PRINT 'profit : '  + CAST (@profit AS VARCHAR);
    
END

GO


DECLARE
    @from DATETIME,
    @to DATETIME


SET @from = CAST('2007-01-07 16:49:10' AS DATETIME);
SET @to = CAST('2019-02-03 16:49:10' AS DATETIME);


EXEC incomeExpenseProfit
    @from = @from,
    @to = @to;


GO