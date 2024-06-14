SELECT
	b.name,
	b.rating,
	c.name AS category_name
FROM 
	board_games AS b
LEFT JOIN
	categories AS c
ON
	b.category_id = c.id
LEFT JOIN
	players_ranges AS p
ON
	b.players_range_id = p.id
WHERE
	(b.rating > 7 AND b.name ILIKE '%a%')
				OR
	(b.rating > 7.50 AND p.min_players >= 2 AND p.max_players <= 5)
ORDER BY
	b.name,
	b.rating DESC
LIMIT 5;
