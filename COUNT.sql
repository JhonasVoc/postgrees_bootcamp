SELECT * FROM film;


SELECT language_id FROM film;

SELECT DISTINCT(language_id)
FROM
	film;

SELECT COUNT(language_id)
FROM
	film;


-- EXEMPLO DE CONTAGEM DE TIPOS DISTINTOS DE RATING
SELECT COUNT(DISTINCT rating)
	FROM film;
	
--payment
SELECT * FROM payment;

-- verificando quantas linhas temos
SELECT COUNT (*) FROM payment;

SELECT  amount from payment;

SELECT DISTINCT amount from payment;
SELECT COUNT (DISTINCT amount) from payment;

