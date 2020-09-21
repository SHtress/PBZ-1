USE task2;
SELECT DISTINCT provider_detail_project.pr FROM provider_detail_project
JOIN provider
ON provider_detail_project.p=provider.p
JOIN project
ON provider_detail_project.pr=project.pr
WHERE pr_city <> p_city