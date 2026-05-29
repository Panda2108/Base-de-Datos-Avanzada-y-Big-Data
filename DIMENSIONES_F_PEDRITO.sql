use Ferreteria_DonPedrito
go
create database DATAMART
go
USE DATAMART;
GO

DROP TABLE DimProducto;
DROP TABLE DimProveedor;
DROP TABLE DimUsuario;
DROP TABLE DimAlmacen;
DROP TABLE DimTipoMovimiento;
DROP TABLE DimTiempo;
DROP TABLE FactMovimientos;


USE DATAMART;
GO

-- Dimensión Proveedor
CREATE TABLE DimProveedor (
    IdProveedorDW INT PRIMARY KEY IDENTITY,
    pk_Proveedor INT,
    Empresa VARCHAR(60),
    RUC VARCHAR(20),
    Telefono VARCHAR(15)
);

-- Dimensión Producto
CREATE TABLE DimProducto (
    IdProductoDW INT PRIMARY KEY IDENTITY,
    pk_Producto INT,
    NombreProducto VARCHAR(100),
    Categoria VARCHAR(50),
    PrecioUnitario DECIMAL(10,2),
    PrecioVenta DECIMAL(10,2),
    StockMinimo INT
);

-- Dimensión Usuario
CREATE TABLE DimUsuario (
    IdUsuarioDW INT PRIMARY KEY IDENTITY,
    pk_Usuario INT,
    NombreUsuario VARCHAR(50),
    Cargo VARCHAR(30),
    Nombres VARCHAR(50),
    Apellidos VARCHAR(50)
);

-- Dimensión Almacén
CREATE TABLE DimAlmacen (
    IdAlmacenDW INT PRIMARY KEY IDENTITY,
    pk_Almacen INT,
    NombreAlmacen VARCHAR(50),
    Direccion VARCHAR(100),
    Estado VARCHAR(15)
);

-- Dimensión Tipo Movimiento
CREATE TABLE DimTipoMovimiento (
    IdTipoMovimientoDW INT PRIMARY KEY IDENTITY,
    pk_TipoMovimiento INT,
    NombreTipo VARCHAR(50),
    EfectoStock VARCHAR(10)
);

-- Dimensión Tiempo
CREATE TABLE DimTiempo (
    IdTiempoDW INT PRIMARY KEY IDENTITY,
    IdFecha DATE,
    Dia INT,
    Mes INT,
    Trimestre INT,
    Anio INT
);

CREATE TABLE FactMovimientos (
    IdMovimientoDW INT PRIMARY KEY IDENTITY,   -- surrogate key
    IdProductoDW INT REFERENCES DimProducto(IdProductoDW),
    IdUsuarioDW INT REFERENCES DimUsuario(IdUsuarioDW),
    IdProveedorDW INT REFERENCES DimProveedor(IdProveedorDW),
    IdAlmacenDW INT REFERENCES DimAlmacen(IdAlmacenDW),
    IdTipoMovimientoDW INT REFERENCES DimTipoMovimiento(IdTipoMovimientoDW),
    IdTiempoDW INT REFERENCES DimTiempo(IdTiempoDW),
    Cantidad INT,
    Importe DECIMAL(10,2),
    Costo DECIMAL(10,2),
    Margen DECIMAL(10,2)
);

