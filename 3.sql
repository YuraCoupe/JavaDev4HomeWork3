SELECT s.specialization, SUM(d.salary) FROM developers d
JOIN developersToSkills dts ON d.developer_id = dts.developer_id
JOIN skills s ON s.skill_id = dts.skill_id
WHERE s.specialization = 'Java'
GROUP BY s.specialization;