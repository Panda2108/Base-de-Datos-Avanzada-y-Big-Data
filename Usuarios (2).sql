USE Ferreteria_DonPedrito
go
INSERT INTO UsuariosDP (IdUsuario, Codigo, NombreUsuario, Contraseña, Cargo, Nombres, Apellidos, Telefono)
VALUES
(1, '001', 'gerente1', 'g123456', 'Gerente General', 'Vilma', 'Flores', '945112233'),
(2, '002', 'jefealmacen', 'jalm789', 'Jefe de Almacén', 'Ray', 'Guillen', '981445566');
GO
select * from UsuariosDP
