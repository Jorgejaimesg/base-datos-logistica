## LOGISTICA DE ENVIOS 
Como una firma de consultoría que se especializa en el desarrollo de bases de datos, ha obtenido
una licitación para el desarrollo de un modelo de datos y un sistema de gestión de distribución de
paquetes para un proveedor de logística cuya operación es a nivel nacional e internacional con
sucursales y operaciones similares a las de Amazon. Ofrece servicios de distribución de paquetes
a nivel nacional e internacional con sucursales en diferentes ciudades y países. El sistema se
ocupará de la gestión de paquetes, el seguimiento de envíos, la información de los clientes, el
control de sucursales, vehículos, chóferes y asistentes de distribución, así como.

# Estructura de base de datos
![alt text](ERDDiagram1.jpg)
## casos de uso primarios:

### Caso de Uso 1:  Registrar un Nuevo País

Un administrador desea agregar un nuevo país a la base de datos.

 ```sql

    INSERT INTO paises(pais_id, nombre) VALUES
    ('COL', 'Colombia'),
    ('USA', 'Estados Unidos'),
    ('MEX', 'México');

    +---------+----------------+
    | pais_id | nombre         |
    +---------+----------------+
    | COL     | Colombia       |
    | MEX     | México         |
    | USA     | Estados Unidos |
    +---------+----------------+

 ```

 ### Caso de Uso 2: Registrar una Nueva Ciudad

 Un administrador desea agregar una nueva ciudad asociada a un país existente.

 ```sql
    INSERT INTO ciudades(nombre, pais_id) VALUES
    ('Bogotá', 'COL'),
    ('Medellín', 'COL'),
    ('New York', 'USA'),
    ('Los Angeles', 'USA'),
    ('Ciudad de México', 'MEX');

    +-----------+-------------------+---------+
    | ciudad_id | nombre            | pais_id |
    +-----------+-------------------+---------+
    |         1 | Bogotá            | COL     |
    |         2 | Medellín          | COL     |
    |         3 | New York          | USA     |
    |         4 | Los Angeles       | USA     |
    |         5 | Ciudad de México  | MEX     |
    +-----------+-------------------+---------+
  ```
### Caso de Uso 3: Registrar una Nueva Sucursal
Un administrador desea agregar una nueva sucursal asociada a una ciudad
existente.
```sql

```
### Caso de Uso 4: Registrar un Nuevo Cliente
Un administrador desea registrar un nuevo cliente en la base de datos.
```sql

```
### Caso de Uso 5: Registrar un Nuevo Teléfono para un Cliente
Un administrador desea agregar un número de teléfono para un cliente existente.
```sql

```
### Caso de Uso 6: Registrar un Nuevo Paquete
Un administrador desea registrar un nuevo paquete en la base de datos.
```sql

```
### Caso de Uso 7: Registrar un Nuevo Envío
Un administrador desea registrar un nuevo envío, asociando un cliente, paquete, ruta y sucursal.
```sql

```
### Caso de Uso 8: Registrar un Nuevo Vehículo
Un administrador desea agregar un nuevo vehículo a la base de datos.
```sql

```
### Caso de Uso 9: Registrar un Nuevo Conductor
Un administrador desea agregar un nuevo conductor a la base de datos.
```sql

```
### Caso de Uso 10: Registrar un Nuevo Teléfono para un Conductor
Un administrador desea agregar un número de teléfono para un conductor
existente.
```sql

```
### Caso de Uso 11: Asignar un Conductor a una Ruta y un Vehículo
Un administrador desea asignar un conductor a una ruta específica utilizando un vehículo.
```sql

```
### Caso de Uso 12: Registrar un Nuevo Auxiliar
Un administrador desea agregar un nuevo auxiliar de reparto a la base de datos.
```sql

```
### Caso de Uso 13: Asignar un Auxiliar a una Ruta
Un administrador desea asignar un auxiliar de reparto a una ruta específica.
```sql

```
### Caso de Uso 14: Registrar un Evento de Seguimiento para un Paquete
Un administrador desea registrar un evento de seguimiento para un paquete.
```sql

```
### Caso de Uso 15: Generar un Reporte de Envíos por Cliente
Un administrador desea generar un reporte de todos los envíos realizados por un cliente específico.
```sql

```
### Caso de Uso 16: Actualizar el Estado de un Paquete
Un administrador desea actualizar el estado de un paquete específico.
```sql

```
### Caso de Uso 17: Rastrear la Ubicación Actual de un Paquete
Un administrador desea rastrear la ubicación actual de un paquete específico.
```sql

```