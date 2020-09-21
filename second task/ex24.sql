USE task2;
SELECT p FROM provider
WHERE p_status < (SELECT p_status FROM provider 
				  WHERE p='П1')