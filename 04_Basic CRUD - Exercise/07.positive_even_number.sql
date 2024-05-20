SELECT
	CONCAT(number, ' ',street) as address,
	city_id

FROM addresses
WHERE city_id > 0 and city_id % 2 = 0 
ORDER BY city_id ASC;
