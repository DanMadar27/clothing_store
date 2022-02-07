USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.updateCustomer;
GO


CREATE PROCEDURE updateCustomer

    @id INT,
    @first_name NVARCHAR(50) = NULL,
    @last_name NVARCHAR(50) = NULL,
    @date_of_birth DATE = NULL,
    @country NVARCHAR(50)= NULL,
    @city NVARCHAR(50)= NULL,
    @address NVARCHAR(50)= NULL,
    @zip_code VARCHAR(50)= NULL,
    @phone_number NVARCHAR(20) = NULL,
    @email NVARCHAR(70) = NULL

AS

BEGIN

     IF (@first_name IS NULL AND
        @last_name IS NULL AND
        @date_of_birth IS NULL AND
        @country IS NULL AND
        @city IS NULL AND
        @address IS NULL AND
        @zip_code IS NULL AND
        @phone_number IS NULL AND
        @email IS NULL)

    BEGIN

        PRINT 'all input values are null';

        RETURN;

    END


    UPDATE person
    SET 

        [first_name] = ISNULL(@first_name, [first_name]),

        [last_name] = ISNULL(@last_name, [last_name]),

        [date_of_birth]= ISNULL(@date_of_birth, [date_of_birth]),

        [country] = ISNULL(@country, [country]),
        
        [city] = ISNULL(@city, [city]),
        
        [address] = ISNULL(@address, [address]),
        
        [zip_code] = ISNULL(@zip_code, [zip_code]),

        [phone_number] = ISNULL(@phone_number, [phone_number]),

        [email] = ISNULL(@email, [email])

    FROM person
    INNER JOIN customer
    ON person.id = customer.person_id
    
    WHERE customer.id = @id;

END

GO


DECLARE
    @id INT,
    @first_name NVARCHAR(50),
    @last_name NVARCHAR(50),
    @date_of_birth DATE,
    @country NVARCHAR(50),
    @city NVARCHAR(50),
    @address NVARCHAR(50),
    @zip_code VARCHAR(50),
    @phone_number NVARCHAR(20),
    @email NVARCHAR(70);


SET @id = 15;
SET @first_name = 'Paul';
SET @last_name = 'Miles';
SET @date_of_birth = CAST('2004-06-02' AS DATE);
SET @country = 'Israel';
SET @city = 'Petah Tikva';
SET @address = '23 South Road';
SET @zip_code = '7561238';
SET @phone_number = '359-631-0451';
SET @email = 'abe0@asxc.com';


EXEC updateCustomer
    @id = @id,
    @first_name = @first_name,
    @last_name = @last_name,
    @date_of_birth = @date_of_birth,
    @country = @country,
    @city = @city,
    @address = @address,
    @zip_code = @zip_code,
    @phone_number = @phone_number,
    @email = @email;


GO