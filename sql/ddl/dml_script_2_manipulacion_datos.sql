-- DML para la tienda en linea
-- --------------------------

-- 1. INSERT: Insertar datos de ejemplo
INSERT INTO Clientes (nombre, apellido, direccion, correo_electronico) VALUES
('Juan', 'Perez', 'Calle Falsa 123', 'juan.perez@example.com'),
('Maria', 'Gomez', 'Av. Siempre Viva 456', 'maria.gomez@example.com');

INSERT INTO Productos (nombre, descripcion, precio) VALUES
('Laptop Gamer', 'Laptop con tarjeta grafica RTX 3080.', 1500.00),
('Monitor Curvo', 'Monitor de 27 pulgadas, 144Hz.', 300.00),
('Teclado Mecanico', 'Teclado retroiluminado RGB.', 80.00);

INSERT INTO Metodos_Pago (nombre_metodo) VALUES
('Tarjeta de Credito'),
('PayPal'),
('Transferencia Bancaria');

-- Crear un pedido para Juan Perez
INSERT INTO Pedidos (id_cliente, estado) VALUES
(1, 'En Proceso');

-- Detalle del pedido de Juan Perez
INSERT INTO Detalles_Pedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(1, 1, 1, 1500.00), -- Laptop
(1, 2, 1, 300.00); -- Monitor

-- 2. UPDATE: Actualizar la dirección de un cliente
UPDATE Clientes SET direccion = 'Nueva Calle 789' WHERE id_cliente = 1;

-- 3. DELETE: Eliminar un pedido no procesado (ej. Pedido 2)
-- Primero, crearemos un pedido de prueba que luego eliminaremos
INSERT INTO Pedidos (id_cliente, estado) VALUES (2, 'Cancelado');
-- Ahora lo eliminamos
DELETE FROM Pedidos WHERE id_pedido = 2 AND estado = 'Cancelado';