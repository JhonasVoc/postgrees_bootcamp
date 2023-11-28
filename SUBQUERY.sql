-- Subquery habiita construir query mais complexas e basicamente envolve utilizar dois SELECT.
-- No exemplo abaixo, temos as médias dos alunas e também as médias dos alunos.
-- Vamos construir uma query que use como filtro a média dos alunas
--A subquery é executada primeiro, desde que esteja entre parenteses

/* SELECT student,grade
FROM
	test_score 
WHERE grade > (SELECT AVG(grade)FROM test_score)
*/

-- Usando In em uma lógica de lista:
/*
SELECT student, grade
FROM
	test_score
WHERE
	student IN
(SELECT student FROM honor_roll_table) 
*/

--Exemplo com tabele filmm
SELECT * FROM film;

SELECT title, rental_rate
FROM	
	film
WHERE rental_rate >(SELECT AVG(rental_rate) FROM film);

-- Olhando tabela Rental
SELECT * FROM rental;

-- (SUBQUERY), ids dos film que a data de locação foi em um determinado intervalo.
SELECT inventory.film_id
FROM
	rental
INNER JOIN inventory on
	inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30';

------ QUUERY COMPLETA
SELECT  film_id, title
FROM
	film
WHERE film_id IN

(SELECT inventory.film_id
FROM
	rental
INNER JOIN inventory on
	inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY
	film_id;

--Exist OPERATOR
--SE PELO MENOS ELES TEM 1 pagamento que tenha preço  > 11
SELECT first_name, last_name
FROM
	customer AS c
WHERE
	EXISTS
(SELECT * FROM payment as p 
 WHERE p.customer_id = c.customer_id
 AND amount >11
);
	
