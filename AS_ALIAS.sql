-- AS Statement / Alias
/* Essa declaração é usada para substituir o 
nome de alguma seleção, usado para facilitar a vizualização
ou entedimento */

-- Olhando tabele customer
SELECT * FROM customer;

--Alias
SELECT customer_id AS CODIGO_CLIENTE
FROM
	customer;
	
SELECT SUM(amount) AS net_rev
from
	payment;
	
SELECT customer_id, SUM(amount) AS total_amount
FROM
	payment
GROUP BY
	customer_id;

SELECT COUNT(*) AS REGISTROS_CIDADES
FROM
	city;
