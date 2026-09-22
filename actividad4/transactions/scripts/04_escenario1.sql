USE practica4;

SELECT * FROM producto WHERE id_producto = 1;

START TRANSACTION;

INSERT INTO compras (total)
VALUES (1600.00);

SET @id_compra = LAST_INSERT_ID();

UPDATE producto
SET stock = stock - 2
WHERE id_producto = 1;

INSERT INTO detalle_compra (
    id_compra,
    id_producto,
    cantidad,
    precio_unitario
)
VALUES (
    @id_compra,
    1,
    2,
    800.00
);

INSERT INTO pagos (
    id_compra,
    monto
)
VALUES (
    @id_compra,
    1600.00
);

COMMIT;

SELECT * FROM producto WHERE id_producto = 1;
SELECT * FROM compras;
SELECT * FROM detalle_compra;
SELECT * FROM pagos;