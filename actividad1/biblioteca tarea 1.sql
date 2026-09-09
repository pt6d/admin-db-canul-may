CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY,
    nombre_usuario VARCHAR(100),
    email_usuario VARCHAR(150)
);

CREATE TABLE libros (
    id_libro INT PRIMARY KEY,
    titulo_libro VARCHAR(150),
    autor_libro VARCHAR(150)
);

CREATE TABLE prestamos (
    id_prestamo INT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_libro INT NOT NULL,
    fecha_prestamo DATE,
    FOREIGN KEY (id_usuario)
        REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_libro)
        REFERENCES libros(id_libro)
);

INSERT INTO usuarios (
    id_usuario,
    nombre_usuario,
    email_usuario
)
VALUES
    (1, 'Ana Gómez', 'ana@email.com'),
    (2, 'Carlos Ruíz', 'carlos@email.com');

INSERT INTO libros (
    id_libro,
    titulo_libro,
    autor_libro
)
VALUES
    (1, 'El Principito', 'Antoine de Saint-Exupéry'),
    (2, 'Cien Años de Soledad', 'Gabriel García Márquez');

INSERT INTO prestamos (
    id_prestamo,
    id_usuario,
    id_libro,
    fecha_prestamo
)
VALUES
    (5001, 1, 1, '2026-03-01'),
    (5002, 2, 2, '2026-03-02'),
    (5003, 1, 2, '2026-03-05');

SELECT * FROM usuarios;

SELECT * FROM libros;

SELECT * FROM prestamos;

SELECT
    p.id_prestamo,
    u.nombre_usuario,
    u.email_usuario,
    l.titulo_libro,
    l.autor_libro,
    p.fecha_prestamo
FROM prestamos AS p
INNER JOIN usuarios AS u
    ON p.id_usuario = u.id_usuario
INNER JOIN libros AS l
    ON p.id_libro = l.id_libro;
