USE task2;
SELECT d_color FROM detail
WHERE d in (SELECT d FROM provider_detail_project 
            WHERE p='П1');