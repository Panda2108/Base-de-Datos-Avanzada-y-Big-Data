

-- LIMPIEZA DE TABLAS
USE DATAMART;
GO

-- Paso 1: Limpieza de tablas
DELETE FROM FactMovimientos;
IF @@ROWCOUNT <> 0 DBCC CHECKIDENT ('FactMovimientos', RESEED, 0);
GO

DELETE FROM DimProveedor;
IF @@ROWCOUNT <> 0 DBCC CHECKIDENT ('DimProveedor', RESEED, 0);
GO

DELETE FROM DimProducto;
IF @@ROWCOUNT <> 0 DBCC CHECKIDENT ('DimProducto', RESEED, 0);
GO

DELETE FROM DimUsuario;
IF @@ROWCOUNT <> 0 DBCC CHECKIDENT ('DimUsuario', RESEED, 0);
GO

DELETE FROM DimAlmacen;
IF @@ROWCOUNT <> 0 DBCC CHECKIDENT ('DimAlmacen', RESEED, 0);
GO

DELETE FROM DimTipoMovimiento;
IF @@ROWCOUNT <> 0 DBCC CHECKIDENT ('DimTipoMovimiento', RESEED, 0);
GO

DELETE FROM DimTiempo;
IF @@ROWCOUNT <> 0 DBCC CHECKIDENT ('DimTiempo', RESEED, 0);
GO



--CARGA DE DIMENSIONES


-- DimProveedor
INSERT INTO DimProveedor (pk_Proveedor, Empresa, RUC, Telefono)
SELECT IdProveedor, Empresa, RUC, Telefono
FROM Ferreteria_DonPedrito.dbo.ProveedoresDP;

-- DimProducto
INSERT INTO DimProducto (pk_Producto, NombreProducto, Categoria, PrecioUnitario, PrecioVenta, StockMinimo)
SELECT IdProducto, NombreProducto, Categoria, PrecioUnitario, PrecioVenta, StockMinimo
FROM Ferreteria_DonPedrito.dbo.ProductosDP;

-- DimUsuario
INSERT INTO DimUsuario (pk_Usuario, NombreUsuario, Cargo, Nombres, Apellidos)
SELECT IdUsuario, NombreUsuario, Cargo, Nombres, Apellidos
FROM Ferreteria_DonPedrito.dbo.UsuariosDP;

-- DimAlmacen
INSERT INTO DimAlmacen (pk_Almacen, NombreAlmacen, Direccion, Estado)
SELECT IdAlmacen, NombreAlmacen, Direccion, Estado
FROM Ferreteria_DonPedrito.dbo.AlmacenesDP;

-- DimTipoMovimiento
INSERT INTO DimTipoMovimiento (pk_TipoMovimiento, NombreTipo, EfectoStock)
SELECT IdTipoMovimiento, NombreTipo, EfectoStock
FROM Ferreteria_DonPedrito.dbo.TipoMovimientoDP;

-- DimTiempo
DECLARE @inicio DATE, @fin DATE;

SELECT 
    @inicio = MIN(CONVERT(DATE, CAST(Fecha AS VARCHAR(50)))),
    @fin    = MAX(CONVERT(DATE, CAST(Fecha AS VARCHAR(50))))
FROM Ferreteria_DonPedrito.dbo.MovimientosDP;

WHILE (@inicio <= @fin)
BEGIN
    INSERT INTO DimTiempo (IdFecha, Dia, Mes, Trimestre, Anio)
    SELECT @inicio,
           DAY(@inicio),
           MONTH(@inicio),
           DATEPART(QUARTER,@inicio),
           YEAR(@inicio);
    SET @inicio = DATEADD(DAY,1,@inicio);
END;
GO

/* ============================
   PASO 3: CARGA DE TABLA DE HECHOS
   ============================ */

INSERT INTO FactMovimientos (IdProductoDW, IdUsuarioDW, IdProveedorDW, IdAlmacenDW, IdTipoMovimientoDW, IdTiempoDW, Cantidad, Importe, Costo, Margen)
SELECT 
    dp.IdProductoDW,
    du.IdUsuarioDW,
    dpr.IdProveedorDW,
    da.IdAlmacenDW,
    dtm.IdTipoMovimientoDW,
    dt.IdTiempoDW,
    m.Cantidad,
    (m.Cantidad * p.PrecioVenta) AS Importe,
    (m.Cantidad * p.PrecioUnitario) AS Costo,
    (m.Cantidad * (p.PrecioVenta - p.PrecioUnitario)) AS Margen
FROM Ferreteria_DonPedrito.dbo.MovimientosDP m
JOIN Ferreteria_DonPedrito.dbo.ProductosDP p ON m.IdProducto = p.IdProducto
JOIN DimProducto dp ON m.IdProducto = dp.pk_Producto
JOIN DimUsuario du ON m.IdUsuario = du.pk_Usuario
JOIN DimProveedor dpr ON m.IdProveedor = dpr.pk_Proveedor
JOIN DimAlmacen da ON m.IdAlmacen = da.pk_Almacen
JOIN DimTipoMovimiento dtm ON m.IdTipoMovimiento = dtm.pk_TipoMovimiento
JOIN DimTiempo dt ON CONVERT(DATE, CAST(m.Fecha AS VARCHAR(50))) = dt.IdFecha;
GO
