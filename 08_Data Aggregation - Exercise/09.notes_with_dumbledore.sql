SELECT
	last_name,
	COUNT(*) as notes_with_dumbledore
FROM 
	wizard_deposits
WHERE 
	notes LIKE '%Dumbledore%'
GROUP BY 
	last_name;
