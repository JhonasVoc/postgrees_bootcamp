-- Uma View é um objecto database que uma seleção(query) armazenada
-- Pode ser acessada como uma tabela virtual
-- Podemos atualizar(update) views


CREATE VIEW customer_info as
SELECT first_name, last_name, address FROM customer
INNER JOIN address
ON	customer.address_id = address.address_id;

SELECT * FROM customer_info;

-- UPDATE
CREATE OR REPLACE VIEW customer_info as
SELECT first_name, last_name, address, district
FROM customer
INNER JOIN address
ON	customer.address_id = address.address_id;

--Alterando nome
ALTER VIEW customer_info rename to customer_informations;

SELECT * FROM customer_informations;
--Deletando
DROP VIEW IF EXISTS customer_info
