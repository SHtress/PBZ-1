USE task2;
SELECT pr FROM provider_detail_project
GROUP BY pr,d
HAVING d='Д1' 
AND AVG(s)> (SELECT max(s) from provider_detail_project
			 WHERE pr='ПР1');