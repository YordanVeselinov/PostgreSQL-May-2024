SELECT 
	e.employee_id,
	CONCAT(e.first_name, ' ', e.last_name) AS full_name,
	ep.project_id,
	(SELECT name FROM projects WHERE project_id = 1) AS project_name
FROM 
	employees AS e
JOIN
	employees_projects AS ep
USING
	(employee_id)
WHERE
	ep.project_id = 1;
