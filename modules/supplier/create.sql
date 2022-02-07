USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.createSupplier;
GO


CREATE PROCEDURE createSupplier

    @name NVARCHAR(50),
    @country NVARCHAR(50),
    @city NVARCHAR(50),
    @address NVARCHAR(50),
    @zip_code VARCHAR(50),
    @phone_number NVARCHAR(20),
    @email NVARCHAR(70)

AS

BEGIN

        INSERT INTO supplier ([name], [country], [city], 
            [address], [zip_code], [phone_number], [email])

        VALUES (
            @name,
            @country,
            @city,
            @address,
            @zip_code,
            @phone_number,
            @email);

END

GO


DECLARE
    @name NVARCHAR(50),
    @country NVARCHAR(50),
    @city NVARCHAR(50),
    @address NVARCHAR(50),
    @zip_code VARCHAR(50),
    @phone_number NVARCHAR(20),
    @email NVARCHAR(70);


SET @name = 'Powlowski Group';
SET @country = 'Israel';
SET @city = 'Petah Tikva';
SET @address = '794 Debra Hill';
SET @zip_code = '4121577';
SET @phone_number = '393-720-7052';
SET @email = 'fchesterman5@businessinsider.com';


EXEC createSupplier
    @name = @name,
    @country = @country,
    @city = @city,
    @address = @address,
    @zip_code = @zip_code,
    @phone_number = @phone_number,
    @email = @email;


GO