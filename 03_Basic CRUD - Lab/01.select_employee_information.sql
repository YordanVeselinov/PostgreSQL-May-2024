SELECT
	id,
	CONCAT(first_name, ' ', last_name) AS full_name,
	job_title AS "Job Title"

FROM employees;
