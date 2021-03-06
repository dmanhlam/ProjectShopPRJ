USE [ProjectDML]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/8/2022 10:33:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[displayName] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[role] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/8/2022 10:33:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/8/2022 10:33:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/8/2022 10:33:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [text] NULL,
	[created_date] [date] NULL CONSTRAINT [DF_Orders_created_date]  DEFAULT (getdate()),
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/8/2022 10:33:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[quantity] [int] NULL,
	[oldprice] [int] NULL,
	[price] [int] NULL,
	[description] [nvarchar](255) NULL,
	[image_url] [nvarchar](255) NULL,
	[created_date] [date] NULL,
	[category_id] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 3/8/2022 10:33:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [role]) VALUES (1, N'user', N'123456', N'User', N'Ha Noi', N'user@gmail.com', N'0987456321', 0)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [role]) VALUES (2, N'dmanhlam', N'123456', N'Manh Lam', N'Hai Phong', N'dmanlam@gmail.com', N'0349289296', 1)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [role]) VALUES (3, N'manhtung91', N'123456', N'Manh Tung', N'thÃ´n Nam BÃ¬nh', N'kyniemhp11@gmail.com', N'111112222', 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'iPhone')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Samsung')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'Oppo')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'Xiaomi')
INSERT [dbo].[Category] ([id], [name]) VALUES (5, N'Macbook')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (6, 1, N'iPhone Xs Max Likenew 99%', N'https://product.hstatic.net/1000379792/product/iphone-xs-vang-64gb_35fd702fd51f4b4299583dc8370391d1_1024x1024.jpg', 17, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (7, 1, N'iPhone 13 Pro Max ', N'https://product.hstatic.net/1000063620/product/iphone-13-pro-vang-mhm_5451b22302504a1c9b5f2d6e7ad22052_large_6d1b5fb492a541f69d46ecac1eb2f3ee_1024x1024.jpg', 6, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (8, 1, N'iPhone 13 Mini', N'https://product.hstatic.net/1000063620/product/iphone-13-hong-mhm_040fce1b8e5e448596e3ee1b9acc01bf_large_73bd2809c5604d7291337bb0925e1c33_medium.jpg', 12, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (9, 1, N'iPhone 12', N'https://product.hstatic.net/1000063620/product/iphone-12-tim_e7f1a2006875428c905e42e44a2e5dea_1024x1024.jpg', 10, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (10, 1, N'Macbook Pro 16" - M1 Max/ 16 Core GPU 2021', N'https://product.hstatic.net/1000063620/product/macbook-pro-2021-1_60e0a60d88984c7c809f3cd983f41aa5_medium.jpg', 20, 3)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (11, 2, N'iPhone 13 Pro Max ', N'https://product.hstatic.net/1000063620/product/iphone-13-pro-vang-mhm_5451b22302504a1c9b5f2d6e7ad22052_large_6d1b5fb492a541f69d46ecac1eb2f3ee_1024x1024.jpg', 6, 2)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (12, 3, N'iPhone 13 Pro Max ', N'https://product.hstatic.net/1000063620/product/iphone-13-pro-vang-mhm_5451b22302504a1c9b5f2d6e7ad22052_large_6d1b5fb492a541f69d46ecac1eb2f3ee_1024x1024.jpg', 6, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (13, 3, N'iPhone 13 Mini', N'https://product.hstatic.net/1000063620/product/iphone-13-hong-mhm_040fce1b8e5e448596e3ee1b9acc01bf_large_73bd2809c5604d7291337bb0925e1c33_medium.jpg', 12, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (14, 4, N'Samsung Galaxy Tab A8 (2022)', N'https://product.hstatic.net/1000063620/product/samsung-galaxy-tab-a8_3713cf40938d44a09c7db984787b57bc_medium.jpg', 16, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (15, 5, N'iPhone 13 Mini', N'https://product.hstatic.net/1000063620/product/iphone-13-hong-mhm_040fce1b8e5e448596e3ee1b9acc01bf_large_73bd2809c5604d7291337bb0925e1c33_medium.jpg', 12, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (16, 5, N'iPhone 12', N'https://product.hstatic.net/1000063620/product/iphone-12-tim_e7f1a2006875428c905e42e44a2e5dea_1024x1024.jpg', 10, 1)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (17, 6, N'iPhone 12', N'https://product.hstatic.net/1000063620/product/iphone-12-tim_e7f1a2006875428c905e42e44a2e5dea_1024x1024.jpg', 10, 2)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (1, 1, 105, N'hang de vo', CAST(N'2022-02-27' AS Date), 7)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (2, 1, 12, N'11', CAST(N'2022-02-27' AS Date), 8)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (3, 1, 18, N'avc', CAST(N'2022-02-27' AS Date), 9)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (4, 1, 16, N'hang de vo', CAST(N'2022-02-27' AS Date), 10)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (5, 1, 22, N'', CAST(N'2022-03-06' AS Date), 11)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (6, 1, 20, N'', CAST(N'2022-03-06' AS Date), 12)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (1, N'iPhone 13 Pro Max ', 9, 112344412, 111, N'Family disruption due to other extended absence of family member', N'https://product.hstatic.net/1000063620/product/iphone-13-pro-vang-mhm_5451b22302504a1c9b5f2d6e7ad22052_large_6d1b5fb492a541f69d46ecac1eb2f3ee_1024x1024.jpg', CAST(N'2021-08-23' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (2, N'iPhone 13 Mini', 8, 21990000, 18190000, N'Other specified disorders of urethra', N'https://product.hstatic.net/1000063620/product/iphone-13-hong-mhm_040fce1b8e5e448596e3ee1b9acc01bf_large_73bd2809c5604d7291337bb0925e1c33_medium.jpg', CAST(N'2021-04-03' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (3, N'iPhone 12', 18, 22490000, 18290000, N'Accidental poisoning by other paints and varnishes', N'https://product.hstatic.net/1000063620/product/iphone-12-tim_e7f1a2006875428c905e42e44a2e5dea_1024x1024.jpg', CAST(N'2021-01-21' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (4, N'iPhone 12 Pro Max', 17, 32990000, 29790000, N'Sprain of wrist, unspecified site', N'https://product.hstatic.net/1000063620/product/iphone-12-pro-vang-mhm_6efe8dfd81694ce4bc738c4d3d9bb1ed_grande_3dc2e9c2241a4b9d8afc252108d902a9.jpg', CAST(N'2021-02-09' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (5, N'iPhone Xs Max Likenew 99%', 6, 13690000, 11790000, N'Wegener''s granulomatosis', N'https://product.hstatic.net/1000379792/product/iphone-xs-vang-64gb_35fd702fd51f4b4299583dc8370391d1_1024x1024.jpg', CAST(N'2021-08-23' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (6, N'Samsung Galaxy S22 Ultra', 16, 30990000, 24390000, N'Tuberculous encephalitis or myelitis, tubercle bacilli not found by bacteriological examination, but tuberculosis confirmed histologically', N'https://product.hstatic.net/1000063620/product/samsung-galaxy-s22-ultra_cbc61a91cbec4ab6a510568c99ac1c05_medium.jpg', CAST(N'2021-09-25' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (7, N'Samsung Galaxy Tab A8 (2022)', 19, 849000000, 75900000, N'Arthropathy associated with mycoses, lower leg', N'https://product.hstatic.net/1000063620/product/samsung-galaxy-tab-a8_3713cf40938d44a09c7db984787b57bc_medium.jpg', CAST(N'2021-07-07' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (8, N'Samsung Galaxy M52 ', 10, 9190000, 8650000, N'Generally contracted pelvis, delivered, with or without mention of antepartum condition', N'https://product.hstatic.net/1000063620/product/ss-a52-5g-xanh_e4527d1ee9e94515a5d7dcfb46cf76b4_medium.jpg', CAST(N'2022-02-03' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (9, N'Samsung Galaxy Note 10 - Likenew', 15, 9590000, 8790000, N'Mixed acid-base balance disorder', N'https://product.hstatic.net/1000063620/product/samsung-galaxy-note-10-mhm_5c13ba36529447ae9ff1e4787ddfb57f_medium.jpg', CAST(N'2022-01-28' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (10, N'Oppo A16K', 13, 3690000, 3390000, N'Personal history of other disorders of nervous system and sense organs', N'https://product.hstatic.net/1000063620/product/oppo-a16k-mhm_2e03746a6ae14f15905ea1b538683b56_medium.jpg', CAST(N'2021-06-06' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (11, N'Oppo A95', 17, 6990000, 6350000, N'Mixed malaria', N'https://product.hstatic.net/1000063620/product/oppo-95-bac-mhm_65d14b72b146433f95e73e4fa4395923_medium.jpg', CAST(N'2021-04-05' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (12, N'Oppo Reno6 5G', 13, 12990000, 11590000, N'Other and unspecified alcohol dependence, episodic', N'https://product.hstatic.net/1000063620/product/oppo-reno-6-mhm_59603ae03e454ec38c888146b92fcbf7_medium.jpg', CAST(N'2021-03-16' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (13, N'Oppo Find X3 Pro', 15, 26990000, 24290000, N'Orthopnea', N'https://product.hstatic.net/1000063620/product/oppo-find-x3-pro-mhm_6edb3abc711448b8baf2c459a01606d3_medium.jpg', CAST(N'2021-02-26' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (14, N'Redmi Note 11S', 13, 6690000, 5990000, N'Poisoning by dental drugs topically applied', N'https://product.hstatic.net/1000063620/product/redmi-note-11-s-mhm_7910d52e42554384ae0e40c506f6a503_medium.jpg', CAST(N'2021-11-02' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (15, N'Xiaomi 11 Lite (5G) New', 11, 9490000, 8190000, N'Reticulosarcoma, lymph nodes of axilla and upper limb', N'https://product.hstatic.net/1000063620/product/mi-11-lite-5g-hong_a7852c5a7c9c465c90738e36de833757_medium.jpg', CAST(N'2021-10-29' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (16, N'Xiaomi 11T', 12, 10990000, 8890000, N'Schizophreniform disorder, in remission', N'https://product.hstatic.net/1000063620/product/xiaomi-11t-mhm_345720b92d7d4926a1c37ff1bf86fc56_medium.jpg', CAST(N'2021-07-27' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (17, N'Xiaomi Black Shark 4', 16, 11990000, 10690000, N'Open fractures involving skull or face with other bones, with other and unspecified intracranial hemorrhage, unspecified state of consciousness', N'https://product.hstatic.net/1000063620/product/xiaomi-black-shark-4-den-mhm_5275e1da1b604981939d6aba2806e169_medium.jpg', CAST(N'2021-08-05' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (18, N'Xiaomi Mi 11', 17, 16790000, 15990000, N'Accident caused by ignition of clothing by unspecified source', N'https://product.hstatic.net/1000063620/product/mi-11-mhm_f35c9b319032400dbd3bd85d84737e5c_medium.jpg', CAST(N'2021-06-25' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (19, N'MacBook Pro M1 (2020)', 12, 28490000, 24290000, N'Scoliosis due to radiation', N'https://product.hstatic.net/1000063620/product/macbook-pro-2020-mhm_dc50e05f702040959479be42515f67b2_medium.jpg', CAST(N'2021-09-20' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (20, N'MacBook Air 2020 13 inch i3 / 8G / 256GB', 8, 23190000, 22590000, N'Syndactyly of toes with fusion of bone', N'https://product.hstatic.net/1000063620/product/macbook-air-2020-mvh22-mhm_652a2ce7a6ed464e8b44ae219c11d528_medium.jpg', CAST(N'2021-12-12' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (21, N'MacBook Air M1 (2020)', 15, 34990000, 31390000, N'Malignant neoplasm of pelvis', N'https://product.hstatic.net/1000063620/product/macbook-m1-2020-mhm_5d92f08d63394422a13ac942f0926449_medium.jpg', CAST(N'2021-07-02' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (22, N'Macbook Pro 14" - M1 Pro/ 14 Core GPU 2021', 18, 54990000, 52590000, N'Hepatitis E without mention of hepatic coma', N'https://product.hstatic.net/1000063620/product/macbook-pro-2021_ada574d840944cd9ad9b8b69ddac6c7c_medium.jpg', CAST(N'2021-07-18' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (23, N'Macbook Pro 16" - M1 Max/ 16 Core GPU 2021', 11, 89990000, 84990000, N'Amphetamine or related acting sympathomimetic abuse, in remission', N'https://product.hstatic.net/1000063620/product/macbook-pro-2021-1_60e0a60d88984c7c809f3cd983f41aa5_medium.jpg', CAST(N'2021-08-20' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (24, N'Microsoft Surface Pro 6', 18, 18890000, 18390000, N'Other specified sites of sprains and strains', N'https://product.hstatic.net/1000063620/product/surrface_6_19cc4ae3b65f4d878cf651b048005cef_medium.jpg', CAST(N'2021-01-06' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (26, N'iPhone 11', 5, 16990000, 13590000, N'no', N'https://product.hstatic.net/1000063620/product/iphone_11_2_956b9f94ce7a404caba7857330a08aa7_medium.jpg', CAST(N'2021-01-06' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (27, N'
iPhone 7 Plus LikeNew', 10, 6590000, 5890000, N'no', N'https://product.hstatic.net/1000063620/product/7_plus_48228889393c494b99767c1f0fd3e971_medium.jpg', CAST(N'2021-07-02' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (28, N'iPhone X LikeNew 99%', 6, 11490000, 8590000, NULL, N'https://product.hstatic.net/1000063620/product/x_404cfe153d41403c949a5650c09d030d_medium.jpg', CAST(N'2021-07-18' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (29, N'iPhone 8 Plus', 5, 8990000, 7690000, NULL, N'https://product.hstatic.net/1000063620/product/iphone_8_plus_be6177e4d4f94093839071b5e3112729_medium.jpg', CAST(N'2021-07-18' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (30, N'Microsoft Surface Laptop 3 13 inch', 10, 43090000, 42590000, NULL, N'https://product.hstatic.net/1000063620/product/surface-laptop-3-13-i7-1065g7-16gb-512gb-1_0686ec4726c7432fba905f750c2eeda0_medium.jpg', CAST(N'2021-07-18' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (31, N'Microsoft Surface Laptop 3 15 inch', 20, 32390000, 31890000, NULL, N'https://product.hstatic.net/1000063620/product/surface-laptop-3-15-amd-ryzen-5-16gb-256gb_02_620865d207894fb7a555b97d71f35e6e_medium.jpg', CAST(N'2021-11-02' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (32, N'Microsoft Surface Pro 7', 15, 23590000, 22990000, NULL, N'https://product.hstatic.net/1000063620/product/surface-pro-7-mhm_a04ca6119fd34472bce6476aa33c52c9_grande_ae86a724420640c6b5019330f5151607_medium.jpg', CAST(N'2021-06-25' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (33, N'MacBook Pro 2020 13 inch', 10, 35990000, 34900000, NULL, N'https://product.hstatic.net/1000063620/product/macbook-pro-2020-hai-phong-mhm_b977d1b364334f10a04dd1a85ee07c13_medium.jpg', CAST(N'2021-06-25' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (34, N'Oppo A55 ', 10, 4990000, 4550000, NULL, N'https://product.hstatic.net/1000063620/product/oppo-a54-mhm_6e2a5a43dac04edeba02ffa0c7db68c5_medium.jpg', CAST(N'2021-04-05' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (35, N'
Oppo A74', 15, 6690000, 5990000, NULL, N'https://product.hstatic.net/1000063620/product/oppo-a74-mhm_6369b8874dd6447788ed1db1b8a07157_medium.jpg', CAST(N'2021-04-05' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (36, N'Oppo A94', 8, 7690000, 6990000, NULL, N'https://product.hstatic.net/1000063620/product/oppo-a94-mhm_af11d9be4d6a40b38f009294a134ec61_medium.jpg', CAST(N'2021-07-02' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (37, N'
Oppo Reno 5 (5G) ', 15, 11990000, 10650000, NULL, N'https://product.hstatic.net/1000063620/product/oppo-reno-5-mhm_7cb9b420bb0943ffa9b7159f86cdcb2d_grande_1d95d9b628f84a9abb92559a81bab14d_medium.jpg', CAST(N'2021-10-29' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (38, N'
Oppo A52', 20, 5990000, 5290000, NULL, N'https://product.hstatic.net/1000063620/product/oppo-a52-mhm_0829d9b5cb19409fa5ff81a9a4f7049c_medium.jpg', CAST(N'2021-10-29' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (39, N'
Oppo A93 ', 10, 7490000, 5550000, NULL, N'https://product.hstatic.net/1000063620/product/oppo-a93-mhm_e89c49672514462f85991800796fad6d_medium.jpg', CAST(N'2021-04-05' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (40, N'Samsung Galaxy S22 Plus', 8, 25990000, 20290000, NULL, N'https://product.hstatic.net/1000063620/product/samsung-galaxy-s22_c8165486dc7145fab06c740546f55604_medium.jpg', CAST(N'2021-04-05' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (41, N'Samsung Galaxy S21 Fe', 30, 16990000, 15990000, NULL, N'https://product.hstatic.net/1000063620/product/s21-fe-mhm_72bc320d7ad24f11a0ce1c803c940d1b_medium.jpg', CAST(N'2021-04-05' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (42, N'
Samsung Galaxy A03', 10, 2990000, 2690000, NULL, N'https://product.hstatic.net/1000063620/product/samsung-03-mhm_8f649961cfa843b7b4e00ce7de7a093f_medium.jpg', CAST(N'2021-04-05' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (43, N'Samsung Galaxy Z Fold3', 20, 41990000, 34990000, NULL, N'https://product.hstatic.net/1000063620/product/fold-3-mhm_53049c7efdcb4443a6264c773ab1bfeb_medium.jpg', CAST(N'2021-07-02' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (44, N'Samsung Galaxy Z Flip3', 15, 23990000, 19990000, NULL, N'https://product.hstatic.net/1000063620/product/flip-3-mhm_a74db73f97554858b6f35072febbafac_medium.jpg', CAST(N'2021-07-02' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (45, N'Samsung Galaxy Tab S7 Fe', 10, 13990000, 10490000, NULL, N'https://product.hstatic.net/1000063620/product/samsung-s7-fe_614dc69044f74f8f953e99b4b8f70fb9_medium.jpg', CAST(N'2021-07-02' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (46, N'Samsung Galaxy S21 5G', 15, 25990000, 23490000, NULL, N'https://product.hstatic.net/1000063620/product/ss-g-s21-trang-mhm_df3145491a884e759c1cd0ab89771d15_medium.jpg', CAST(N'2021-07-02' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (47, N'Samsung Galaxy A51', 12, 9490000, 7490000, NULL, N'https://product.hstatic.net/1000063620/product/a51_73c189b4656d4d6c87a447e3e491e0af_medium.jpg', CAST(N'2021-07-02' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (48, N'Xiaomi Redmi Note 10S', 20, 6490000, 5490000, NULL, N'https://product.hstatic.net/1000063620/product/redmi-note-10s-mhm_97499b3f08a74c21a7fcb013e5c228be_medium.jpg', CAST(N'2021-07-02' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (49, N'Xiaomi Poco M4 Pro (5G)', 15, NULL, 5490000, NULL, N'https://product.hstatic.net/1000063620/product/xiaomi-poco-m4-pro-mhm_db81145af99245bba22273f285e155a5_medium.jpg', CAST(N'2021-04-05' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (50, N'Xiaomi Poco X3 Pro', 7, 6490000, 5650000, NULL, N'https://product.hstatic.net/1000063620/product/xiaomi-poco-x3-pro-mhm_888e4059e99047ba86440355e30de51b_medium.jpg', CAST(N'2021-04-05' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (51, N'Xiaomi Redmi K40 Gaming', 20, 8990000, 8390000, NULL, N'https://product.hstatic.net/1000063620/product/xiaomi-redmi-k40-bac_2966f1e832174938a4210f3c14eec013_medium.jpg', CAST(N'2021-04-05' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (52, N'Xiaomi Redmi K30 ( 5G )', 12, 6150000, 5490000, NULL, N'https://product.hstatic.net/1000063620/product/redmi-9c-mhm_e7d66b514b624c7297d4e5f64f23dc69_medium.jpg', CAST(N'2021-04-05' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (53, N'Xiaomi Redmi K30 Pro', 20, 9990000, 9450000, NULL, N'https://product.hstatic.net/1000063620/product/k30-pro-mhm_6b2599522def45c6a685c1eee2692463_medium.jpg', CAST(N'2021-04-05' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (58, N'exnew', 1, 12, 132, N'z', N'https://product.hstatic.net/1000063620/product/b8e5e448596e3ee1b9acc01bf_large_73bd2809c5604d7291337bb0925e1c33_large_003c45a6d9534f78bc660923ad9b4a83_medium.jpg', CAST(N'2022-03-20' AS Date), NULL)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (62, N'dinh manh lam11', 15, 2, 33, N'1', N'https://product.hstatic.net/1000063620/product/b8e5e448596e3ee1b9acc01bf_large_73bd2809c5604d7291337bb0925e1c33_large_003c45a6d9534f78bc660923ad9b4a83_medium.jpg', CAST(N'2022-03-20' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [quantity], [oldprice], [price], [description], [image_url], [created_date], [category_id]) VALUES (64, N'Iphone cua Lam sau khi Edit', 99, 112233, 334455, N'zzz', N'https://cdn.tgdd.vn/Products/Images/42/236780/iphone-13-mini-blue-2-600x600.jpg', CAST(N'2022-01-31' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (7, N'dinh manh lam', N'0123456899', N'hai phong')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (8, N'lam', N'0349289296', N'hp')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (9, N'dinh manh lam', N'0349289296', N'nb')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (10, N'Đinh Mạnh Lâm', N'0349289296', N'thôn Nam Bình')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (11, N'', N'', N'')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (12, N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__order__30F848ED] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__order__30F848ED]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__account___2F10007B] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__account___2F10007B]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__shipping__300424B4] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__shipping__300424B4]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__categor__267ABA7A] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__categor__267ABA7A]
GO
