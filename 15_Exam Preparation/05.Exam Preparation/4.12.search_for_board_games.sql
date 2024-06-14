CREATE TABLE search_results (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    release_year INT,
    rating FLOAT,
    category_name VARCHAR(50),
    publisher_name VARCHAR(50),
    min_players VARCHAR(50),
    max_players VARCHAR(50)
);


CREATE OR REPLACE PROCEDURE usp_search_by_category(
	searched_category VARCHAR(50)
)AS
$$
BEGIN
	INSERT INTO search_results(
	    name,
	    release_year,
	    rating,
	    category_name,
	    publisher_name,
	    min_players,
	    max_players
	)
	SELECT
	b.name,
	b.release_year,
	b.rating,
	c.name,
	p.name,
	pr.min_players || ' people',
	pr.max_players || ' people'
	FROM
		categories AS c
	JOIN
		board_games AS b
	ON
		c.id = b.category_id
	JOIN
		publishers AS p
	ON
		p.id = b.publisher_id
	JOIN
		players_ranges AS pr
	ON 
		pr.id = b.players_range_id
	WHERE
		c.name = searched_category
	ORDER BY
		p.name,
		b.release_year DESC;
END;
$$
LANGUAGE plpgsql;
