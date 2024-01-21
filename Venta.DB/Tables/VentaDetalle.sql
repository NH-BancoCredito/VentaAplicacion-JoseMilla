CREATE TABLE [dbo].[VentaDetalle](
	[IdVentaDetalle] [int] NOT NULL,
	[IdVenta] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [decimal](18, 2) NOT NULL,
	[SubTotal] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_VentaDetalle] PRIMARY KEY CLUSTERED 
(
	[IdVentaDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]