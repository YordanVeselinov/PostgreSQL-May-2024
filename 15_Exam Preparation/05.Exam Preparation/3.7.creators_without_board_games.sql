SELECT
	c.id,
	CONCAT(c.first_name, ' ', c.last_name) AS creator_name,
	c.email
FROM
	creators AS c
LEFT JOIN
	creators_board_games AS cb
ON
	cb.creator_id = c.id
WHERE
	cb.board_game_id IS NULL;
