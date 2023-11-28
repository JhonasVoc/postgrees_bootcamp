-- HAVING
/* Habilita o filtro após a agregação.
-Seleção básica
-Na seleção abaixo não podemos filtra o SUM(sale)
SELECT company, SUM(sales)
FROM finance_table
WHERE company != 'Google'
GROUP BY combany*/

SELECT * FROM payment;
--Simples
SELECT 
	customer_id, SUM(amount)
FROM
	payment
WHERE
	customer_id NOT IN (184,87,273,477)
GROUP BY customer_id;
-- Com having
SELECT 
	customer_id, SUM(amount)
FROM
	payment
WHERE
	customer_id NOT IN (184,87,273,477)
GROUP BY customer_id
HAVING
	SUM(amount) > 100;
--Customer table
SELECT * FROM customer;

SELECT store_id, COUNT(*)
FROM
	customer
GROUP BY(store_id)
HAVING COUNT (*) > 300;
