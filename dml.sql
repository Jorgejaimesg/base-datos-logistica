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
INSERT INTO paises(pais_id, nombre) VALUES
('COL', 'Colombia'),
('USA', 'Estados Unidos'),
('MEX', 'México');

-- Insertar datos en la tabla ciudades
INSERT INTO ciudades(nombre, pais_id) VALUES
('Bogotá', 'COL'),
('Medellín', 'COL'),
('New York', 'USA'),
('Los Angeles', 'USA'),
('Ciudad de México', 'MEX');

-- Insertar datos en la tabla sucursales
INSERT INTO sucursales(nombre, direccion, ciudad_id) VALUES
('Sucursal 1', 'Calle 123, Bogotá', 1),
('Sucursal 2', 'Carrera 45, Medellín', 2),
('Sucursal 3', '5th Avenue, New York', 3),
('Sucursal 4', 'Sunset Blvd, Los Angeles', 4),
('Sucursal 5', 'Avenida Reforma, Ciudad de México', 5);

-- Insertar datos en la tabla marca_vehiculo
INSERT INTO marca_vehiculo(nombre) VALUES
('Toyota'),
('Ford'),
('Chevrolet');

-- Insertar datos en la tabla tipo_vehiculo
INSERT INTO tipo_vehiculo(modelo, descripcion, marca_vehiculo_id) VALUES
('Hilux', 'Pick-up', 1),
('F-150', 'Pick-up', 2),
('Silverado', 'Pick-up', 3);

-- Insertar datos en la tabla vehiculos
INSERT INTO vehiculos(vehiculo_id, capacidad_carga, tipov_id, sucursal_id) VALUES
('ASD123', 1500.00, 1, 1), -- Placa de Colombia
('BSD124', 1500.00, 2, 2), -- Placa de Colombia
('XYZ789', 2000.00, 3, 3), -- Placa de USA
('ABC456', 2000.00, 1, 4), -- Placa de USA
('QWE567', 1000.00, 2, 5); -- Placa de México

-- Insertar datos en la tabla conductores
INSERT INTO conductores(conductor_id, nombre, sucursal_id) VALUES
('123456789', 'Carlos Pérez', 1), -- DNI de Colombia
('987654321', 'Juan Gómez', 2),  -- DNI de Colombia
('456123789', 'John Doe', 3),    -- DNI de USA
('789456123', 'Jane Smith', 4),  -- DNI de USA
('321654987', 'Luis Rodríguez', 5); -- DNI de México

-- Insertar datos en la tabla telefonos_conductores
INSERT INTO telefonos_conductores(numero, conductor_id) VALUES
('3001234567', '123456789'), -- Teléfono de Carlos Pérez
('3101234567', '987654321'), -- Teléfono de Juan Gómez
('5551234567', '456123789'), -- Teléfono de John Doe
('5559876543', '789456123'), -- Teléfono de Jane Smith
('5512345678', '321654987'); -- Teléfono de Luis Rodríguez

-- Insertar datos en la tabla rutas
INSERT INTO rutas(descripcion, sucursal_id) VALUES
('Ruta Bogotá-Medellín', 1),
('Ruta Medellín-Bogotá', 2),
('Ruta New York-Los Angeles', 3),
('Ruta Los Angeles-New York', 4),
('Ruta Ciudad de México-Bogotá', 5);

-- Insertar datos en la tabla conductores_rutas
INSERT INTO conductores_rutas(conductor_id, vehiculo_id, ruta_id, fecha_ruta) VALUES
('123456789', 'ASD123', 1, '2024-06-01'),
('987654321', 'BSD124', 2, '2024-06-02'),
('456123789', 'XYZ789', 3, '2024-06-03'),
('789456123', 'ABC456', 4, '2024-06-04'),
('321654987', 'QWE567', 5, '2024-06-05');

-- Insertar datos en la tabla auxiliares
INSERT INTO auxiliares(auxiliar_id, nombre) VALUES
('1122334455', 'Ana Martínez'), -- DNI
('2233445566', 'Luis Castro'),  -- DNI
('3344556677', 'Maria López'),  -- DNI
('4455667788', 'James Brown'),  -- DNI
('5566778899', 'Patricia White'); -- DNI

-- Insertar datos en la tabla telefonos_auxiliar
INSERT INTO telefonos_auxiliar(numero, auxiliar_id) VALUES
('3009876543', '1122334455'), -- Teléfono de Ana Martínez
('3109876543', '2233445566'), -- Teléfono de Luis Castro
('5559876543', '3344556677'), -- Teléfono de Maria López
('5558765432', '4455667788'), -- Teléfono de James Brown
('5512345678', '5566778899'); -- Teléfono de Patricia White

-- Insertar datos en la tabla ruta_auxiliares
INSERT INTO ruta_auxiliares(ruta_id, auxiliar_id) VALUES
(1, '1122334455'), -- Ruta 1 con Ana Martínez
(2, '2233445566'), -- Ruta 2 con Luis Castro
(3, '3344556677'), -- Ruta 3 con Maria López
(4, '4455667788'), -- Ruta 4 con James Brown
(5, '5566778899'); -- Ruta 5 con Patricia White

-- Insertar datos en la tabla clientes
INSERT INTO clientes(cliente_id, nombre, email, direccion) VALUES
('1001001001', 'Empresa A', 'contacto@empresaa.com', 'Calle Falsa 123, Bogotá'), -- DNI
('1002002002', 'Empresa B', 'contacto@empresab.com', 'Avenida Siempre Viva 742, Medellín'), -- DNI
('2001001001', 'Empresa C', 'contacto@empresac.com', '123 Main St, New York'), -- DNI
('2002002002', 'Empresa D', 'contacto@empresad.com', '456 Elm St, Los Angeles'), -- DNI
('3001001001', 'Empresa E', 'contacto@empresae.com', 'Avenida Insurgentes 123, Ciudad de México'); -- DNI

-- Insertar datos en la tabla telefonos_clientes
INSERT INTO telefonos_clientes(cliente_id, numero) VALUES
('1001001001', '3001112222'), -- Teléfono de Empresa A
('1002002002', '3101112222'), -- Teléfono de Empresa B
('2001001001', '5551112222'), -- Teléfono de Empresa C
('2002002002', '5553334444'), -- Teléfono de Empresa D
('3001001001', '5511112222'); -- Teléfono de Empresa E

-- Insertar datos en la tabla paquetes
INSERT INTO paquetes(peso, contenido, valor_declarado, tipo_servicio_id, largo, ancho, alto) VALUES
(10.50, 'Electrónicos', 1500.00, 1, 50.00, 30.00, 20.00),
(5.75, 'Ropa', 500.00, 2, 40.00, 20.00, 10.00),
(20.00, 'Libros', 300.00, 3, 60.00, 40.00, 30.00),
(15.25, 'Juguetes', 200.00, 4, 70.00, 50.00, 40.00),
(8.00, 'Herramientas', 800.00, 1, 30.00, 20.00, 15.00);

-- Insertar datos en la tabla envios
INSERT INTO envios(envio_fecha, destino, cliente_id, paquete_id, ruta_id) VALUES
('2024-06-10', 'Calle 456, Medellín', '1001001001', 1, 1),
('2024-06-11', 'Carrera 78, Bogotá', '1002002002', 2, 2),
('2024-06-12', '789 Broadway, New York', '2001001001', 3, 3),
('2024-06-13', '101 Hollywood Blvd, Los Angeles', '2002002002', 4, 4),
('2024-06-14', 'Calle 789, Ciudad de México', '3001001001', 5, 5);

-- Insertar datos en la tabla seguimiento
INSERT INTO seguimiento(ubicacion, fecha_hora, paquete_id, estado_id) VALUES
('Bogotá', '2024-06-10 08:00:00', 1, 1), -- Recibido en Bogotá
('Medellín', '2024-06-11 10:00:00', 2, 1), -- Recibido en Medellín
('New York', '2024-06-12 08:00:00', 3, 1), -- Recibido en New York
('Los Angeles', '2024-06-13 11:00:00', 4, 1), -- Recibido en Los Angeles
('Ciudad de México', '2024-06-14 08:00:00', 5, 1); -- Recibido en Ciudad de México
