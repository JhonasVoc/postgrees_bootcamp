--Um selfjoin é é uma consulta na qual uma tabela é unida a si mesma
-- São úteis para comparar  valores em uma coluna de linhas na mesma tabel
--Pode ser visto commo um join de duas copias da mesma tabela
--Sintax Básica
/*
SELECT tableA.col, tableB.col
FROM
	table as TableA
JOIN
	table as TableB ON
TableB.some_col = TableA.other_col 
*/

--EXEMPLO COM tabela film
SELECT f1.title, f2.title, f1.length, f2.length
FROM
	film as f1
JOIN
	film as f2 ON
f1.film_id = f2.film_id
AND f1.length = f2.length;