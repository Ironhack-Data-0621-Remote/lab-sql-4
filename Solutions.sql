USE sakila;

-- Get the unique film ratings.
SELECT DISTINCT rating
FROM film;

-- Get the unique release years.
SELECT DISTINCT release_year
FROM film;

-- Get all films with the word ARMAGEDDON in the title.
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%';

-- Get all films with the word APOLLO in the title
SELECT *
FROM film
WHERE title LIKE '%APOLLO%';

-- Get all films which title ends with the word APOLLO. 
SELECT *
FROM film
WHERE title REGEXP 'APPOLO$';

SELECT *
FROM film
WHERE title LIKE '%APPOLO';

-- Get all films with the word DATE in the title.
SELECT *
FROM film
WHERE title LIKE '% DATE%' OR title LIKE 'DATE%';

-- Get the 10 films with the longest title.

-- Get the 10 longest films.
SELECT film_id, title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- How many films include Behind the Scenes content?
SELECT DISTINCT special_features FROM film;

SELECT COUNT(*)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

SELECT COUNT(special_features)
FROM film
WHERE special_features REGEXP 'Behind the Scenes';

-- List films ordered by release year and title in alphabetical order.
SELECT title, release_year
FROM film
ORDER BY title; -- no need to order by release year as there is only one release year, but how could this be done if wanted?










