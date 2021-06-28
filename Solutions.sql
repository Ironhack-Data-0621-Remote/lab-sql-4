-- lab-sql-4

select rating from sakila.film;

select release_year from sakila.film;

select title from sakila.film
where title regexp 'ARMAGEDDON';

select title from sakila.film
where title regexp 'APOLLO';

select title from sakila.film
where title regexp 'APOLLO$';

select title from sakila.film
where title regexp 'DATE$';

select title from sakila.film
order by length(title) desc
limit 10;

select title from sakila.film
order by length(length) desc
limit 10;

select title from sakila.film
where special_features = 'Behind the Scenes';

select title from sakila.film
order by release_year and title;

