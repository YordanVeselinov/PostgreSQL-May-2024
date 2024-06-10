CREATE OR REPLACE FUNCTION fn_calculate_future_value(
	initial_sum DECIMAL,
	yearly_interest_rate DECIMAL,
	number_of_years INTEGER
	)
RETURNS DECIMAL
AS
$$
	BEGIN
		RETURN TRUNC(initial_sum * POWER(yearly_interest_rate + 1, number_of_years) , 4);		
	END;
$$
LANGUAGE plpgsql;
