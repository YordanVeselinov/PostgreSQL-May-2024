CREATE OR REPLACE FUNCTION fn_count_employees_by_town(town_name VARCHAR(20))
RETURNS INTEGER
AS
$$
DECLARE
	persons_living_in_town INTEGER;
BEGIN
	SELECT INTO persons_living_in_town
		COUNT(*) 
	FROM
		employees AS e
	JOIN
		addresses AS a
	USING
		(address_id)
	JOIN
		towns AS t
	USING
		(town_id)
	WHERE
		t.name = town_name;
	RETURN persons_living_in_town;
END;
$$
LANGUAGE plpgsql;
