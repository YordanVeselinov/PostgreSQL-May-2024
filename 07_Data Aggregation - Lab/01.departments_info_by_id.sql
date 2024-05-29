SELECT 
	department_id,
	count(first_name)
FROM 
	employees
GROUP BY department_id
ORDER BY department_id;
