-- Consultas SQL para la tienda en linea
-- ------------------------------------

-- Ejemplo 1: Obtener todos los pedidos realizados por un cliente específico (Juan Perez)
-- Usamos JOIN para relacionar Clientes y Pedidos
SELECT
    C.nombre,
    C.apellido,
    P.id_pedido,
    P.fecha_pedido,
    P.estado
FROM
    Clientes C
JOIN
    Pedidos P ON C.id_cliente = P.id_cliente
WHERE
    C.correo_electronico = 'juan.perez@example.com';

-- Ejemplo 2: Calcular el valor total de cada pedido
-- Usamos JOIN, GROUP BY y SUM para agrupar y sumar
SELECT
    DP.id_pedido,
    SUM(DP.cantidad * DP.precio_unitario) AS valor_total_pedido
FROM
    Detalles_Pedido DP
GROUP BY
    DP.id_pedido;

-- Ejemplo 3: Obtener los productos más vendidos
-- Usamos JOIN, GROUP BY, SUM y ORDER BY
SELECT
    P.nombre AS nombre_producto,
    SUM(DP.cantidad) AS total_vendido
FROM
    Detalles_Pedido DP
JOIN
    Productos P ON DP.id_producto = P.id_producto
GROUP BY
    P.nombre
ORDER BY
    total_vendido DESC;