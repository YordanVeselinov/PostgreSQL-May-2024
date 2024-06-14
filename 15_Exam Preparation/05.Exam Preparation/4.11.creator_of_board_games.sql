CREATE OR REPLACE FUNCTION fn_creator_with_board_games(
	first_name_creator VARCHAR(30)
) RETURNS INTEGER
AS
$$
BEGIN
	RETURN (SELECT
				COUNT(*)
			FROM
				creators AS c
			JOIN
				creators_board_games AS cb
			ON
				c.id = cb.creator_id
			WHERE
				c.first_name = first_name_creator
);
END;
$$
LANGUAGE plpgsql;

-- Test
-- SELECT fn_creator_with_board_games('Bruno')

-- Expected output: 13