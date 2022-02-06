SELECT pr.project_id, pr.project_name, AVG(d.salary) as project_value
FROM projects pr
JOIN developersToProjects dtp ON dtp.project_id = pr.project_id
JOIN developers d ON dtp.developer_id = d.developer_id
GROUP BY pr.project_id, pr.project_name
HAVING AVG(d.salary) <= ALL (
SELECT AVG(d.salary) as project_value
FROM projects pr
JOIN developersToProjects dtp ON dtp.project_id = pr.project_id
JOIN developers d ON dtp.developer_id = d.developer_id
GROUP BY pr.project_id, pr.project_name);
