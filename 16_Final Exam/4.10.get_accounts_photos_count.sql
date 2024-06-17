CREATE OR REPLACE FUNCTION udf_accounts_photos_count(
	account_username VARCHAR(30)
) RETURNS INTEGER
AS
$$
BEGIN
	RETURN (SELECT
				COUNT(*)
			FROM
				photos AS p
			JOIN
				accounts_photos AS ac
			ON
				p.id = ac.photo_id
			JOIN
				accounts AS a
			ON
				a.id = ac.account_id
			WHERE
				a.username = account_username);
END;
$$
LANGUAGE plpgsql;
