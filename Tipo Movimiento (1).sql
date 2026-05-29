INSERT INTO TipoMovimientoDP (NombreTipo, EfectoStock)
VALUES 
('Compra a Proveedor', 'Ingreso'),
('Venta Comercial', 'Salida'),
('Devolución de Cliente', 'Ingreso'),
('Merma / Producto Dañado', 'Salida'),
('Ajuste de Inventario (+)', 'Ingreso'),
('Ajuste de Inventario (-)', 'Salida');

SELECT * FROM TipoMovimientoDP;
