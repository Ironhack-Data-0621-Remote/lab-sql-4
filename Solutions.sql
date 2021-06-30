-- 1. Get film ratings.
-- SELECT distinct rating
-- FROM sakila.film;

-- 2. Get release years.
-- SELECT distinct release_year
-- FROM sakila.film;

-- 3. Get all films with ARMAGEDDON in the title.
-- SELECT * FROM sakila.film
-- WHERE title regexp 'ARMAGEDDON';

-- 4. Get all films with APOLLO in the title
-- SELECT * FROM sakila.film
-- WHERE title regexp 'APOLLO';

-- 5. Get all films which title ends with APOLLO.
-- SELECT * FROM sakila.film
-- WHERE title like '%APOLLO';
-- Another option:
-- WHERE title regexp 'APOLLO$';

-- 6. Get all films with word DATE in the title.
-- SELECT * FROM sakila.film
-- WHERE title regexp ('DATE');

-- Why this query doesnt work?
-- WHERE title in ('DATE ', ' DATE', ' DATE ');
-- Another option:
-- WHERE title like 'DATE%' or title like '% DATE';

-- 7. Get 10 films with the longest title.
-- SELECT title, length(title)
-- FROM sakila.film
-- ORDER BY length(title) desc
-- LIMIT 10;

-- 8. Get 10 the longest films.
-- SELECT title, length
-- FROM sakila.film
-- ORDER BY length desc
-- LIMIT 10;

-- 9. How many films include **Behind the Scenes** content?
-- SELECT count(*) FROM sakila.film
-- WHERE special_features regexp 'Behind the Scenes';

-- 10. List films ordered by release year and title in alphabetical order.
-- SELECT *
-- FROM sakila.film
-- ORDER BY release_year desc, title asc;
