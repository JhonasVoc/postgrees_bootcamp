
--Basico com tabela customer
-- similar ao .head() do Pandas
SELECT * FROM customer
LIMIT 5;

--Tabela Payment
SELECT * FROM payment;

SELECT * FROM payment
ORDER BY
	payment_date DESC
LIMIT 5;

SELECT * FROM payment
WHERE amount > 4
ORDER BY
	payment_date DESC
LIMIT 5;


--Exercio 1
/*We want to reward our first 10 paying customers.
What are the customers ids of the first 10 customers
who created a payment?
*/
SELECT 
	customer_id
FROM
	payment
ORDER BY 
	payment_date ASC
LIMIT 10;

--Exercicio 2
/* A customer wants to quick rent a video to watch over
their short lunch break.
What are the title of the 5 shortest (in lenght of runtime)
movies?*/
SELECT * FROM film;

SELECT 
	*
FROM
	film
ORDER BY
	length
LIMIT 5;



