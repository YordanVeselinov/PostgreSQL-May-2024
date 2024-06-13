SELECT
	CONCAT(c.first_name, ' ', c.last_name) AS coach_full_name,
	CONCAT(p.first_name, ' ', p.last_name) AS player_full_name,
	t.name AS team_name,
	sd.passing,
	sd.shooting,
	sd.speed
FROM
	players AS p
JOIN
	skills_data AS sd
ON
	p.skills_data_id = sd.id
JOIN
	players_coaches AS pc
ON
	p.id = pc.player_id
JOIN
	coaches AS c
ON
	c.id = pc.coach_id
JOIN
	teams AS t 
ON 
	t.id = p.team_id
ORDER BY
	coach_full_name,
	player_full_name DESC;
