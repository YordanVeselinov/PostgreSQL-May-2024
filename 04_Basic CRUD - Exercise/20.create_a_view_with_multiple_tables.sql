CREATE VIEW 
	view_addresses
AS
SELECT 
	CONCAT(e.first_name, ' ', e.last_name) as full_name,
	e.department_id,
	CONCAT_WS(' ', a.number, a.street) as address
FROM 
	employees AS e, addresses AS a
WHERE 
	a.id = e.address_id
ORDER BY 
	address;
