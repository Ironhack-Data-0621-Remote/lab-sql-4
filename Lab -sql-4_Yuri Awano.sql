-- 1.Get the unique film ratings.
SELECT DISTINCT rating FROM film;

-- 2.Get the unique release years.
SELECT * FROM film;

SELECT DISTINCT release_year FROM film;

-- 3.Get all films with the word ARMAGEDDON in the title.
SELECT title FROM film
WHERE title REGEXP 'ARMAGEDDON';

-- 4.Get all films with the word APOLLO in the title
SELECT title FROM film
WHERE title REGEXP 'APOLLO';

-- 5.Get all films which title ends with the word APOLLO. 
SELECT title FROM film
WHERE title REGEXP 'APOLLO$';

-- 6.Get all films with the word DATE in the title.
SELECT title FROM film
WHERE title REGEXP 'DATE';

-- 7.Get the 10 films with the longest title.
SELECT title, length(title) FROM film
order by length(title) desc
limit 10;


-- 8.Get the 10 longest films.
SELECT * FROM film;

SELECT title, length as length_of_film FROM film
ORDER BY length_of_film DESC
LIMIT 10;


-- 9.How many films include Behind the Scenes content?
SELECT count(*) special_features FROM film
WHERE special_features REGEXP 'behind the scene';

-- 10.List films ordered by release year and title in alphabetical order.
SELECT * FROM film
ORDER BY release_year desc, title asc;













