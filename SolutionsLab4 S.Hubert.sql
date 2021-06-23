-- Get the unique film ratings.
-- select distinct(film.rating) from film;


-- Get the unique release years.
-- select distinct(film.release_year) from film;

-- Get all films with the word ARMAGEDDON in the title.
-- select film.title
-- from film
-- where film.title regexp 'ARMAGEDDON';

-- Get all films with the word APOLLO in the title
-- select film.title
-- from film
-- where film.title regexp 'APOLLO';


-- Get all films which title ends with the word APOLLO. 
-- select film.title
-- from film
-- where film.title regexp 'APOLLO$';


-- Get all films with the word DATE in the title.
-- select film.title
-- from film
-- where film.title like '%DATE%';


-- Get the 10 films with the longest title.
-- select length(film.title) ' longest_film_title', film.title
-- from film
-- order by (longest_film_title) DESC
-- limit 10 ;

-- Get the 10 longest films.
-- select film.length ' longest_film', film.title
-- from film
-- order by (longest_film) DESC
-- limit 10 ;

-- How many films include Behind the Scenes content?
-- select count(film.special_features)
-- from film
-- where film.special_features like '%Behind the Scenes%';


-- List films ordered by release year and title in alphabetical order.
-- select * 
-- from film
-- order by film.release_year asc , film.title asc;












