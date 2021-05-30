use master
go
create database CATALOGO_DB
go
use CATALOGO_DB
go
USE [CATALOGO_DB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[MARCAS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_MARCAS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [CATALOGO_DB]
GO

/****** Object:  Table [dbo].[CATEGORIAS]    Script Date: 08/09/2019 10:32:14 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CATEGORIAS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_CATEGORIAS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [CATALOGO_DB]
GO

/****** Object:  Table [dbo].[ARTICULOS]    Script Date: 08/09/2019 10:32:24 a.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ARTICULOS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](150) NULL,
	[IdMarca] [int] NULL,
	[IdCategoria] [int] NULL,
	[ImagenUrl] [varchar](1000) NULL,
	[Precio] [money] NULL,
 CONSTRAINT [PK_ARTICULOS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

-- DATOS
USE CATALOGO_DB

SELECT * FROM ARTICULOS
SELECT * FROM MARCAS
SELECT * FROM CATEGORIAS

SELECT A.Id, A.Codigo, A.Nombre, A.Descripcion, M.Descripcion Marca, C.Descripcion Descripcion, A.Precio
FROM ARTICULOS A
INNER JOIN MARCAS M ON M.Id = A.IdMarca
INNER JOIN CATEGORIAS C ON C.Id = A.IdCategoria


--Categorias
insert into CATEGORIAS values ('Celulares'), ('Televisores'), ('Audio'), ('Computación'), ('Video'), ('Cámaras'), ('Videojuegos')
--1 Celulares 2 Televisores 3 Audio 4 Computacion 5 Video 6 Camaras 7 Videojuegos

--Celulares 1
--Marcas
--1 Samsung 2 Xiaomi 3 Apple 4 Motorola
insert into MARCAS values ('Samsung'), ('Xiaomi'), ('Apple'), ('Motorola')
insert into ARTICULOS values 
('C01', 'Galaxy A31', 'Posee una memoria interna (ROM) de 128GB* mientras que la externa se puede expandir mediante una tarjeta micro SD hasta 512 GB.', 1, 1, 'https://images.fravega.com/s250/57c585479f31ce4538cf97e33aef3d6b.jpg', 39.999),
('C02', 'Galaxy A21s', 'Pantalla HD+ de 6,5”, una cámara de 48 MP y un procesador potente, hacen del nuevo Samsung Galaxy A21s.', 1, 1, 'https://images.fravega.com/s250/219c2383888262c5d12cf594961baeec.jpg', 32.999),
('C03', 'Redmi 9', 'La cámara principal del Redmi 9 es cuádruple, con un lente principal de 13 MP.', 2, 1, 'https://images.fravega.com/s250/00de28c3707152f7744ba60b04e20ddb.jpg', 48.749),
('C04', 'Redmi Note 9', 'Dispositivo liberado para que elijas la compañía telefónica que prefieras. Pantalla IPS de 6.53 . Tiene 4 cámaras traseras de 48Mpx/8Mpx/2Mpx/2Mpx.', 2, 1, 'https://images.fravega.com/s250/658028feb38bf9ae6df20cd9bdd2ffc7.jpg', 45.943),
('C05', 'SE 128GB', 'Tarjeta SIM Es Dual SIM: No Cantidad de ranuras para tarjeta SIM: 1 Tamaños de tarjeta SIM compatibles: Nano-SIM Con eSIM.', 3, 1, 'https://images.fravega.com/s250/fd0be5c5a39969a620ab83e807f81955.jpg', 161.841),
('C06', 'SE 64GB', '1 Tamaños de tarjeta SIM compatibles: Nano-SIM Con eSIM: Sí Cantidad de eSIMs: 1 Memoria Memoria interna: 64 GB Memoria RAM: 3 GB.', 3, 1, 'https://images.fravega.com/s250/98fa6c9c873d95fb00396189792a823f.jpg', 143.420),
('C07', 'E7i Power', 'Posee una memoria interna (ROM) de 32 GB, mientras que la externa se puede expandir hasta 1 TB.', 4, 1, 'https://images.fravega.com/s250/efbb3a2a38f64f141a84626f3bebacf3.jpg', 18.999),
('C08', 'G9 Plus', 'Con una pantalla de 6,8”, resolución FHD+ y un sistema multi cámara, el celular Motorola G9 Plus se presenta como una de las mejores opciones.', 4, 1, 'https://images.fravega.com/s250/bff209eb4903e564b168eb17b88ca127.jpg', 40.999)

--Televisores 2
--Marcas --1 Samsung 5 TCL 6 Philips 7 Admiral 8 LG 9 Sony
insert into MARCAS values ('TCL'), ('Philips'), ('Admiral'), ('LG'),('Sony')
insert into ARTICULOS values 
('T01', 'Smart TV 4K UHD 43', 'Con la tecnología Crystal UHD 4K, HDR y un diseño sofisticado y súper delgado, el Smart TV Samsung UN43TU7000 ofrece una experiencia multimedia única.', 1, 2, 'https://images.fravega.com/s250/93639c01d8e01a705eeb8946d7b3610d.jpg', 59.999),
('T02', 'Smart TV 4K UHD 50', 'Con la tecnología Crystal UHD 4K, HDR y un diseño sofisticado y súper delgado, el Smart TV Samsung UN50TU7000 ofrece una experiencia multimedia única.', 1, 2, 'https://images.fravega.com/s250/c5b71e73eb05f01c66ff3ecd20e85332.jpg', 69.999),
('T03', 'Smart TV 50 4K Ultra HD', 'Mediante sus entradas HDMI podés vincular reproductores de audio y video; consolas de juegos y notebooks.', 5, 2, 'https://images.fravega.com/s250/8e340f89af7d07027ac0bc08fd324ecf.jpg', 58.999),
('T03', 'Smart TV 42 Full HD', 'El Smart TV TCL L42S6500 de 41,5 pulgadas cuenta con una pantalla formato widescreen (16:9) con una resolución de 1080 x 1920 píxeles.', 5, 2, 'https://images.fravega.com/s250/e56d17ca976044828eefe7eea2d11cdf.jpg', 39.999),
