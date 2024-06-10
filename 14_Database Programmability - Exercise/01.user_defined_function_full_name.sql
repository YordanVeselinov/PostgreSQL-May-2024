CREATE OR REPLACE FUNCTION fn_full_name(first_name VARCHAR, last_name VARCHAR)
RETURNS VARCHAR
AS
$$
	BEGIN
		RETURN CONCAT(INITCAP(first_name), ' ', INITCAP(last_name));
	END;
$$
LANGUAGE plpgsql;
