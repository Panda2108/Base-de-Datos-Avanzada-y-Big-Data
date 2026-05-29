USE Ferreteria_DonPedrito
go 
INSERT INTO ProveedoresDP
(IdProveedor, Empresa, Telefono, RUC)
VALUES
(1, 'Ardicorp S.A.C', '943903278', '20136836545'),
(2, 'Diferco S.A.C', '998356207', '20520837702'),
(3, 'Industrias Jhomeron S.A.', '946233908', '20601777844'),
(4, 'Industrias Kings S.A.C', '923922141', '20609011581'),
(5, 'QRoma S.A.', '947342404', '20520837702'),
(6, 'Corporacion Industrial Losaro S.A.C.', '948918910', '20215195539'),
(7, 'Quimicos Master Mory S.A.C', '953458196', '20609780160');
GO
select * from ProveedoresDP