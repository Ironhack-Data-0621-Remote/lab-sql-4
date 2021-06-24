-- Get the unique film ratings.
use sakila;
select distinct rating from film;
-- Get the unique release years.
select release_year from film;
select distinct release_year from film; 
-- Get all films with the word ARMAGEDDON in the title.
select title from film
where title like '%ARMAGEDDON%';
-- Get all films with the word APOLLO in the title
select title from film
where title like '%APOLLO%';
-- Get all films which title ends with the word APOLLO. 
select title from film
where title like '%APOLLO';
-- Get all films with the word DATE in the title.
select title from film
where title like '% DATE%';
-- Get the 10 films with the longest title.
select title from film;
select title, length(title) as 'title_length' from film
order by title_length desc limit 10;
-- Get the 10 longest films.
select title, length from film
order by length desc limit 10;
-- How many films include Behind the Scenes content?
select special_features from film;
select count(title) as films_with_behindthescenes from film
where special_features like '%Behind the Scenes%';
-- List films ordered by release year and title in alphabetical order.
select title, release_year from film
order by title; -- what is meant by release year? There is only 2006 in my data. Sorted alphabetically according to title










