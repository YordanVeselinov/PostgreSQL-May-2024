SELECT 
	a.town_id,
	t.name AS town_name,
	a.address_text
FROM 
	addresses AS a
JOIN
	towns AS t
USING
	(town_id)
WHERE
	t.name IN ('Sofia', 'San Francisco', 'Carnation')
ORDER BY
	t.town_id,
	a.address_id;
