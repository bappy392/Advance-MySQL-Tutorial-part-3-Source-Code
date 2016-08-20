DELIMITER$$
CREATE 
	TRIGGER before_insert BEFORE INSERT ON bank.`branch` FOR EACH ROW
	BEGIN
	
	INSERT INTO bank.`tig` VALUES(new.branch_name, new.branch_city, NOW());
	
	
	
	END$$;
DELIMITER;