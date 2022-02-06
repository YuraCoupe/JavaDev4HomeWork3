/*SELECT pr.project_id, pr.project_name, SUM(d.salary) as project_value
FROM projects pr
JOIN developersToProjects dtp ON dtp.project_id = pr.project_id
JOIN developers d ON dtp.developer_id = d.developer_id
GROUP BY pr.project_id, pr.project_name
ORDER BY project_value desc 
LIMIT 1;*/

SELECT pr.project_id, pr.project_name, SUM(d.salary) as project_value
FROM projects pr
JOIN developersToProjects dtp ON dtp.project_id = pr.project_id
JOIN developers d ON dtp.developer_id = d.developer_id
GROUP BY pr.project_id, pr.project_name
HAVING SUM(d.salary) >= ALL (
SELECT SUM(d.salary) as project_value
FROM projects pr
JOIN developersToProjects dtp ON dtp.project_id = pr.project_id
JOIN developers d ON dtp.developer_id = d.developer_id
GROUP BY pr.project_id, pr.project_name);
