-- Good Visual explanation: https://blog.codinghorror.com/a-visual-explanation-of-sql-joins/
--BASIC SINTAX
/* 


SELECT * FROM TABLE_A ----- TABELA LEFT
INNER JOIN 
	TABLE_B  ON TABLE_A.NAME = TALBE_B.NAME
---------------------
	
SELECT * FROM TABLE_A ----- TABELA LEFT
INNER JOIN  TABLE_B -----> TABELA RIGHT 
ON TABLE_A.NAME = TALBE_B.NAME
	
---------------------

SELECT * FROM TABLE_B ----- TABELA LEFT
INNER JOIN  TABLE_A -----> TABELA RIGHT
 ON TABLE_A.NAME = TALBE_B.NAME

*/

SELECT * FROM payment;
SELECT * FROM customer;

--basico
SELECT * FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

--Quando temos iguais nas tabelas, é necessário especificar com .tableX
SELECT payment_id,payment.customer_id,first_name
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;