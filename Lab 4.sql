use sakila;

-- Get the unique film ratings.
select distinct rating from film;

-- Get the unique release years.
select distinct release_year from film;

-- Get all films with the word ARMAGEDDON in the title.
select title from film
where title regexp 'ARMAGEDDON';

-- Get all films with the word APOLLO in the title
select title from film
where title regexp 'APOLLO';
-- Get all films which title ends with the word APOLLO. 
select title from film
where title regexp 'APOLLO$';

-- Get all films with the word DATE in the title.
select title from film
where title like '%DATE';

-- Get the 10 films with the longest title.
select title from film
where length(title)
order by length(title) desc
limit 10;

-- Get the 10 longest films.
-- ALTER TABLE film 
-- RENAME COLUMN length TO new_length;

select title, new_length from film
order by new_length desc 
limit 10;

-- How many films include Behind the Scenes content?
SELECT COUNT(special_features)
FROM film
WHERE special_features REGEXP "Behind the Scenes";

-- List films ordered by release year and title in alphabetical order.
select * from film
order by title asc, release_year asc;