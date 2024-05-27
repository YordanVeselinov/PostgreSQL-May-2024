SELECT 
	REPLACE(title, 'The', '***')
FROM books
WHERE left(title, 3) = 'The'

-- Second solution
-- WHERE title LIKE 'The%' 
