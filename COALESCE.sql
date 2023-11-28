--Coalesce é util quando temos  um comando em uma tabela que possui valore nulos.
--Assim podemos substituir por outro valor.
-- Por exemplo, se temos uma tabela com Preço e desconto, mas queremos ve ro preço final
-- Mas em desconsto temos valor nulos

/* normalmente teriamos essa query:
SELECT
	item, (price - discount) as final
FROM
	table;
	
POREM, SE O DESCONTO FOR NULO, PRECISAMOS AJUSTAR;

SELECT
	item, (price - COALESCE(discount,0)) as final
FROM
	talbe;
