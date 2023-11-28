--https://www.postgresql.org/docs/9.5/functions-math.html

select * from film;


SELECT ROUND(RENTAL_RATE/REPLACEMENT_COST,2)*100 AS PERCENT_COST
from film;