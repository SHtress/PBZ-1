USE task2;
SELECT p FROM provider_detail_project
    GROUP BY p
    HAVING COUNT(DISTINCT d) = 1;