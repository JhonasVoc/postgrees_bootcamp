-- Basico de between com payment
SELECT * FROM payment
WHERE AMOUNT BETWEEN 8 AND 9;

SELECT COUNT(*) FROM payment
WHERE AMOUNT BETWEEN 8 AND 9;

-- USANDO NOT BETWEEN
SELECT COUNT(*) FROM payment
WHERE AMOUNT NOT BETWEEN 8 AND 9;

-- BETWEEN COM DATE
SELECT * FROM payment
WHERE
	payment_date BETWEEN '2007-02-01' AND '2007-02-15';

SELECT COUNT(*) FROM payment
WHERE
	payment_date BETWEEN '2007-02-01' AND '2007-02-15';
/* Quando colocamos o dia 14, esperavamos ver os dados, mas
 não temos nenhum retorno, isso acontece pois ele considera apenas
  00:00:00*/
SELECT COUNT(*) FROM payment
WHERE
	payment_date BETWEEN '2007-02-01' AND '2007-02-14';