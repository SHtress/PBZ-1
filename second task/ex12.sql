USE task2;
SELECT * FROM provider_detail_project 
JOIN project
ON project.pr=provider_detail_project.pr
JOIN provider
ON provider.p=provider_detail_project.p
WHERE p_city=pr_city
