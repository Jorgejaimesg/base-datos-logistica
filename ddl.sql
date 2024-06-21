CREATE DATABASE IF NOT EXISTS logistica;
USE logistica;

CREATE TABLE paises (
    pais_id CHAR(3),
    nombre VARCHAR(25),
    CONSTRAINT PK_paises PRIMARY KEY (pais_id)
);

CREATE TABLE ciudades (
    ciudad_id INT AUTO_INCREMENT,
    nombre VARCHAR(25),
    pais_id VARCHAR(5),
    CONSTRAINT PK_ciudades PRIMARY KEY (ciudad_id),
    CONSTRAINT FK_ciudades_paises FOREIGN KEY (pais_id) REFERENCES paises(pais_id)
);

CREATE TABLE sucursales (
    sucursal_id INT AUTO_INCREMENT,
    nombre VARCHAR(25),
    direccion VARCHAR(100),
    ciudad_id INT,
    CONSTRAINT PK_sucursales PRIMARY KEY (sucursal_id),
    CONSTRAINT FK_sucursales_ciudades FOREIGN KEY (ciudad_id) REFERENCES ciudades(ciudad_id)
);

CREATE TABLE marca_vehiculo (
    marca_vehiculo_id INT AUTO_INCREMENT,
    nombre VARCHAR(30),
    CONSTRAINT PK_marca_vehiculo PRIMARY KEY (marca_vehiculo_id)
);

CREATE TABLE tipo_vehiculo (
    tipov_id INT AUTO_INCREMENT,
    modelo VARCHAR(25),
    descripcion VARCHAR(25),
    marca_vehiculo_id INT,
    CONSTRAINT PK_tipo_vehiculo PRIMARY KEY (tipov_id),
    CONSTRAINT FK_tipo_vehiculo_marca FOREIGN KEY (marca_vehiculo_id) REFERENCES marca_vehiculo(marca_vehiculo_id)
);

CREATE TABLE vehiculos (
    vehiculo_id VARCHAR(10),
    capacidad_carga DECIMAL(10,2),
    tipov_id INT,
    sucursal_id INT,
    CONSTRAINT PK_vehiculos PRIMARY KEY (vehiculo_id),
    CONSTRAINT FK_vehiculos_tipo FOREIGN KEY (tipov_id) REFERENCES tipo_vehiculo(tipov_id),
    CONSTRAINT FK_vehiculos_sucursales FOREIGN KEY (sucursal_id) REFERENCES sucursales(sucursal_id)
);

CREATE TABLE conductores (
    conductor_id VARCHAR(20),
    nombre VARCHAR(30),
    sucursal_id INT,
    CONSTRAINT PK_conductores PRIMARY KEY (conductor_id),
    CONSTRAINT FK_conductores_sucursales FOREIGN KEY (sucursal_id) REFERENCES sucursales(sucursal_id)
);

CREATE TABLE telefonos_conductores (
    numero VARCHAR(15),
    conductor_id VARCHAR(20),
    CONSTRAINT PK_telefonos_conductores PRIMARY KEY (numero, conductor_id),
    CONSTRAINT FK_telefonos_conductores FOREIGN KEY (conductor_id) REFERENCES conductores(conductor_id)
);

CREATE TABLE rutas (
    ruta_id INT AUTO_INCREMENT,
    descripcion TEXT,
    CONSTRAINT PK_rutas PRIMARY KEY (ruta_id)
);

CREATE TABLE conductores_rutas (
    conductor_id VARCHAR(20),
    vehiculo_id VARCHAR(10),
    ruta_id INT,
    fecha_ruta DATE,
    CONSTRAINT PK_conductores_rutas PRIMARY KEY (fecha_ruta),
    CONSTRAINT FK_conductores_rutas_conductores FOREIGN KEY (conductor_id) REFERENCES conductores(conductor_id),
    CONSTRAINT FK_conductores_rutas_vehiculos FOREIGN KEY (vehiculo_id) REFERENCES vehiculos(vehiculo_id),
    CONSTRAINT FK_conductores_rutas_rutas FOREIGN KEY (ruta_id) REFERENCES rutas(ruta_id)
);

CREATE TABLE auxiliares (
    auxiliar_id VARCHAR(20),
    nombre VARCHAR(30),
    CONSTRAINT PK_auxiliares PRIMARY KEY (auxiliar_id)
);

CREATE TABLE telefonos_auxiliar (
    numero VARCHAR(15),
    auxiliar_id VARCHAR(20),
    CONSTRAINT PK_telefonos_auxiliar PRIMARY KEY (numero, auxiliar_id),
    CONSTRAINT FK_telefonos_auxiliar FOREIGN KEY (auxiliar_id) REFERENCES auxiliares(auxiliar_id)
);

CREATE TABLE ruta_auxiliares (
    ruta_id INT,
    auxiliar_id VARCHAR(20),
    CONSTRAINT PK_ruta_auxiliares PRIMARY KEY (ruta_id, auxiliar_id),
    CONSTRAINT FK_ruta_auxiliares_rutas FOREIGN KEY (ruta_id) REFERENCES rutas(ruta_id),
    CONSTRAINT FK_ruta_auxiliares_auxiliares FOREIGN KEY (auxiliar_id) REFERENCES auxiliares(auxiliar_id)
);

CREATE TABLE clientes (
    cliente_id VARCHAR(20),
    nombre VARCHAR(35),
    email VARCHAR(50),
    direccion VARCHAR(100),
    CONSTRAINT PK_clientes PRIMARY KEY (cliente_id)
);

CREATE TABLE telefonos_clientes (
    cliente_id VARCHAR(20),
    numero VARCHAR(20),
    CONSTRAINT PK_telefonos_clientes PRIMARY KEY (cliente_id, numero),
    CONSTRAINT FK_telefonos_clientes FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

CREATE TABLE tipo_servicio (
    tipo_servicio_id INT AUTO_INCREMENT,
    descripcion VARCHAR(15),
    CONSTRAINT PK_tipo_servicio PRIMARY KEY (tipo_servicio_id)
);

CREATE TABLE paquetes (
    paquete_id INT AUTO_INCREMENT,
    peso DECIMAL(10,2),
    contenido TEXT,
    valor_declarado DECIMAL(10,2),
    tipo_servicio_id INT,
    largo DECIMAL(10,2),
    ancho DECIMAL(10,2),
    alto DECIMAL(10,2),
    CONSTRAINT PK_paquetes PRIMARY KEY (paquete_id),
    CONSTRAINT FK_paquetes_tipo_servicio FOREIGN KEY (tipo_servicio_id) REFERENCES tipo_servicio(tipo_servicio_id)
);

CREATE TABLE envios (
    envio_id INT AUTO_INCREMENT,
    envio_fecha DATE,
    destino VARCHAR(100),
    cliente_id VARCHAR(20),
    paquete_id INT,
    ruta_id INT,
    CONSTRAINT PK_envios PRIMARY KEY (envio_id),
    CONSTRAINT FK_envios_clientes FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    CONSTRAINT FK_envios_paquetes FOREIGN KEY (paquete_id) REFERENCES paquetes(paquete_id),
    CONSTRAINT FK_envios_rutas FOREIGN KEY (ruta_id) REFERENCES rutas(ruta_id)
);

CREATE TABLE estados (
    estado_id INT AUTO_INCREMENT,
    descripcion VARCHAR(20),
    CONSTRAINT PK_estados PRIMARY KEY (estado_id)
);

CREATE TABLE seguimiento (
    seguimiento_id INT AUTO_INCREMENT,
    ubicacion TEXT,
    fecha_hora TIMESTAMP,
    paquete_id INT,
    estado_id INT,
    CONSTRAINT PK_seguimiento PRIMARY KEY (seguimiento_id),
    CONSTRAINT FK_seguimiento_paquetes FOREIGN KEY (paquete_id) REFERENCES paquetes(paquete_id),
    CONSTRAINT FK_seguimiento_estados FOREIGN KEY (estado_id) REFERENCES estados(estado_id)
);


