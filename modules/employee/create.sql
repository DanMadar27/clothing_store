USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.createEmployee ;
GO


CREATE PROCEDURE createEmployee 

    @first_name NVARCHAR(50),
    @last_name NVARCHAR(50),
    @date_of_birth DATE,
    @country NVARCHAR(50),
    @city NVARCHAR(50),
    @address NVARCHAR(50),
    @zip_code VARCHAR(50),
    @phone_number NVARCHAR(20),
    @email NVARCHAR(70), 
    @wage DECIMAL (7, 2),
    @type NVARCHAR (50)

AS

BEGIN

    DECLARE
        @person_id INT;

   
    SET @person_id = NULL; 
 
    INSERT INTO person ([first_name], [last_name], [date_of_birth]
        , [country], [city], [address], [zip_code], [phone_number], [email])

        VALUES (
            @first_name,
            @last_name,
            @date_of_birth,
            @country,
            @city,
            @address,
            @zip_code,
            @phone_number,
            @email);

    SET @person_id = SCOPE_IDENTITY();
    
    
    INSERT INTO employee ([person_id], [wage], [type]) 
    
        VALUES (
            @person_id,
            @wage,
            @type);

END

GO


DECLARE
    @first_name NVARCHAR(50),
    @last_name NVARCHAR(50),
    @date_of_birth DATE,
    @country NVARCHAR(50),
    @city NVARCHAR(50),
    @address NVARCHAR(50),
    @zip_code VARCHAR(50),
    @phone_number NVARCHAR(20),
    @email NVARCHAR(70), 
    @wage DECIMAL (7, 2),
    @type NVARCHAR (50);


SET @first_name = 'John';
SET @last_name = 'Balstone';
SET @date_of_birth = CAST('2002-11-05' AS DATE);
SET @country = 'Israel';
SET @city = 'Petah Tikva';
SET @address = 'Rothschild 5';
SET @zip_code = '9561568';
SET @phone_number = '271-552-7654';
SET @email = 'mchichgar0@stanford.edu';
SET @wage = 6000;
SET @type = 'cashier';


EXEC createEmployee 
    @first_name = @first_name,
    @last_name = @last_name,
    @date_of_birth = @date_of_birth,
    @country = @country,
    @city = @city,
    @address = @address,
    @zip_code = @zip_code,
    @phone_number = @phone_number,
    @email = @email,
    @wage = @wage,
    @type = @type;


GO