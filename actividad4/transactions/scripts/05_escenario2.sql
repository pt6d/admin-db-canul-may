USE practica4;

SELECT * FROM producto WHERE id_producto = 2;

START TRANSACTION;

INSERT INTO compras (total)
VALUES (4500.00);

SET @id_compra = LAST_INSERT_ID();

SELECT * FROM compras;

UPDATE producto
SET stock = stock - 10
WHERE id_producto = 2;

ROLLBACK;

SELECT * FROM producto WHERE id_producto = 2;
SELECT * FROM compras;