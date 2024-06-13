UPDATE 
	coaches
SET
	salary = salary * coach_level
WHERE
	id IN (SELECT
                c.id
            FROM
                coaches AS c
            JOIN
                players_coaches AS pc
            ON
                c.id = pc.coach_id
            WHERE 
                SUBSTRING(c.first_name, 1, 1) = 'C'
            GROUP BY
                c.id
            HAVING
                COUNT(pc.player_id) >= 1);
