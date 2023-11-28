--What are the emails of the customer who live in California?

SELECT * FROM customer;
SELECT * FROM address;

SELECT district,email
FROM
	customer
INNER JOIN
	address ON
address.address_id = customer.address_id
WHERE district = 'California';

/* A customer walks in and is a huge fan of the actor
"Nick Wahlberg" and want yo know whch movies he is in.
Get a list of all the movies "Nick Wahlberg " has been in
*/


-- Vamos olhar as tabelas que tem atore e filmes.
SELECT * FROM actor;-- vi que o actor_id do Nick = 2
SELECT * FROM film_actor; 
SELECT * FROM film;

/* Pensei em usar a subquery para poder msotrar:
film_id,first_name e Nome do ator */
SELECT film_id,first_name
--Quer de subconsulta
FROM
	film_actor
INNER JOIN
	actor ON
actor.actor_id = film_actor.actor_id
WHERE
	actor.actor_id = 2;
	
--Query final
SELECT  film.title,x.film_id, x.first_name,x.last_name
from
	film
INNER JOIN
	(SELECT film_id,first_name,last_name
FROM
	film_actor
INNER JOIN
	actor ON
actor.actor_id = film_actor.actor_id
WHERE
	actor.actor_id = 2) x
ON film.film_id = x.film_id;


--Modo mais 'fácil'
--identificar que o actor_id do Nick é 2
SELECT * FROM film_actor;

SELECT title, film.film_id 
FROM
	film
INNER JOIN
	film_actor ON
film_actor.film_id = film.film_id
WHERE
	film_actor.actor_id = 2;
--Solução do instrutor
SELECT title,first_name,last_name FROM actor
INNER JOIN
	film_actor
ON actor.actor_id = film_actor.actor_id
INNER JOIN
	film
ON film_actor.film_id = film.film_id
WHERE
	first_name = 'Nick' and last_name ='Wahlberg';

	