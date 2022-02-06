SELECT project_id, project_name, MIN (project_cost) FROM projects
WHERE project_cost = (SELECT MIN (project_Cost) FROM projects)
GROUP BY project_id, project_name;