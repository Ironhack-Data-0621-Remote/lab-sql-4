USE sakila;
-- Get the unique film ratings.
SELECT distinct(rating) FROM film;

-- Get the unique release years.
SELECT distinct(release_year) FROM film;

-- Get all films with the word ARMAGEDDON in the title.
SELECT * FROM film
WHERE title like '%ARMAGEDDON%';

-- Get all films with the word APOLLO in the title
SELECT * FROM film
WHERE title like '%APOLLO%';

-- Get all films which title ends with the word APOLLO. 
SELECT * FROM film
WHERE title like '%APOLLO';

-- Get all films with the word DATE in the title.
SELECT * FROM film
WHERE title like '%DATE%';

-- Get the 10 films with the longest title.
SELECT title, length(title) FROM film
ORDER BY length(title) DESC
LIMIT 10;

-- Get the 10 longest films.
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

-- How many films include Behind the Scenes content?
SELECT count(*) FROM film
WHERE special_features = 'behind the scenes';

-- List films ordered by release year and title in alphabetical order.
SELECT * FROM film
ORDER BY release_year, title;