use [sob]

GO
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (1, N'EnergyPlus', N'Bao Binh Co.,Ltd', 3.9900, 100, N'Supplement', N'An energy drink a day keep the tire away', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (2, N'Powow Milk', N'Bao Binh Co.,Ltd', 500.0000, 200, N'Supplement', N'Milk improve your entire body!', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (3, N'Nutella', N'Bao Binh Co.,Ltd', 350.0000, 200, N'Supplement', N'Spread the happy', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (4, N'Pink Cereal', N'Bao Binh Co.,Ltd', 500.0000, 300, N'Supplement', N'Stays crunchy, even in pink!', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (5, N'Vitamin Pills', N'Bao Binh Co.,Ltd', 1000.0000, 600, N'Supplement', N'Helps gain vitamins in meals', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (6, N'Next Coffee', N'Bao Binh Co.,Ltd', 700.0000, 450, N'Supplement', N'Wake up and drink some coffee!', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (7, N'Yo Yogurt', N'Bao Binh Co.,Ltd', 500.0000, 300, N'Supplement', N'Very creamy and delicious', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (8, N'Nutrition Milk Flour', N'Bao Binh Co.,Ltd', 1500.0000, 300, N'Supplement', N'Helps gain nutrition when you lost meals', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (9, N'B&Y Honey', N'Bao Binh Co.,Ltd', 800.0000, 500, N'Supplement', N'Looks sweet and good', 1, 1)
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (10, N'Protein Pills', N'Bao Binh Co.,Ltd', 1100.0000, 1000, N'Supplement', N'Helps you gain more weight after meals', 1, 1)

SET IDENTITY_INSERT [dbo].[Products] OFF