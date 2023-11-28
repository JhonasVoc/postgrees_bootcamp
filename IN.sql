-- Basico visual
/*  SELECT COLOR FROM TABLE
	WHERE COLOR NOT IN ('red','blue')*/


-- IN na tabela payment
SELECT * FROM payment
LIMIT 5;

SELECT * FROM payment
WHERE amount IN (0.99, 1.98,1.99);

SELECT * FROM payment
WHERE amount NOT IN (0.99, 1.98,1.99);

SELECT COUNT(*) FROM payment
WHERE amount IN (0.99, 1.98,1.99);


SELECT COUNT(*) FROM payment
WHERE amount NOT IN (0.99, 1.98,1.99);

-- IN na tabela de customer
SELECT * FROM customer
WHERE first_name in ('John','Jake','Julie');