--BASIC SINTAX
/* SELECT * FROM TableB
LEFT OUTER JOIN TableA
ON TableA.name = TableB.name;


----- DIAGRAMA DE VEM A ESQUERDA SEM A INTERCECÇÃO
SELECT * FROM TableB
LEFT OUTER JOIN TableA
ON TableA.name = TableB.name
WHERE TableB.id ISNULL;
*/

--Look table
SELECT * FROM film;

SELECT * FROM inventory;

--SHow multiplee films in inventory
SELECT film.film_id, title, inventory_id,store_id
FROM
	film
LEFT OUTER JOIN inventory ON
inventory.film_id = film.film_id;

-- WE can see films that doesnt exist in inventory table
--Podemos ver filmes que não existem no inventário
SELECT film.film_id, title, inventory_id,store_id
FROM
	film
LEFT OUTER JOIN inventory ON
inventory.film_id = film.film_id
WHERE inventory.film_id ISNULL;

-- E se eu quisesse ver a quantidade?
SELECT COUNT(*)
FROM
	film
LEFT OUTER JOIN inventory ON
inventory.film_id = film.film_id
WHERE inventory.film_id ISNULL;



