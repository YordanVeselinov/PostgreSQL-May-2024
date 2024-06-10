CREATE TABLE gift_recipients(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	country_id INT,
	gift_sent BOOLEAN DEFAULT False
);

INSERT INTO gift_recipients(
	name,
	country_id
)
SELECT
	CONCAT(first_name, ' ', last_name),
	country_id
FROM 
	customers;

UPDATE 
	gift_recipients
SET
	gift_sent = True
WHERE
	country_id IN (7, 8, 14, 17, 26);
