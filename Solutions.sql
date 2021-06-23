-- Get the unique film ratings.
SELECT DISTINCT rating
FROM film;

-- Get the unique release years.
SELECT DISTINCT release_year
FROM film;

-- Get all films with the word ARMAGEDDON in the title.
SELECT title
FROM film
WHERE title REGEXP 'ARMAGEDDON';

-- Get all films with the word APOLLO in the title
SELECT title
FROM film
WHERE title LIKE '%APOLLO%';

-- Get all films which title ends with the word APOLLO. 
SELECT title
FROM film
WHERE title LIKE '%APOLLO';

-- Get all films with the word DATE in the title.
SELECT title
FROM film
WHERE title REGEXP 'DATE';

-- Get the 10 films with the longest title.
SELECT title, LENGTH(title)
FROM film
WHERE LENGTH(title) = (
	SELECT MAX(LENGTH(title))
	FROM film
    ORDER BY title)
LIMIT 10;

-- Get the 10 longest films.
SELECT title
FROM film
WHERE length = (SELECT MAX(length) FROM film)
LIMIT 10;

-- How many films include Behind the Scenes content?
SELECT *
FROM film
WHERE special_features REGEXP 'Behind the Scenes';

-- List films ordered by release year and title in alphabetical order.
SELECT *
FROM film
ORDER BY release_year, title ASC;










