CREATE OR REPLACE FUNCTION fn_get_volunteers_count_from_department(
	searched_volunteers_department VARCHAR(30)
) RETURNS INTEGER
AS
$$
BEGIN
	RETURN (SELECT
				COUNT(*)
			FROM
				volunteers AS v
			JOIN
				volunteers_departments AS vd
			ON
				v.department_id = vd.id
			WHERE
				vd.department_name = searched_volunteers_department);
END;
$$
LANGUAGE plpgsql;

-- Test 
-- SELECT fn_get_volunteers_count_from_department('Education program assistant')
-- Expected output: 6
