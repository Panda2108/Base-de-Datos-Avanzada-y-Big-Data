use Ferreteria_DonPedrito
GO
SET DATEFORMAT dmy;
GO

INSERT INTO ProductosDP (IdProducto, IdProveedor, Codigo, NombreProducto, Categoria, StockActual, StockMinimo, PrecioUnitario, PrecioVenta, FechaRegistro) VALUES
(1, 3, '001', 'Broca HSS 3/8', 'Herramientas', 10, 5, 10.65, 16.00, '18/04/2026'),
(2, 3, '002', 'Broca HSS 7/64', 'Herramientas', 10, 5, 1.50, 3.00, '18/04/2026'),
(3, 3, '003', 'Broca HSS 1/8', 'Herramientas', 20, 5, 1.53, 3.00, '18/04/2026'),
(4, 3, '004', 'Broca HSS 5/32', 'Herramientas', 10, 5, 1.93, 3.00, '18/04/2026'),
(5, 3, '005', 'Broca HSS 5/16', 'Herramientas', 10, 5, 8.24, 12.00, '18/04/2026'),
(6, 3, '006', 'Broca P/CONCRETO 3/16 X4', 'Herramientas', 10, 5, 1.44, 3.00, '18/04/2026'),
(7, 3, '007', 'Broca HSS 1/4', 'Herramientas', 10, 5, 4.78, 7.00, '18/04/2026'),
(8, 3, '008', 'Broca P/CONCRETO 3/8 X5', 'Herramientas', 10, 5, 3.12, 5.00, '18/04/2026'), 
(14, 3, '014', 'Martillo Uña M/Madera 20 ONZ', 'Herramientas', 6, 2, 10.46, 16.00, '18/04/2026'),
(16, 3, '016', 'Espatula M/Madera 4"(12)', 'Herramientas', 12, 2, 2.12, 4.00, '18/04/2026'),


(9, 1, '009', 'Extension 4 Tomas Gris 10M', 'Electricidad', 4, 2, 12.07, 18.00, '18/04/2026'),
(10, 1, '010', 'Extension 4 Tomas Gris 5M', 'Electricidad', 4, 2, 7.20, 11.00, '18/04/2026'),
(12, 1, '012', 'Extension 4 Tomas Gris 3M', 'Electricidad', 4, 2, 6.15, 9.00, '18/04/2026'),


(11, 3, '011', 'Plancha Empastar Lisa M/Goma 11 "x5"', 'Construccion', 12, 8, 8.14, 12.00, '18/04/2026'),
(13, 3, '013', 'Plancha Empastar Dentada M/Goma 11"x5"', 'Construccion', 12, 6, 7.91, 12.00, '18/04/2026'),

(15, 6, '015', 'Cinta Masking 2 X30YDS', 'Limpieza', 30, 15, 4.14, 6.00, '18/04/2026'),
(17, 6, '017', 'Cinta Masking 1 "x 30YDS KNAUFF', 'Limpieza', 30, 3, 2.18, 4.00, '18/04/2026'),
(18, 6, '018', 'Silicona Multiusos transp 225ML KNAUFF', 'Limpieza', 12, 2, 5.09, 8.00, '18/04/2026'),
(19, 6, '019', 'Silicona Multiusos transp 50GR KNAUFF', 'Limpieza', 12, 3, 1.84, 3.00, '18/04/2026'),
(20, 6, '020', 'Silicona Multiusos transp 225ML KNAUFF', 'Limpieza', 12, 2, 5.09, 8.00, '18/04/2026'),
(21, 6, '021', 'Silicona Lavanda 450ML-KNAUFF', 'Limpieza', 12, 2, 6.03, 9.00, '18/04/2026'),

(22, 7, '022', 'Pegamento extrafuerte 30GR SOLDIMIX', 'Quimicos', 12, 4, 7.33, 11.00, '18/04/2026'),
(23, 7, '023', 'Pegamento 10 MINUTOS 30GR SOLDIMIX', 'Quimicos', 12, 4, 7.33, 11.00, '18/04/2026'),

(24, 4, '024', 'Pintura spray gris #84 400ML', 'Spray', 12, 4, 3.03, 5.00, '18/04/2026'),
(25, 4, '025', 'Pintura spray rojo oscuro', 'Spray', 12, 4, 3.03, 5.00, '18/04/2026'),
(26, 4, '026', 'Pintura spray dorado #25 400ML', 'Spray', 12, 4, 4.25, 7.00, '18/04/2026'),
(27, 4, '027', 'Pintura spray rojo brillante #311 400ML', 'Spray', 12, 4, 3.03, 5.00, '18/04/2026'),
(28, 4, '028', 'Pintura spray silver #36 400ML', 'Spray', 24, 4, 3.03, 5.00, '18/04/2026'),
(29, 4, '029', 'Pintura spray negro mate #12 400ML', 'Spray', 24, 4, 3.03, 5.00, '18/04/2026'),
(30, 4, '030', 'Pintura spray negro brillante #11 400ML', 'Spray', 24, 4, 3.03, 5.00, '18/04/2026'),

(31, 4, '031', 'Brocha de Nylon 1/2"(12)', 'Brochas', 12, 4, 0.56, 1.00, '18/04/2026'),
(32, 4, '032', 'Brocha de Nylon 1"(12)', 'Brochas', 12, 4, 0.78, 2.00, '18/04/2026'),
(33, 4, '033', 'Brocha de Nylon 1 1/2"(12)', 'Brochas', 12, 4, 1.06, 2.00, '18/04/2026'),
(34, 4, '034', 'Brocha de Nylon 3"(12)', 'Brochas', 12, 4, 2.85, 5.00, '18/04/2026'),
(35, 4, '035', 'Brocha de Nylon 2"(12)', 'Brochas', 12, 4, 1.61, 3.00, '18/04/2026'),
(36, 4, '036', 'Brocha de Nylon 4"(12)', 'Brochas', 12, 4, 3.65, 6.00, '18/04/2026'),


(37, 5, '037', 'Esmalte Sintetico Tamsa Bayo 1/4 Gal', 'Pinturas', 2, 1, 8.00, 12.00, '11/03/2026'),
(38, 5, '038', 'Esmalte Sintetico Tamsa Celeste 1/4 Gal', 'Pinturas', 2, 1, 8.00, 12.00, '11/03/2026'),
(39, 5, '039', 'Esmalte Sintetico Tamsa Negro 1/4 Gal', 'Pinturas', 2, 1, 8.00, 12.00, '11/03/2026'),
(40, 5, '040', 'Barniz Sintetico Jhomeron Caoba 1/4 Gal', 'Pinturas', 2, 1, 11.00, 16.00, '11/03/2026'),
(41, 5, '041', 'Barniz Sintetico Jhomeron Cedro 1/4 Gal', 'Pinturas', 1, 1, 11.00, 16.00, '11/03/2026'),
(42, 5, '042', 'Masilla Plastica Toque Flex x 5Kg Lata', 'Pinturas', 2, 1, 50.00, 73.00, '11/03/2026'),
(43, 5, '043', 'Esmalte Sintetico Amarillo Ocre x 1 Gal', 'Pinturas', 2, 1, 26.00, 38.00, '24/03/2026'),
(44, 5, '044', 'Esmalte Sintetico Azul Naval x 1 Gal', 'Pinturas', 1, 1, 26.00, 38.00, '24/03/2026'),
(45, 5, '045', 'Latex Tamsa Color Blanco x 1 Gl Balde', 'Pinturas', 12, 5, 12.00, 18.00, '21/04/2026'),
(46, 5, '046', 'Base Zincromato Color Industrial x 1/4 Gl', 'Pinturas', 4, 1, 8.50, 13.00, '21/04/2026'),
(51, 5, '051', 'cpp satinado 1gl blanco', 'Pinturas', 5, 1, 75.00, 98.00, '25/05/2026'),

(47, 2, '047', 'disco copa 4"', 'PVC', 15, 3, 11.00, 16.00, '25/05/2026'),
(48, 2, '048', 'majestad 25kg (5 litros x bolsa)', 'PVC', 10, 2, 22.00, 32.00, '25/05/2026'),
(49, 2, '049', 'codo 1/2"', 'PVC', 50, 10, 1.20, 2.00, '25/05/2026'),
(50, 2, '050', 'tapon 1/2"', 'PVC', 40, 10, 0.50, 1.00, '25/05/2026'),
(52, 2, '052', 'trampa 4" eco', 'PVC', 8, 2, 18.00, 25.00, '25/05/2026'),
(53, 2, '053', 'tubo 1/2" nicol', 'PVC', 30, 5, 16.50, 22.00, '25/05/2026'),
(54, 2, '054', 'adaptador 3/4" - 1/2"', 'PVC', 20, 5, 2.20, 3.50, '25/05/2026'),
(55, 2, '055', 'adaptadores n.', 'PVC', 25, 5, 1.20, 2.00, '25/05/2026'),
(56, 2, '056', 'tee 1/2" nicol', 'PVC', 35, 8, 1.80, 3.00, '25/05/2026'),
(57, 2, '057', 'check 1/2"', 'PVC', 12, 3, 19.50, 25.00, '25/05/2026'),
(58, 2, '058', 'llave de paso', 'PVC', 15, 3, 5.50, 8.00, '25/05/2026'),
(59, 2, '059', 'codo 2" nicol', 'PVC', 30, 5, 2.00, 3.00, '25/05/2026'),
(60, 2, '060', 'teflon', 'PVC', 100, 15, 0.50, 1.00, '25/05/2026'),
(61, 2, '061', 'valvula de ingreso universal', 'PVC', 10, 2, 14.00, 20.00, '25/05/2026'),
(62, 2, '062', 'soda caustica 1/2 kg', 'PVC', 20, 5, 5.50, 8.00, '24/05/2026'),
(63, 2, '063', 'kg clavo 4"', 'PVC', 50, 10, 5.00, 7.00, '24/05/2026'),
(64, 2, '064', 'kg clavo 3"', 'PVC', 50, 10, 5.00, 7.00, '24/05/2026'),
(65, 2, '065', 'pegamento oatey', 'PVC', 15, 3, 10.00, 14.00, '24/05/2026'),
(66, 2, '066', 'reduccion 4" a 2"', 'PVC', 12, 3, 3.00, 4.50, '24/05/2026'),
(67, 2, '067', 'tapon 2"', 'PVC', 25, 5, 1.20, 2.00, '24/05/2026'),
(68, 2, '068', 'codo 2" x 90', 'PVC', 30, 5, 1.60, 2.50, '24/05/2026'),
(69, 2, '069', 'union presion 1/2" nicol', 'PVC', 50, 10, 0.80, 1.50, '25/05/2026'),
(70, 2, '070', 'codo mezcladora 1/2" - 3/4"', 'PVC', 15, 3, 4.50, 6.50, '25/05/2026'),
(71, 2, '071', 'pegamento soldimix 10 minutos', 'PVC', 12, 2, 7.50, 11.00, '25/05/2026'),
(72, 2, '072', 'tubo 3/4" luz eco', 'PVC', 30, 5, 1.50, 2.50, '25/05/2026'),
(73, 2, '073', 'codo de luz 3/4"', 'PVC', 50, 10, 0.30, 0.50, '25/05/2026'),
(74, 2, '074', 'pegamento azurin 1/2"', 'PVC', 15, 3, 14.00, 20.00, '22/05/2026'),
(75, 2, '075', 'codo 4" nicol', 'PVC', 12, 2, 7.50, 10.00, '22/05/2026'),
(76, 2, '076', 'tee 4"', 'PVC', 10, 2, 11.00, 15.00, '22/05/2026'),
(77, 2, '077', 'trampa de 2"', 'PVC', 8, 2, 9.50, 13.00, '22/05/2026'),
(78, 2, '078', 'rejilla de 2"', 'PVC', 20, 5, 3.50, 5.00, '22/05/2026'),
(79, 2, '079', 'codo 4" - 45°', 'PVC', 15, 3, 7.50, 10.00, '22/05/2026');
GO
select * from ProductosDP
