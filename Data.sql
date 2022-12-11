use [sob]
GO
/****** Suppliers ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[SName] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Address1] [varchar](50) NOT NULL,
	[Address2] [varchar](50) NULL,
	[Suburb] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[Postcode] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON
INSERT [dbo].[Suppliers] ([SID], [SName], [Phone], [Email], [Address1], [Address2], [Suburb], [State], [Postcode]) VALUES (1, N'Bao Binh Co Ltd', N'(+84) 903 346 306', N'binhtranthanhbinh120@gmail.com', N'62 Phu Tho', N'62 Phu Tho', N'Ho Chi Minh',  N'Ho Chi Minh', N'700000')

SET IDENTITY_INSERT [dbo].[Suppliers] OFF
/****** ShoppingCartData ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShoppingCartData](
	[TempOrderID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NOT NULL,
	[PName] [varchar](50) NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_ShoppingCartData] PRIMARY KEY CLUSTERED 
(
	[TempOrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Products ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[PID] [int] IDENTITY(1,1) NOT NULL,
	[PName] [varchar](50) NOT NULL,
	[Brand] [varchar](50) NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[UnitsInStock] [int] NOT NULL,
	[Category] [varchar](50) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[SID] [int] NOT NULL,
	[ROL] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (1, N'EnergyPlus', N'Bao Binh Co.,Ltd', 3.9900, N'Supplement', N'An energy drink a day keep the tire away', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (2, N'Powow Milk', N'Bao Binh Co.,Ltd', 5.9900, 200, N'Supplement', N'Milk improve your entire body!', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (3, N'Nutella', N'Bao Binh Co.,Ltd', 4.9900, 200, N'Supplement', N'Spread the happy', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (4, N'Pink Cereal', N'Bao Binh Co.,Ltd', 5.9900, 300, N'Supplement', N'Stays crunchy, even in pink!', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (5, N'Vitamin Pills', N'Bao Binh Co.,Ltd', 14.5900, 600, N'Supplement', N'Helps gain vitamins in meals', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (6, N'Next Coffee', N'Bao Binh Co.,Ltd', 7.5900, 450, N'Supplement', N'Wake up and drink some coffee!', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (7, N'Yo Yogurt', N'Bao Binh Co.,Ltd', 5.9900, 300, N'Supplement', N'Very creamy and delicious', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (8, N'Nutrition Milk Flour', N'Bao Binh Co.,Ltd', 24.9900, 300, N'Supplement', N'Helps gain nutrition when you lost meals', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (9, N'B&Y Honey', N'Bao Binh Co.,Ltd', 9.9900, 500, N'Supplement', N'Looks sweet and good', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (10, N'Protein Pills', N'Bao Binh Co.,Ltd', 19.9900, 1000, N'Supplement', N'Helps you gain more weight after meals', 1, 1)

SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Orders ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[DeliveryDate] [datetime] NOT NULL,
	[CID] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Orders] ON
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [CID]) VALUES (1, CAST(0x0000A05B00B0FB24 AS DateTime), CAST(0x0000A05D00000000 AS DateTime), 47)
SET IDENTITY_INSERT [dbo].[Orders] OFF
/****** Order_Products ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Products](
	[OrderID] [int] NOT NULL,
	[PID] [int] NOT NULL,
	[Qty] [int] NOT NULL,
	[TotalSale] [money] NOT NULL,
 CONSTRAINT [PK_Order_Products] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[PID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale]) VALUES (1, 1, 100, 1000.0000)
/****** FK_Products_Suppliers ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SID])
REFERENCES [dbo].[Suppliers] ([SID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
/****** FK_Order_Products_Orders ******/
ALTER TABLE [dbo].[Order_Products]  WITH CHECK ADD  CONSTRAINT [FK_Order_Products_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order_Products] CHECK CONSTRAINT [FK_Order_Products_Orders]
GO
/****** FK_Order_Products_Products ******/
ALTER TABLE [dbo].[Order_Products]  WITH CHECK ADD  CONSTRAINT [FK_Order_Products_Products] FOREIGN KEY([PID])
REFERENCES [dbo].[Products] ([PID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Order_Products] CHECK CONSTRAINT [FK_Order_Products_Products]
GO

--use [master]