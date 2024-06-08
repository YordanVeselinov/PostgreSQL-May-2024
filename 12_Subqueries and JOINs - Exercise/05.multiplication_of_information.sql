SELECT
	b.booking_id,
	c.first_name
FROM
	bookings AS b
CROSS JOIN
	customers AS c
