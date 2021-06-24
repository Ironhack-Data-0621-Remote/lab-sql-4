USE sakila;
-- Get film ratings.
SELECT DISTINCT (rating) FROM film;
-- Get release years.
SELECT DISTINCT (release_year) FROM film;
-- Get all films with ARMAGEDDON in the title.
SELECT * FROM film
WHERE title REGEXP 'ARMAGEDDON';
-- Get all films with APOLLO in the title
SELECT * FROM film
WHERE title REGEXP 'APOLLO';
-- Get all films which title ends with APOLLO.
SELECT * FROM film
WHERE title REGEXP 'APOLLO$';
-- Get all films with word DATE in the title.
SELECT * FROM film
WHERE title REGEXP '^DATE [A-Z]' OR title REGEXP '[A-Z] DATE$' OR title REGEXP ' DATE ';
-- i'm not sure if the ranges [A-Z] add anything here or may even mess it up??
-- Get 10 films with the longest title.
SELECT title FROM film
ORDER BY LENGTH(title) DESC
LIMIT 10;
-- Get 10 the longest films.
SELECT title FROM film
ORDER BY length DESC
LIMIT 10;
-- How many films include Behind the Scenes content?
SELECT COUNT(special_features) as number_of_movies_containing_bts_content FROM film
WHERE special_features REGEXP 'Behind the Scenes'; 
-- List films ordered by release year and title in alphabetical order.
SELECT title FROM film
ORDER BY title ASC, release_year;
