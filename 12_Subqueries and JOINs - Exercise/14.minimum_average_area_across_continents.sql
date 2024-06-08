SELECT
	MIN(average_area) AS min_average_area
FROM
	(
	SELECT
	    AVG(area_in_sq_km) AS average_area
    FROM
	    countries AS c
    GROUP BY
	    c.continent_code
	) AS average_table;
