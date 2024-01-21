INSERT [dbo].[Producto] ([IdProducto], [IdCategoria], [Nombre], [Stock], [StockMinimo], [PrecioUnitario]) VALUES (1, 1, N'Toshiba', 126, 1, CAST(3000.00 AS Decimal(18, 2)))

INSERT [dbo].[Producto] ([IdProducto], [IdCategoria], [Nombre], [Stock], [StockMinimo], [PrecioUnitario]) VALUES (2, 1, N'Dell', 148, 2, CAST(3500.00 AS Decimal(18, 2)))


INSERT [dbo].[Venta] ([IdVenta], [IdCliente], [Fecha], [Monto]) VALUES (10, 1, CAST(N'2023-09-23T18:25:20.217' AS DateTime), CAST(200.00 AS Decimal(18, 2)))

INSERT [dbo].[Venta] ([IdVenta], [IdCliente], [Fecha], [Monto]) VALUES (11, 1, CAST(N'2023-09-23T18:31:14.380' AS DateTime), CAST(250.00 AS Decimal(18, 2)))

INSERT [dbo].[Venta] ([IdVenta], [IdCliente], [Fecha], [Monto]) VALUES (12, 1, CAST(N'2023-09-23T20:11:58.667' AS DateTime), CAST(270.00 AS Decimal(18, 2)))

INSERT [dbo].[Venta] ([IdVenta], [IdCliente], [Fecha], [Monto]) VALUES (1002, 1, CAST(N'2024-01-04T22:19:24.107' AS DateTime), CAST(20.00 AS Decimal(18, 2)))

INSERT [dbo].[Venta] ([IdVenta], [IdCliente], [Fecha], [Monto]) VALUES (1003, 1, CAST(N'2024-01-04T22:21:46.370' AS DateTime), CAST(54.00 AS Decimal(18, 2)))

 

 

INSERT [dbo].[VentaDetalle] ([IdVentaDetalle], [IdVenta], [IdProducto], [Cantidad], [Precio], [SubTotal]) VALUES (10, 0, 1, 2, CAST(100.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)))
 
INSERT [dbo].[VentaDetalle] ([IdVentaDetalle], [IdVenta], [IdProducto], [Cantidad], [Precio], [SubTotal]) VALUES (11, 11, 1, 2, CAST(100.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)))
 
INSERT [dbo].[VentaDetalle] ([IdVentaDetalle], [IdVenta], [IdProducto], [Cantidad], [Precio], [SubTotal]) VALUES (12, 11, 2, 1, CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)))
 
INSERT [dbo].[VentaDetalle] ([IdVentaDetalle], [IdVenta], [IdProducto], [Cantidad], [Precio], [SubTotal]) VALUES (13, 12, 1, 2, CAST(100.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)))
 
INSERT [dbo].[VentaDetalle] ([IdVentaDetalle], [IdVenta], [IdProducto], [Cantidad], [Precio], [SubTotal]) VALUES (14, 12, 2, 1, CAST(70.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)))
 
INSERT [dbo].[VentaDetalle] ([IdVentaDetalle], [IdVenta], [IdProducto], [Cantidad], [Precio], [SubTotal]) VALUES (1011, 1002, 1, 2, CAST(10.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)))
 
INSERT [dbo].[VentaDetalle] ([IdVentaDetalle], [IdVenta], [IdProducto], [Cantidad], [Precio], [SubTotal]) VALUES (1012, 1003, 1, 3, CAST(10.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)))
 
INSERT [dbo].[VentaDetalle] ([IdVentaDetalle], [IdVenta], [IdProducto], [Cantidad], [Precio], [SubTotal]) VALUES (1013, 1003, 2, 2, CAST(12.00 AS Decimal(18, 2)), CAST(24.00 AS Decimal(18, 2)))
 
 
