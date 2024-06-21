-- insertar los tipos de estados en la tabla estados

INSERT INTO estados(descripcion) VALUES 
('recibido'),
('en transito'),
('entregado'),
('retenido aduanas');


-- insertar los tipos de servicio

INSERT INTO tipo_servicio(descripcion) VALUES 
('nacional'),
('internacional'),
('expres'),
('estandar');

-- Insertar datos en la tabla paises
INSERT INTO paises (pais_id, nombre) VALUES 
('COL', 'Colombia'),
('USA', 'Estados Unidos'),
('ARG', 'Argentina'),
('BRA', 'Brasil'),
('CHL', 'Chile');

-- Insertar datos en la tabla ciudades
INSERT INTO ciudades (nombre, pais_id) VALUES 
('Bogotá', 'COL'),
('Medellín', 'COL'),
('Buenos Aires', 'ARG'),
('Santiago', 'CHL'),
('São Paulo', 'BRA');

-- Insertar datos en la tabla sucursales
INSERT INTO sucursales (nombre, direccion, ciudad_id) VALUES 
('Sucursal Bogotá Centro', 'Calle 123 #45-67', 1),
('Sucursal Medellín Norte', 'Carrera 89 #34-56', 2),
('Sucursal Buenos Aires', 'Av. Corrientes 1234', 3),
('Sucursal Santiago Centro', 'Calle 456 #78-90', 4),
('Sucursal São Paulo', 'Rua Paulista 789', 5);

-- Insertar datos en la tabla marca_vehiculo
INSERT INTO marca_vehiculo (nombre) VALUES 
('Toyota'),
('Nissan'),
('Chevrolet'),
('Ford'),
('Mercedes');

-- Insertar datos en la tabla tipo_vehiculo
INSERT INTO tipo_vehiculo (modelo, descripcion, marca_vehiculo_id) VALUES 
('Hilux', 'Pickup', 1),
('Navara', 'Pickup', 2),
('Silverado', 'Pickup', 3),
('F-150', 'Pickup', 4),
('Sprinter', 'Van', 5);

-- Insertar datos en la tabla vehiculos
INSERT INTO vehiculos (vehiculo_id, capacidad_carga, tipov_id, sucursal_id) VALUES 
('MVN374', 1000.00, 1, 1),
('FHG123', 1500.00, 2, 2),
('QWE456', 2000.00, 3, 3),
('TYU789', 2500.00, 4, 4),
('ASD012', 3000.00, 5, 5);

-- Insertar datos en la tabla conductores
INSERT INTO conductores (conductor_id, nombre, sucursal_id) VALUES 
('12345678A', 'Juan Pérez', 1),
('87654321B', 'Luis Gómez', 2),
('11223344C', 'Carlos Ramírez', 3),
('44332211D', 'Ana Torres', 4),
('55667788E', 'María López', 5);

-- Insertar datos en la tabla telefonos_conductores
INSERT INTO telefonos_conductores (numero, conductor_id) VALUES 
('3001234567', '12345678A'),
('3012345678', '87654321B'),
('3023456789', '11223344C'),
('3034567890', '44332211D'),
('3045678901', '55667788E');

-- Insertar datos en la tabla rutas
INSERT INTO rutas (descripcion) VALUES 
('Ruta 1: Bogotá a Medellín'),
('Ruta 2: Buenos Aires a Santiago'),
('Ruta 3: São Paulo a Buenos Aires'),
('Ruta 4: Santiago a São Paulo'),
('Ruta 5: Medellín a Bogotá');

-- Insertar datos en la tabla conductores_rutas
INSERT INTO conductores_rutas (conductor_id, vehiculo_id, ruta_id, fecha_ruta) VALUES 
('12345678A', 'MVN374', 1, '2023-01-01'),
('87654321B', 'FHG123', 2, '2023-01-02'),
('11223344C', 'QWE456', 3, '2023-01-03'),
('44332211D', 'TYU789', 4, '2023-01-04'),
('55667788E', 'ASD012', 5, '2023-01-05');

-- Insertar datos en la tabla auxiliares
INSERT INTO auxiliares (auxiliar_id, nombre) VALUES 
('23456789A', 'Pedro Sánchez'),
('98765432B', 'Marta Díaz'),
('22334455C', 'Luisa Fernández'),
('55443322D', 'Jorge Ortiz'),
('66778899E', 'Clara Rojas');

-- Insertar datos en la tabla telefonos_auxiliar
INSERT INTO telefonos_auxiliar (numero, auxiliar_id) VALUES 
('3056789012', '23456789A'),
('3067890123', '98765432B'),
('3078901234', '22334455C'),
('3089012345', '55443322D'),
('3090123456', '66778899E');

-- Insertar datos en la tabla ruta_auxiliares
INSERT INTO ruta_auxiliares (ruta_id, auxiliar_id) VALUES 
(1, '23456789A'),
(2, '98765432B'),
(3, '22334455C'),
(4, '55443322D'),
(5, '66778899E');

-- Insertar datos en la tabla clientes
INSERT INTO clientes (cliente_id, nombre, email, direccion) VALUES 
('34567890A', 'Laura Martínez', 'laura.martinez@example.com', 'Calle 789 #12-34'),
('09876543B', 'Daniel Castillo', 'daniel.castillo@example.com', 'Carrera 56 #78-90'),
('33445566C', 'Sara González', 'sara.gonzalez@example.com', 'Av. Libertador 123'),
('66554433D', 'Miguel Herrera', 'miguel.herrera@example.com', 'Calle 98 #76-54'),
('77889900E', 'Sofía Ramírez', 'sofia.ramirez@example.com', 'Rua Brasil 456');

-- Insertar datos en la tabla telefonos_clientes
INSERT INTO telefonos_clientes (cliente_id, numero) VALUES 
('34567890A', '3101234567'),
('09876543B', '3112345678'),
('33445566C', '3123456789'),
('66554433D', '3134567890'),
('77889900E', '3145678901');

-- Insertar datos en la tabla paquetes
INSERT INTO paquetes (peso, contenido, valor_declarado, tipo_servicio_id, largo, ancho, alto) VALUES 
(5.00, 'Libros', 100.00, 1, 30.00, 20.00, 10.00),
(10.00, 'Ropa', 200.00, 2, 40.00, 30.00, 20.00),
(15.00, 'Electrónica', 500.00, 3, 50.00, 40.00, 30.00),
(20.00, 'Muebles', 1000.00, 4, 60.00, 50.00, 40.00),
(25.00, 'Alimentos', 150.00, 1, 70.00, 60.00, 50.00);

-- Insertar datos en la tabla envios
INSERT INTO envios (envio_fecha, destino, cliente_id, paquete_id, ruta_id) VALUES 
('2023-01-10', 'Medellín', '34567890A', 1, 1),
('2023-01-15', 'Santiago', '09876543B', 2, 2),
('2023-01-20', 'Buenos Aires', '33445566C', 3, 3),
('2023-01-25', 'São Paulo', '66554433D', 4, 4),
('2023-01-30', 'Bogotá', '77889900E', 5, 5);

-- Insertar datos en la tabla seguimiento
INSERT INTO seguimiento (ubicacion, fecha_hora, paquete_id, estado_id) VALUES 
('Bogotá', '2023-01-01 08:00:00', 1, 1),
('Medellín', '2023-01-02 12:00:00', 1, 2),
('Medellín', '2023-01-02 18:00:00', 1, 3),
('Buenos Aires', '2023-01-10 08:00:00', 2, 1),
('Santiago', '2023-01-15 12:00:00', 2, 2),
('Santiago', '2023-01-15 18:00:00', 2, 3),
('São Paulo', '2023-01-20 08:00:00', 3, 1),
('Buenos Aires', '2023-01-25 12:00:00', 3, 2),
('Buenos Aires', '2023-01-25 18:00:00', 3, 3),
('Santiago', '2023-01-30 08:00:00', 4, 1),
('São Paulo', '2023-02-02 12:00:00', 4, 2),
('São Paulo', '2023-02-02 18:00:00', 4, 3),
('Medellín', '2023-02-10 08:00:00', 5, 1),
('Bogotá', '2023-02-12 12:00:00', 5, 2),
('Bogotá', '2023-02-12 18:00:00', 5, 3);