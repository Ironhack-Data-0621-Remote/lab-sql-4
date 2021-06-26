-- Get the unique film ratings.
SELECT DISTINCT rating FROM film;

-- Get the unique release years.
SELECT DISTINCT release_year FROM film;

-- Get all films with the word ARMAGEDDON in the title.
SELECT * FROM film
WHERE title regexp 'Geddon';

-- Get all films with the word APOLLO in the title
SELECT * FROM film
WHERE title regexp 'Apollo';

-- Get all films which title ends with the word APOLLO. 
SELECT * FROM film
WHERE title regexp 'Apollo$';

-- Get all films with the word DATE in the title.
SELECT * FROM film
WHERE title LIKE '%date' OR 'date%';

SELECT title FROM film
WHERE title REGEXP 'date';

-- Get the 10 films with the longest title.
Select* from film 
order by length(title) desc;

-- Get the 10 longest films.
SELECT title, length FROM film 
ORDER BY length desc
LIMIT 10;

-- How many films include Behind the Scenes content?
SELECT DISTINCT(special_features) FROM film;

SELECT COUNT(special_features) FROM film
WHERE special_features regexp 'behind the scenes';

-- List films ordered by release year and title in alphabetical order.
SELECT release_year, title FROM film
ORDER BY release_year DESC, title ASC;










