CREATE DATABASE companyDB;

CREATE TABLE Cities (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Employees (
    code INT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    city_id INT FOREIGN KEY REFERENCES Cities(id),
    age INT,
    salary DECIMAL(10, 2),
    position VARCHAR(100) NOT NULL,
    years_in_company INT
);

INSERT INTO Cities (name) VALUES
('Bogotá'),
('Medellín'),
('Cali'),
('Barranquilla'),
('Cartagena'),
('Bucaramanga'),
('Pereira'),
('Santa Marta'),
('Cúcuta'),
('Ibagué'),
('Villavicencio'),
('Manizales'),
('Neiva'),
('Popayán'),
('Sincelejo'),
('Tunja'),
('Montería'),
('Quibdó'),
('Riohacha'),
('San Andrés'),
('Leticia');


INSERT INTO Employees (code, first_name, last_name, city_id, age, salary, position, years_in_company) VALUES
(1000000001, 'Juan', 'Pérez', 1, 30, 3000000, 'Desarrollador', 3),
(1000000002, 'Ana', 'Gómez', 2, 25, 2000000, 'Analista', 1),
(1000000003, 'Luis', 'Rodríguez', 3, 35, 3500000, 'Tester', 5),
(1000000004, 'María', 'Martínez', 4, 40, 4500000, 'Gerente de Proyectos', 8),
(1000000005, 'Carlos', 'García', 5, 29, 2800000, 'Desarrollador', 2),
(1000000006, 'Sofía', 'Hernández', 6, 33, 4000000, 'Analista', 4),
(1000000007, 'Andrés', 'López', 7, 27, 2500000, 'Diseñador', 1),
(1000000008, 'Valentina', 'Martín', 8, 21, 1300000, 'Desarrollador', 1),
(1000000009, 'Felipe', 'Sánchez', 9, 31, 3300000, 'Tester', 6),
(1000000010, 'Juliana', 'Torres', 10, 38, 4100000, 'Gerente de Producto', 7),
(1000000011, 'Diego', 'Cruz', 11, 36, 3900000, 'Desarrollador', 5),
(1000000012, 'Gabriela', 'Mendoza', 12, 24, 2100000, 'Analista', 2),
(1000000013, 'Ricardo', 'Vásquez', 13, 32, 3700000, 'Desarrollador', 4),
(1000000014, 'Laura', 'Ramírez', 14, 41, 4200000, 'Tester', 3),
(1000000015, 'Cristian', 'Salazar', 15, 22, 1400000, 'Diseñador', 2),
(1000000016, 'Natalia', 'Jiménez', 16, 34, 3600000, 'Desarrollador', 5),
(1000000017, 'Fernando', 'Bermúdez', 17, 29, 3000000, 'Analista', 2),
(1000000018, 'Cecilia', 'Salas', 18, 26, 2500000, 'Desarrollador', 3),
(1000000019, 'Javier', 'Rincón', 19, 37, 3800000, 'Gerente de Proyectos', 8),
(1000000020, 'Patricia', 'Beltrán', 20, 35, 3900000, 'Tester', 6),
(1000000021, 'Alberto', 'Calle', 1, 39, 4100000, 'Desarrollador', 4),
(1000000022, 'Camila', 'Hurtado', 2, 23, 1500000, 'Analista', 1),
(1000000023, 'Ricardo', 'Zapata', 3, 28, 2600000, 'Desarrollador', 2),
(1000000024, 'Luisa', 'Naranjo', 4, 32, 3400000, 'Tester', 5),
(1000000025, 'Eduardo', 'Patiño', 5, 31, 3200000, 'Gerente de Producto', 3),
(1000000026, 'Sara', 'Valenzuela', 6, 21, 1300000, 'Desarrollador', 1),
(1000000027, 'Samuel', 'Ocampo', 7, 38, 4400000, 'Analista', 8),
(1000000028, 'Felipe', 'Márquez', 8, 36, 3900000, 'Diseñador', 7),
(1000000029, 'Eliana', 'Ayala', 9, 24, 2000000, 'Desarrollador', 2),
(1000000030, 'Ricardo', 'Hernández', 10, 27, 2700000, 'Tester', 1),
(1000000031, 'Nicolás', 'Tabares', 11, 33, 3300000, 'Analista', 5),
(1000000032, 'Adriana', 'Melo', 12, 30, 3100000, 'Desarrollador', 4),
(1000000033, 'Iván', 'Córdoba', 13, 40, 4000000, 'Gerente de Proyectos', 6),
(1000000034, 'Silvia', 'Díaz', 14, 35, 3700000, 'Tester', 3),
(1000000035, 'Rafael', 'Quintero', 15, 42, 4200000, 'Desarrollador', 8),
(1000000036, 'Laura', 'Suárez', 16, 28, 2800000, 'Analista', 2),
(1000000037, 'Marco', 'Henao', 17, 39, 4500000, 'Diseñador', 5),
(1000000038, 'Ana', 'Mena', 18, 22, 1400000, 'Desarrollador', 1),
(1000000039, 'Julio', 'Bermúdez', 19, 26, 2500000, 'Analista', 3),
(1000000040, 'Gabriel', 'Bolaños', 20, 32, 3400000, 'Tester', 4),
(1000000041, 'Karla', 'Ortega', 1, 29, 3100000, 'Desarrollador', 2),
(1000000042, 'María', 'Ardila', 2, 38, 4300000, 'Gerente de Producto', 8),
(1000000043, 'Santiago', 'Becerra', 3, 25, 2300000, 'Desarrollador', 2),
(1000000044, 'Tatiana', 'Figueroa', 4, 41, 4100000, 'Analista', 7),
(1000000045, 'Diego', 'Serrano', 5, 33, 3500000, 'Tester', 5),
(1000000046, 'Ximena', 'Corredor', 6, 24, 2000000, 'Desarrollador', 1),
(1000000047, 'Pedro', 'Cáceres', 7, 30, 3000000, 'Diseñador', 3),
(1000000048, 'Carolina', 'Medina', 8, 35, 3600000, 'Desarrollador', 4);


