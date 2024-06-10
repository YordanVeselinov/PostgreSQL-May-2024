SELECT 
	i.name AS ingredient_name,
	p.name AS product_name,
	d.name AS distributor_name
FROM
	products AS p
JOIN
	products_ingredients AS pi
ON
	pi.product_id = p.id
JOIN
	ingredients AS i
ON
	i.id = pi.ingredient_id
JOIN
	distributors AS d
ON
	d.id = i.distributor_id
WHERE
	d.country_id = 16
		AND
	LOWER(i.name) = 'mustard'
ORDER BY
	product_name;
