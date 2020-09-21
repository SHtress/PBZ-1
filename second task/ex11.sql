USE task2;
SELECT DISTINCT provider.p_city, project.pr_city FROM provider_detail_project
    JOIN provider ON provider_detail_project.p = provider.p
    JOIN project ON provider_detail_project.pr = project.pr
    ORDER BY provider.p_city;