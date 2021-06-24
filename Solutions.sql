-- Get the unique film ratings.
select distinct rating
from sakila.film;

-- Get the unique release years.
select distinct release_year
from sakila.film;

-- Get all films with the word ARMAGEDDON in the title.
select * from sakila.film
where title like '%ARMAGEDDON%';

-- Get all films with the word APOLLO in the title
select * from sakila.film
where title like '%APOLLO%';

-- Get all films which title ends with the word APOLLO. 
select * from sakila.film
where title regexp 'APOLLO$';

-- Get all films with the word DATE in the title.
select * from sakila.film
where title like '% DATE' or 'DATE %';

-- Get the 10 films with the longest title.
select title, length(title) as title_length
from sakila.film
order by length(title) desc
limit 10;

-- Get the 10 longest films.
select title, length
from sakila.film
order by length desc
limit 10;

-- How many films include Behind the Scenes content?
select count(distinct title) as nb_behind_scenes_content
from sakila.film
where special_features regexp 'Behind the Scenes';

-- List films ordered by release year and title in alphabetical order.
select release_year, title
from sakila.film
order by release_year, title;