--BASIC SINTAX
/* SELECT * FROM TableB
FULL OUTER JOIN TableA
ON TableA.name = TableB.name;
*/
--Basicamente juntamos as duas tabelas, mesmo que não tenha match, sendo assim, temos campos nulos.

-- FULL OUTER JOIN with WHERE ( OPOSTO DO INNER JOIN)
/* SELECT * FROM TableB
FULL OUTER JOIN TableA
ON TableA.name = TableB.name
WHERE TableA.id ISNULL OR 
TableB.id ISNULL;
*/
SELECT * FROM payment;

SELECT * FROM customer
FULL OUTER JOIN payment
ON payment.customer_id = customer.customer_id;

-- Não tivemos retorno aqui, pois todos os clientes já fizeram uma transação.
SELECT * FROM customer
FULL OUTER JOIN payment
ON payment.customer_id = customer.customer_id
WHERE customer.customer_id ISNULL
OR  payment.payment_id ISNULL ;

-- podemos checar, retorno de 599
SELECT  COUNT(DISTINCT customer_id)  from customer;
SELECT  COUNT(DISTINCT customer_id)  from payment;

