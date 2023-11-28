SELECT * FROM customer;

--Ordenando os dados de custormer pelo nome dos clientes
SELECT * FROM customer
ORDER BY
	first_name ASC;

SELECT * FROM customer
ORDER BY
	first_name DESC;
	
--Ordenando por codigo de loja e nome
SELECT 
	store_id,first_name, last_name
FROM
	customer
ORDER BY 
	store_id,first_name;
-- Também é possivel especificar a ordenação nos campos
SELECT 
	store_id,first_name, last_name
FROM
	customer
ORDER BY 
	store_id,first_name DESC;


-- Na tabela film
SELECT * FROM film;

--Ordenando os dados pelo titulo, em ordem ASC E DESC
SELECT * FROM film
ORDER BY
	title ASC;
	
SELECT * FROM film
ORDER BY
	title DESC;
	
--Combinando WHERE e ORDER BY
SELECT * FROM film
WHERE
	rating = 'R'
ORDER BY
	rental_rate;
