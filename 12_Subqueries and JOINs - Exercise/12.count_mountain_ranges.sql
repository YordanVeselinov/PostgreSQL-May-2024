SELECT
	mc.country_code,
	COUNT(*) AS mountain_range_count
FROM
	mountains_countries AS mc
JOIN
	mountains AS m
ON
	m.id = mc.mountain_id
WHERE 
	mc.country_code IN ('US', 'RU', 'BG')
GROUP BY
	mc.country_code
ORDER BY
	mc.country_code,
	mountain_range_count DESC;
