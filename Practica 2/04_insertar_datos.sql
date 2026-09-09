USE `canul-may`;

INSERT INTO clientes (documento, nombre_completo, telefono, correo)
VALUES
('CLI001', 'Carlos Ramirez', '9991112233', 'carlos.ramirez@email.com'),
('CLI002', 'Laura Martinez', '9992223344', 'laura.martinez@email.com'),
('CLI003', 'Miguel Hernandez', '9993334455', 'miguel.hernandez@email.com'),
('CLI004', 'Sofia Lopez', '9994445566', 'sofia.lopez@email.com'),
('CLI005', 'Daniel Torres', '9995556677', 'daniel.torres@email.com');

INSERT INTO veterinarios (documento, nombre_completo, especialidad, telefono)
VALUES
('VET001', 'Ana Garcia', 'Medicina General', '9996001001'),
('VET002', 'Roberto Sanchez', 'Cirugia Veterinaria', '9996001002'),
('VET003', 'Mariana Perez', 'Dermatologia Veterinaria', '9996001003'),
('VET004', 'Fernando Castillo', 'Cardiologia Veterinaria', '9996001004'),
('VET005', 'Patricia Gomez', 'Medicina Interna', '9996001005');

INSERT INTO mascotas (nombre, especie, raza, fecha_nacimiento, id_cliente)
VALUES
('Max', 'Perro', 'Labrador', '2021-03-15', 1),
('Luna', 'Gato', 'Siames', '2022-07-20', 2),
('Rocky', 'Perro', 'Bulldog', '2020-11-10', 3),
('Milo', 'Gato', 'Persa', '2023-01-05', 4),
('Nala', 'Perro', 'Golden Retriever', '2021-09-25', 5);

INSERT INTO medicamentos (codigo, nombre_comercial, laboratorio, precio_unitario)
VALUES
('MED001', 'Amoxicilina Vet', 'VetPharma', 120.50),
('MED002', 'Meloxicam Vet', 'AnimalCare', 95.00),
('MED003', 'Dermavet', 'PetHealth', 150.75),
('MED004', 'CardioPet', 'VetLife', 210.00),
('MED005', 'VitaminPet', 'AnimalPlus', 80.25);

INSERT INTO atenciones (fecha_hora, diagnostico, costo_base, id_mascota, id_veterinario)
VALUES
('2026-09-01 10:00:00', 'Infeccion respiratoria leve', 450.00, 1, 1),
('2026-09-02 11:30:00', 'Inflamacion articular', 500.00, 2, 2),
('2026-09-03 09:15:00', 'Dermatitis alergica', 480.00, 3, 3),
('2026-09-04 16:00:00', 'Arritmia cardiaca leve', 650.00, 4, 4),
('2026-09-05 13:45:00', 'Deficiencia vitaminica', 400.00, 5, 5);

INSERT INTO prescripciones (id_atencion, id_medicamento, cantidad, indicaciones)
VALUES
(1, 1, 10, '1 tableta cada 8 horas por 5 dias'),
(1, 5, 5, '1 tableta diaria por 5 dias'),
(2, 2, 7, '1 tableta cada 24 horas por 7 dias'),
(3, 3, 1, 'Aplicar en la zona afectada dos veces al dia'),
(3, 5, 10, '1 tableta diaria por 10 dias'),
(4, 4, 15, '1 tableta cada 12 horas por 15 dias'),
(5, 5, 30, '1 tableta diaria durante 30 dias');
