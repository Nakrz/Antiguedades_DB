# Base de datos de Antiguedades



### Modelo Conceptual

**Pais**

id

nombre



**Ciudad**

id

nombre

id_pais



**Rol**

id

nombre



**Disponibilidad**

id

nombre



**Categorias**

id

nombre



**Administrador**

id

nombre

apellido

correo



**Cliente**

id_cliente

nombre

apellido

correo

telefono

rol



**Antiguedades**

id

origen

epoca

estado_conservacion

precio

descripcion

id_admin



**Transacciones**

id_transaccion

id_antiguedad

id_cliente

id_admin

fecha_transaccion

tipo_transaccion

cantidad



# DER



![antiguedades_db](C:\Users\andre\OneDrive\Desktop\PUSH-UP\Antiguedades_DB\antiguedades_db.png)





## Consultas para la Base de Datos del Negocio de Antiguedades



**Consulta para listar todas las antigüedades disponibles para la venta:**

**"Obtén una lista de todas las piezas antiguas que están actualmente disponibles para la**
**venta, incluyendo el nombre de la pieza, su categoría, precio y estado de conservación."**

```sql
SELECT a.id_antiguedad, a.descripcion AS nombre_pieza, c.nombre_categoria AS categoria, a.precio, a.estado_conservacion
FROM antiguedades AS a
JOIN categorias AS c ON a.id_categoria = c.id_categoria
JOIN disponibilidad AS d ON a.id_disponibilidad = d.id_disponibilidad
WHERE d.nombre = 'Disponible';
```



**Consulta para buscar antigüedades por categoría y rango de precio:**

**"Busca todas las antigüedades dentro de una categoría específica (por ejemplo, 'Muebles')**
**que tengan un precio dentro de un rango determinado (por ejemplo, entre 500 y 2000**
**dólares)."**

```sql
SELECT a.id_antiguedad, a.descripcion AS nombre_pieza, c.nombre_categoria AS categoria, a.precio
FROM antiguedades AS a
JOIN categorias AS c ON a.id_categoria = c.id_categoria
WHERE c.nombre_categoria = 'Arte' AND a.precio BETWEEN 500 AND 2000;
```



**Consulta para mostrar el historial de ventas de un cliente específico:**

**"Muestra todas las piezas antiguas que un cliente específico ha vendido, incluyendo la fecha**
**de la venta, el precio de venta y el comprador."**

```sql
SELECT t.fecha_transaccion, a.descripcion AS nombre_pieza, t.tipo_transaccion, t.cantidad, c.nombre_cliente AS cliente
FROM transacciones AS t
JOIN antiguedades AS a ON t.id_antiguedad = a.id_antiguedad
JOIN cliente AS c ON t.id_cliente = c.id_cliente
WHERE t.id_cliente = 1;
```



**Consulta para obtener el total de ventas realizadas en un periodo de tiempo:**

**"Calcula el total de ventas realizadas en un período específico, por ejemplo, durante el último**
**mes."**

```sql
SELECT SUM(a.precio * t.cantidad) AS total_ventas
FROM transacciones AS t
JOIN antiguedades AS a ON t.id_antiguedad = a.id_antiguedad
WHERE t.tipo_transaccion = 'Compra' AND t.fecha_transaccion BETWEEN '2018-01-01' AND '2018-10-31';
```



**Consulta para encontrar los clientes más activos (con más compras realizadas):**

**"Identifica los clientes que han realizado la mayor cantidad de compras en la plataforma."**

```sql
SELECT c.id_cliente, c.nombre_cliente, c.apellido_cliente, COUNT(t.id_transaccion) AS cantidad_compras
FROM transacciones AS t
JOIN cliente AS c ON t.id_cliente = c.id_cliente
WHERE t.tipo_transaccion = 'Compra'
GROUP BY c.id_cliente
ORDER BY cantidad_compras DESC
LIMIT 3;
```



**Consulta para listar las antigüedades más populares por número de visitas o consultas:**

**"Muestra las piezas antiguas que han recibido la mayor cantidad de visitas o consultas por**
**parte de los usuarios.**

```

```



**Consulta para listar las antigüedades vendidas en un rango de fechas específico:**

**"Obtén una lista de todas las piezas antiguas que se han vendido dentro de un rango de**
**fechas específico, incluyendo la información del vendedor y comprador."**

```sql
SELECT a.id_antiguedad, a.descripcion AS nombre_pieza, t.fecha_transaccion, c.nombre_cliente AS comprador
FROM transacciones AS t
JOIN antiguedades AS a ON t.id_antiguedad = a.id_antiguedad
JOIN cliente AS c ON t.id_cliente = c.id_cliente
WHERE t.tipo_transaccion = 'Venta'AND t.fecha_transaccion BETWEEN '2018-01-01' AND '2018-12-31'
```



**Consulta para obtener un informe de inventario actual:**

**"Genera un informe del inventario actual de antigüedades disponibles para la venta,**
**mostrando la cantidad de artículos por categoría."**

```sql
SELECT c.nombre_categoria AS categoria, COUNT(a.id_antiguedad) AS cantidad_articulos
FROM antiguedades AS a
JOIN categorias AS c ON a.id_categoria = c.id_categoria
JOIN disponibilidad AS d ON a.id_disponibilidad = d.id_disponibilidad
WHERE d.nombre = 'Disponible'
GROUP BY c.nombre_categoria;
```



