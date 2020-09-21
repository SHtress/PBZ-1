USE task2;
SELECT DISTINCT provider_detail_project.p,provider_detail_project.d,provider_detail_project.pr FROM provider_detail_project
JOIN provider 
ON provider.p=provider_detail_project.p
JOIN detail
ON detail.d=provider_detail_project.d
JOIN project
ON project.pr=provider_detail_project.pr
WHERE p_city=d_city AND p_city=pr_city