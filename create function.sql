DELIMITER$$
CREATE
	FUNCTION methodParams(balance_level INT)
	RETURNS VARCHAR(10)
	BEGIN
	
        DECLARE lvl VARCHAR(15);
        
        IF balance_level>50000 THEN
        SET lvl = 'Platinum';
        ELSEIF(balance_level<10000) THEN
        SET lvl = 'Silver';
        END IF;
        RETURN(lvl);
	
	
	END$$
DELIMITER;