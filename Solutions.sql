use sakila;

-- Get the unique film ratings.
select distinct rating
from film;

-- Get the unique release years.
select distinct release_year
from film;

-- Get all films with the word ARMAGEDDON in the title.
select *
from film
where title like '%ARMAGEDDON%';

-- Get all films with the word APOLLO in the title
select *
from film
where title like '%APOLLO%';

-- Get all films which title ends with the word APOLLO. 
select *
from film
where title regexp 'APOLLO$';

-- Get all films with the word DATE in the title.
select *
from film
where title regexp 'DATE';

-- Get the 10 films with the longest title.
select *
from film
order by length(title) desc
limit 10;  

-- Get the 10 longest films.
select *
from film
order by length desc
limit 10;  

-- How many films include Behind the Scenes content?
select count(film_id)
from film
where special_features regexp 'Behind the Scenes';

-- List films ordered by release year and title in alphabetical order.
select *
from film
order by release_year, title;











