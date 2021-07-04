-- Get the unique film ratings.
select * from film;
-- select rating from sakila.film;
select distinct rating from sakila.film;

-- Get the unique release years.
select distinct release_year from sakila.film;

-- Get all films with the word ARMAGEDDON in the title.
select * from film; 
select * from sakila.film
where title regexp 'armageddon';

-- Get all films with the word APOLLO in the title
select * from sakila.film
where title regexp 'apollo';

-- Get all films which title ends with the word APOLLO. 
select * from sakila.film
where title regexp 'apollo$'; 

-- Get all films with the word DATE in the title.
select * from sakila.film
where title regexp 'date'; 

-- Get the 10 films with the longest title.
select *, length(title)
from film
where length(title) > 20
limit 10;
select title
from film
where length(title) = (select max(length(title)) from film);

-- Get the 10 longest films.
select * from sakila.film
where length > 184
limit 10;

-- How many films include Behind the Scenes content?
select * from film_text;
select * from sakila.film_text
where description regexp 'behind'; 

select * from sakila.film_text
where title regexp 'behind';

-- List films ordered by release year and title in alphabetical order.
SELECT *
FROM film
ORDER BY release_year ASC;

select * 
from film 
order by title, release_year ASC;










