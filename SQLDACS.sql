USE [master]
GO
/****** Object:  Database [BookingHair]    Script Date: 6/7/2023 4:07:26 PM ******/
CREATE DATABASE [BookingHair]
GO
USE [BookingHair]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/7/2023 4:07:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 6/7/2023 4:07:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[AppointmentId] [int] IDENTITY(1,1) NOT NULL,
	[ServiceId] [int] NULL,
	[BarberId] [int] NULL,
	[UserId] [nvarchar](128) NULL,
	[SeatId] [int] NULL,
	[StartDate] [date] NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [datetime] NULL,
	[Status] [int] NULL,
	[Note] [nvarchar](256) NULL,
 CONSTRAINT [PK_Appointments] PRIMARY KEY CLUSTERED 
(
	[AppointmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/7/2023 4:07:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/7/2023 4:07:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/7/2023 4:07:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/7/2023 4:07:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/7/2023 4:07:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Barbers]    Script Date: 6/7/2023 4:07:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barbers](
	[BarberId] [int] IDENTITY(1,1) NOT NULL,
	[BarberName] [nvarchar](256) NULL,
	[Image] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
 CONSTRAINT [PK_Barbers] PRIMARY KEY CLUSTERED 
(
	[BarberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 6/7/2023 4:07:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	[Image] [nvarchar](256) NULL,
	[CreateDate] [date] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 6/7/2023 4:07:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratings](
	[RateId] [int] IDENTITY(1,1) NOT NULL,
	[AppointmentId] [int] NULL,
	[RateScore] [int] NULL,
	[Comment] [nvarchar](256) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Ratings] PRIMARY KEY CLUSTERED 
(
	[RateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seat]    Script Date: 6/7/2023 4:07:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat](
	[SeatId] [int] IDENTITY(1,1) NOT NULL,
	[SeatNumber] [int] NULL,
	[Availability] [int] NULL,
 CONSTRAINT [PK_Seat] PRIMARY KEY CLUSTERED 
(
	[SeatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 6/7/2023 4:07:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ServiceId] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Styles]    Script Date: 6/7/2023 4:07:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Styles](
	[StyleId] [int] IDENTITY(1,1) NOT NULL,
	[StyleName] [nvarchar](256) NULL,
	[Image] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Styles] PRIMARY KEY CLUSTERED 
(
	[StyleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Appointments] ON 

INSERT [dbo].[Appointments] ([AppointmentId], [ServiceId], [BarberId], [UserId], [SeatId], [StartDate], [StartTime], [EndTime], [Status], [Note]) VALUES (1, 1, 3, N'5f0bd68f-c57c-4f71-8762-e9f21f69682f', 5, CAST(N'2023-05-30' AS Date), CAST(N'10:00:00' AS Time), NULL, 1, N'Tui muốn cắt thiệc đẹp')
INSERT [dbo].[Appointments] ([AppointmentId], [ServiceId], [BarberId], [UserId], [SeatId], [StartDate], [StartTime], [EndTime], [Status], [Note]) VALUES (2, 2, 3, N'594af332-fa31-4708-a882-b7a9dba19897', 2, CAST(N'2023-06-03' AS Date), CAST(N'10:00:00' AS Time), NULL, 1, N'Cho tôi đặt lịch hẹn')
INSERT [dbo].[Appointments] ([AppointmentId], [ServiceId], [BarberId], [UserId], [SeatId], [StartDate], [StartTime], [EndTime], [Status], [Note]) VALUES (1002, 2, 3, N'594af332-fa31-4708-a882-b7a9dba19897', 3, CAST(N'2023-06-03' AS Date), CAST(N'13:00:00' AS Time), NULL, 1, N'a')
INSERT [dbo].[Appointments] ([AppointmentId], [ServiceId], [BarberId], [UserId], [SeatId], [StartDate], [StartTime], [EndTime], [Status], [Note]) VALUES (1003, 3, 3, N'594af332-fa31-4708-a882-b7a9dba19897', 3, CAST(N'2023-06-03' AS Date), CAST(N'15:00:00' AS Time), NULL, 1, N'Chào')
INSERT [dbo].[Appointments] ([AppointmentId], [ServiceId], [BarberId], [UserId], [SeatId], [StartDate], [StartTime], [EndTime], [Status], [Note]) VALUES (1004, 3, 3, N'594af332-fa31-4708-a882-b7a9dba19897', 5, CAST(N'2023-06-08' AS Date), CAST(N'10:30:00' AS Time), NULL, 1, N'Chào')
SET IDENTITY_INSERT [dbo].[Appointments] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'Member')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'594af332-fa31-4708-a882-b7a9dba19897', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5f0bd68f-c57c-4f71-8762-e9f21f69682f', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e4eaf03a-7473-45fa-9ade-b0a227687cd1', N'1')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'594af332-fa31-4708-a882-b7a9dba19897', N'nasumen31@gmail.com', 0, N'AMg9C1EpfRBncPebmku6RWh43b77kuq8n6309lhQ5gRJq5zR14OCU40mZXxNlboMIw==', N'c85f340d-0772-4896-92fb-932d4ff38eed', N'01265044080', 0, 0, NULL, 1, 0, N'MinhTri')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'5f0bd68f-c57c-4f71-8762-e9f21f69682f', N'Vy1@gmail.com', 0, N'AKw4BjNqJmrXUJ6QfjGg2pmuy+r+6knFCEcvdiIz/YYWxK7G3k8zwKknqbVOdUtfGg==', N'689fb144-1525-4b5b-82de-8e365b6dfe92', N'0354698752', 0, 0, NULL, 1, 0, N'Thuyvy')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e4eaf03a-7473-45fa-9ade-b0a227687cd1', N'admin@admin.com', 0, N'AEbzWe4AnAOcVxFsKtD0EIoKZsAYb4U5iKynxigg+2iB5s86fXFcGKVUs5O3a7RAgA==', N'c8f7d8f9-dbfd-48e4-837c-e8f5bc922360', N'07685667899', 0, 0, NULL, 1, 0, N'Admin')
GO
SET IDENTITY_INSERT [dbo].[Barbers] ON 

INSERT [dbo].[Barbers] ([BarberId], [BarberName], [Image], [Description]) VALUES (1, N'Nguyễn Đỗ Bảo Thanh', N'tho3.jpg', N'Đối với Thanh thì ngoại hình là một yếu tố hết sức quan trọng, chỉ xếp sau tài năng.')
INSERT [dbo].[Barbers] ([BarberId], [BarberName], [Image], [Description]) VALUES (2, N'Nguyễn Bảo Ngọc', N'kieutoc25.jpg', N'Hãy cho tóc của bạn bay lượn tự do và tỏa sáng với sự tự tin.')
INSERT [dbo].[Barbers] ([BarberId], [BarberName], [Image], [Description]) VALUES (3, N'Lê Ngọc Thương', N'tho4.jpg', N'Mỗi người đều có một vẻ đẹp riêng. Hãy để tôi giúp bạn khám phá vẻ đẹp đó.')
INSERT [dbo].[Barbers] ([BarberId], [BarberName], [Image], [Description]) VALUES (4, N'Sinh Anh', N'tho2.jpg', N'Không có gì tuyệt đẹp hơn khi bạn rời khỏi ghế tóc của tôi với nụ cười hạnh phúc trên môi.')
SET IDENTITY_INSERT [dbo].[Barbers] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([NewId], [Title], [Description], [Image], [CreateDate]) VALUES (1, N'Tóc Lod', N'Một kiểu tóc giúp những ưu điểm trên gương mặt được tỏa sáng hơn, một màu tóc xinh xắn giúp làn da trông tươi tắn rạng ngời hơn, đó chính là một mẫu tóc đẹp.', N'kieutoc26.jpg', CAST(N'2023-05-27' AS Date))
INSERT [dbo].[News] ([NewId], [Title], [Description], [Image], [CreateDate]) VALUES (2, N'Tóc dài xoăn sóng lớn', N'Xoăn sóng lớn cũng là xu hướng mà nhiều người theo đuổi bởi vì em ấy dễ chăm sóc, và đặc biệt là phù hợp với nhiều dáng mặt và phong cách trang điểm khác nhau.', N'kieutoc20.jpg', CAST(N'2023-05-27' AS Date))
INSERT [dbo].[News] ([NewId], [Title], [Description], [Image], [CreateDate]) VALUES (3, N'Tóc layer ngang vai', N'Mặc dù tóc layer đã không còn xa lạ nữa, nhưng độ hot mà em ấy mang đến từ ngày càng ra tăng. Thời gian gần kiểu tóc duỗi nhẹ, kết hợp với những đường cắt tỉa layer đang là xu hướng được rất nhiều cô gái lựa chọn.', N'kieutoc13.jpg', CAST(N'2023-05-27' AS Date))
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[Seat] ON 

INSERT [dbo].[Seat] ([SeatId], [SeatNumber], [Availability]) VALUES (1, 1, 1)
INSERT [dbo].[Seat] ([SeatId], [SeatNumber], [Availability]) VALUES (2, 2, 1)
INSERT [dbo].[Seat] ([SeatId], [SeatNumber], [Availability]) VALUES (3, 3, 1)
INSERT [dbo].[Seat] ([SeatId], [SeatNumber], [Availability]) VALUES (4, 4, 1)
INSERT [dbo].[Seat] ([SeatId], [SeatNumber], [Availability]) VALUES (5, 5, 1)
SET IDENTITY_INSERT [dbo].[Seat] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([ServiceId], [ServiceName], [Description], [Price]) VALUES (1, N'Cắt tóc', N'Nếu có một kiểu tóc phù hợp, bạn có thể che đi những khuyết điểm trên khuôn mặt, cũng như tôn lên những điểm mạnh của bạn, giúp khuôn mặt trở nên thu hút hơn.', CAST(900000 AS Decimal(18, 0)))
INSERT [dbo].[Services] ([ServiceId], [ServiceName], [Description], [Price]) VALUES (2, N'Nhuộm', N'Đổi màu tóc không chỉ giúp bạn trở nên cá tính, làm sáng da hơn mà nhiều màu tóc hợp với gương mặt sẽ giúp bạn trông xinh đẹp hơn rất nhiều. ', CAST(950000 AS Decimal(18, 0)))
INSERT [dbo].[Services] ([ServiceId], [ServiceName], [Description], [Price]) VALUES (3, N'Uốn', N'Tóc uốn luôn là sự lựa chọn hàng đầu đối với những chị em yêu thích làm đẹp cho tóc bởi sự đa dạng về kiểu dáng, dễ kết hợp trang phục, giúp gương mặt bạn trông trẻ trung, gợi cảm hơn hẳn!', CAST(700000 AS Decimal(18, 0)))
INSERT [dbo].[Services] ([ServiceId], [ServiceName], [Description], [Price]) VALUES (4, N'Duỗi', N'Một mái tóc thẳng mượt óng ả mang đến vẻ đẹp hiện đại và thanh lịch cho phái đẹp.', CAST(970000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Styles] ON 

INSERT [dbo].[Styles] ([StyleId], [StyleName], [Image], [Description], [Price]) VALUES (1, N'Tóc dài lượn sóng lơi', N'kieutoc1.jpg', N'Tóc uốn gợn sóng lơi hoặc gợn sóng, được tạo từ những lọn tóc xoăn. Đây là sự lựa chọn hoàn hảo cho bất kỳ ai đang tìm kiếm một kiểu tóc đem đến vẻ ngoài mềm mại, dịu dàng, tự nhiên.', CAST(500000 AS Decimal(18, 0)))
INSERT [dbo].[Styles] ([StyleId], [StyleName], [Image], [Description], [Price]) VALUES (2, N'Tóc ngắn layer', N'kieutoc6.jpg', N'Tóc layer ngắn được cách tỉa so le các lọn tóc, lớp ngắn ở tầng trên và lớp dài ở tầng dưới, giúp mái tóc trông dày và bồng bềnh hơn, thích hợp với các bạn nữ tóc mỏng.', CAST(480000 AS Decimal(18, 0)))
INSERT [dbo].[Styles] ([StyleId], [StyleName], [Image], [Description], [Price]) VALUES (3, N'Tóc dài mái thư', N'kieutoc5.jpg', N'Tóc mái thưa, tạo kiểu cắt mái thưa so le rồi phần đuôi tóc buộc cao, là một trong những kiểu tóc mang đến sự năng động và khoẻ khoắn.', CAST(800000 AS Decimal(18, 0)))
INSERT [dbo].[Styles] ([StyleId], [StyleName], [Image], [Description], [Price]) VALUES (4, N'Tóc ngắn nữ uốn cụp', N'kieutoc9.jpg', N'Kiểu tóc uốn cụp đang được ưa chuộng và rất hợp với các khuôn mặt dài, nhỏ vì nó giúp khuôn mặt trở nên cân đối và tươi sáng hơn.', CAST(800000 AS Decimal(18, 0)))
INSERT [dbo].[Styles] ([StyleId], [StyleName], [Image], [Description], [Price]) VALUES (5, N'Tóc ngắn nữ xoăn sóng nước lọn to', N'kieutoc16.jpg', N'Kiểu tóc này cực kỳ hợp với những khuôn mặt dài, gầy và theo đuổi phong cách dịu dàng, nữ tính. Kiểu tóc ngắn xoăn sóng nước lọn to đang là xu hướng làm tóc của các bạn nữ hiện nay.', CAST(700000 AS Decimal(18, 0)))
INSERT [dbo].[Styles] ([StyleId], [StyleName], [Image], [Description], [Price]) VALUES (6, N'Tóc mullet', N'kieutoc2.jpg', N'Đam mê tóc ngắn những thích phong cách cá tính, mới lạ thì không thể bỏ qua tóc mullet được.', CAST(480000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Styles] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/7/2023 4:07:26 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/7/2023 4:07:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/7/2023 4:07:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 6/7/2023 4:07:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 6/7/2023 4:07:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/7/2023 4:07:26 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_AspNetUsers]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_Barbers] FOREIGN KEY([BarberId])
REFERENCES [dbo].[Barbers] ([BarberId])
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_Barbers]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_Seat] FOREIGN KEY([SeatId])
REFERENCES [dbo].[Seat] ([SeatId])
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_Seat]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_Services] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([ServiceId])
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_Services]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Appointments] FOREIGN KEY([AppointmentId])
REFERENCES [dbo].[Appointments] ([AppointmentId])
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Appointments]
GO
USE [master]
GO
ALTER DATABASE [BookingHair] SET  READ_WRITE 
GO
