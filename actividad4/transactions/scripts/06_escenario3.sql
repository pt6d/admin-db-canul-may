USE practica4;

SELECT * FROM producto WHERE id_producto = 3;

START TRANSACTION;

INSERT INTO compras (total)
VALUES (3500.00);

SET @id_compra = LAST_INSERT_ID();

UPDATE producto
SET stock = stock - 1
WHERE id_producto = 3;

INSERT INTO detalle_compra (
    id_compra,
    id_producto,
    cantidad,
    precio_unitario
)
VALUES (
    @id_compra,
    3,
    1,
    3500.00
);

SELECT * FROM producto WHERE id_producto = 3;
SELECT * FROM compras;
SELECT * FROM detalle_compra;

INSERT INTO pagos (
    id_compra,
    monto
)
VALUES (
    @id_compra,
    0.00
);

ROLLBACK;

SELECT * FROM producto WHERE id_producto = 3;
SELECT * FROM compras;
SELECT * FROM detalle_compra;
SELECT * FROM pagos;