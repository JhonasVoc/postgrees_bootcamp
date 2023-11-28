-- During which months did payments occur?
-- Format to retun back de full month name

SELECT * FROM payment;

SELECT distinct(TO_CHAR(payment_date,'month')) as month
FROM
	payment;
	
	
--How many payments occurred on a Monday?
-- Dow retorna o dia da semana de 0-6
SELECT COUNT(*)
FROM
	payment
WHERE
	EXTRACT(dow from payment_date) = 1;
jjjj