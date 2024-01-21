CREATE TABLE [dbo].[Producto](
	[IdProducto] [int] NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Stock] [int] NOT NULL,
	[StockMinimo] [int] NOT NULL,
	[PrecioUnitario] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
