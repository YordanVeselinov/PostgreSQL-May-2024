CREATE TABLE IF NOT EXISTS deleted_employees(
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	middle_name VARCHAR(20),
	job_title VARCHAR(50),
	department_id INT,
	salary NUMERIC(19, 4)
);

CREATE OR REPLACE FUNCTION tr_deleted_employees()
RETURNS TRIGGER
AS
$$
BEGIN
	INSERT INTO deleted_employees(
		first_name, 
		last_name, 
		middle_name, 
		job_title,
		department_id,
		salary)
	VALUES
		(OLD.first_name,
		OLD.last_name,
		OLD.middle_name,
		OLD.job_title,
		OLD.department_id,
		OLD.salary
		);
	RETURN OLD;
		
END;
$$
LANGUAGE 
	plpgsql;

CREATE TRIGGER deleted_employees_from_employees
BEFORE DELETE ON employees
FOR EACH ROW
EXECUTE PROCEDURE tr_deleted_employees();
