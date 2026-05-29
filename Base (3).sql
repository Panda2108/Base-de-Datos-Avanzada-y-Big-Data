Create database Ferreteria_DonPedrito 
go
USE Ferreteria_DonPedrito;
GO

CREATE TABLE ProveedoresDP(
    IdProveedor INT PRIMARY KEY,
    Empresa VARCHAR(60) NOT NULL,
    Telefono VARCHAR(15),
    RUC VARCHAR(20)
);
GO

CREATE TABLE ProductosDP (
    IdProducto INT PRIMARY KEY,
    IdProveedor INT NOT NULL,
    Codigo CHAR(3) NOT NULL,
    NombreProducto VARCHAR(100) NOT NULL,
    Categoria VARCHAR(50),
    StockActual INT NOT NULL,
    StockMinimo INT NOT NULL,
    PrecioUnitario DECIMAL(10,2) NOT NULL,
    PrecioVenta DECIMAL(10,2) NOT NULL,
    FechaLlegada DATE,
    FechaRegistro DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (IdProveedor) REFERENCES ProveedoresDP(IdProveedor)
);
GO


CREATE TABLE UsuariosDP(
    IdUsuario INT PRIMARY KEY,
    Codigo CHAR(3),
    NombreUsuario VARCHAR(50),
    Contraseña VARCHAR(100),
    Cargo VARCHAR(30),
    Nombres VARCHAR(50),
    Apellidos VARCHAR(50),
    Telefono VARCHAR(15),
    FechaCreacion DATETIME DEFAULT GETDATE()
);
GO

CREATE TABLE MovimientosDP (
    IdMovimiento INT IDENTITY(1,1) PRIMARY KEY,
    IdProducto INT,
    IdUsuario INT,
    IdProveedor INT,       
    IdAlmacen INT,         
    IdTipoMovimiento INT, 
    Cantidad INT NOT NULL,
    Fecha TEXT,            

   
    FOREIGN KEY (IdProducto) REFERENCES ProductosDP(IdProducto),
    FOREIGN KEY (IdUsuario) REFERENCES UsuariosDP(IdUsuario),
    FOREIGN KEY (IdProveedor) REFERENCES ProveedoresDP(IdProveedor),
    FOREIGN KEY (IdAlmacen) REFERENCES AlmacenesDP(IdAlmacen),              
    FOREIGN KEY (IdTipoMovimiento) REFERENCES TipoMovimientoDP(IdTipoMovimiento) 
);
GO
CREATE TABLE AlmacenesDP (
    IdAlmacen INT IDENTITY(1,1) PRIMARY KEY,
    NombreAlmacen VARCHAR(50) NOT NULL,
    Direccion VARCHAR(100),
    Telefono VARCHAR(20),
    Estado VARCHAR(15) DEFAULT 'Activo' 
);
GO 

CREATE TABLE TipoMovimientoDP (
    IdTipoMovimiento INT IDENTITY(1,1) PRIMARY KEY,
    NombreTipo VARCHAR(50) NOT NULL,       
    EfectoStock VARCHAR(10) NOT NULL       
);
GO



DROP TABLE MovimientosDP;