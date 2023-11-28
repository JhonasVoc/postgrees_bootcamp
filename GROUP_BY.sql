-- Sintax basica
/* SELECT category_col, AGG(data_col)
FROM TABLE
GROUP BU category_col
-----
SELECT category_col, AGG(data_col)
FROM TABLE
WHERE category_col !='A'
GROUP BY category_col

SELECT company,SUM(sale)
FROM finance_table
GROUP BY company
ORDER BY SUM(SALES)
*/

SELECT * FROM payment;
-- Agregando a soma do montante por cliente(customer_id)
SELECT customer_id, SUM(amount)
FROM
	payment
GROUP BY
	customer_id
ORDER BY
	SUM(amount);
--Agregando a contagem de transações	
SELECT customer_id, COUNT(amount)
FROM
	payment
GROUP BY
	customer_id
ORDER BY
	SUM(amount) DESC;
--Tabela de pagamentos (payment)
SELECT 
	customer_id, staff_id, SUM(amount)
FROM
	payment
GROUP BY
	1,2
ORDER BY
	customer_id;

--Ordendo pela soma do montante

SELECT 
	customer_id, staff_id, SUM(amount)
FROM
	payment
GROUP BY
	1,2
ORDER BY
	SUM(amount) DESC;
--Transformando o DAATESTAMP para Date e agrupando
SELECT DATE(payment_date), SUM(amount)
FROM
	payment
GROUP BY
	DATE(payment_date)
ORDER BY
	SUM(amount) DESC;
