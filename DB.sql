USE [master]
GO
/****** Object:  Database [ZvukDB]    Script Date: 05.06.2021 12:07:02 ******/
CREATE DATABASE [ZvukDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ZvukDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ZvukDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ZvukDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ZvukDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ZvukDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ZvukDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ZvukDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ZvukDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ZvukDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ZvukDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ZvukDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ZvukDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ZvukDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ZvukDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ZvukDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ZvukDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ZvukDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ZvukDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ZvukDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ZvukDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ZvukDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ZvukDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ZvukDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ZvukDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ZvukDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ZvukDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ZvukDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ZvukDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ZvukDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ZvukDB] SET  MULTI_USER 
GO
ALTER DATABASE [ZvukDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ZvukDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ZvukDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ZvukDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ZvukDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ZvukDB] SET QUERY_STORE = OFF
GO
USE [ZvukDB]
GO
/****** Object:  Table [dbo].[History]    Script Date: 05.06.2021 12:07:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[EnterDate] [datetime] NOT NULL,
	[Result] [bit] NOT NULL,
 CONSTRAINT [PK_History] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 05.06.2021 12:07:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Artist] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Duration] [time](0) NOT NULL,
	[Label] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypes]    Script Date: 05.06.2021 12:07:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 05.06.2021 12:07:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[TypeId] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTypes]    Script Date: 05.06.2021 12:07:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[History] ON 

INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (1, 1, CAST(N'2021-05-29T20:21:31.463' AS DateTime), 0)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (2, 1, CAST(N'2021-05-29T20:26:20.737' AS DateTime), 0)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (3, 1, CAST(N'2021-05-29T20:27:20.097' AS DateTime), 0)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (4, 1, CAST(N'2021-05-29T20:28:22.767' AS DateTime), 0)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (5, 1, CAST(N'2021-05-29T20:32:45.043' AS DateTime), 0)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (6, 1, CAST(N'2021-05-29T20:34:20.610' AS DateTime), 0)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (7, 1, CAST(N'2021-05-29T20:35:26.820' AS DateTime), 0)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (8, 1, CAST(N'2021-05-29T20:38:28.273' AS DateTime), 0)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (9, 1, CAST(N'2021-05-29T20:39:49.417' AS DateTime), 0)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (10, 1, CAST(N'2021-05-29T20:40:47.640' AS DateTime), 0)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (11, 1, CAST(N'2021-05-29T20:42:26.933' AS DateTime), 0)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (12, 1, CAST(N'2021-05-29T21:04:51.890' AS DateTime), 0)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (13, 1, CAST(N'2021-05-29T21:09:02.930' AS DateTime), 0)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (14, 2, CAST(N'2021-05-29T21:17:28.100' AS DateTime), 0)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (15, 1, CAST(N'2021-05-30T13:42:38.267' AS DateTime), 0)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (16, 1, CAST(N'2021-05-30T14:17:05.377' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (17, 1, CAST(N'2021-05-30T14:17:33.957' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (18, 1, CAST(N'2021-05-30T14:18:33.133' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (19, 1, CAST(N'2021-05-30T14:19:05.917' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (20, 1, CAST(N'2021-05-30T14:19:45.167' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (21, 2, CAST(N'2021-05-30T14:23:03.310' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (22, 2, CAST(N'2021-05-30T14:37:22.860' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (23, 2, CAST(N'2021-05-30T14:41:30.437' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (24, 2, CAST(N'2021-05-30T14:46:13.540' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (25, 2, CAST(N'2021-05-30T14:47:51.093' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (26, 2, CAST(N'2021-05-30T14:50:51.667' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (27, 2, CAST(N'2021-05-30T14:51:18.567' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (28, 2, CAST(N'2021-05-30T14:52:40.823' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (29, 2, CAST(N'2021-05-30T14:57:27.797' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (30, 2, CAST(N'2021-05-30T16:29:19.417' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (31, 2, CAST(N'2021-05-30T16:29:53.273' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (32, 2, CAST(N'2021-05-30T16:33:10.603' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (33, 1, CAST(N'2021-05-30T16:33:24.713' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (34, 2, CAST(N'2021-05-30T16:36:33.660' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (35, 2, CAST(N'2021-05-30T16:37:11.843' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (36, 2, CAST(N'2021-05-30T16:38:37.707' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (37, 2, CAST(N'2021-05-30T16:41:59.107' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (38, 1, CAST(N'2021-05-30T16:42:58.330' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (39, 2, CAST(N'2021-06-01T17:30:31.007' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (40, 1, CAST(N'2021-06-01T17:48:07.463' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (41, 2, CAST(N'2021-06-01T17:48:20.233' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (42, 2, CAST(N'2021-06-02T18:51:32.300' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (43, 1, CAST(N'2021-06-02T19:02:29.603' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (44, 2, CAST(N'2021-06-02T19:05:19.440' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (45, 1, CAST(N'2021-06-02T19:07:57.593' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (46, 2, CAST(N'2021-06-02T19:09:39.970' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (47, 2, CAST(N'2021-06-02T19:16:06.377' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (48, 2, CAST(N'2021-06-02T20:21:26.147' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (49, 2, CAST(N'2021-06-02T20:23:21.170' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (50, 2, CAST(N'2021-06-02T20:24:58.413' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (51, 2, CAST(N'2021-06-02T20:27:26.223' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (52, 2, CAST(N'2021-06-02T20:29:18.867' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (53, 2, CAST(N'2021-06-02T20:30:09.093' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (54, 2, CAST(N'2021-06-02T20:32:25.527' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (55, 3, CAST(N'2021-06-02T20:33:30.820' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (56, 3, CAST(N'2021-06-02T20:39:09.593' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (57, 3, CAST(N'2021-06-02T20:40:28.640' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (58, 3, CAST(N'2021-06-02T20:42:56.040' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (59, 3, CAST(N'2021-06-02T20:45:33.453' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (60, 3, CAST(N'2021-06-02T20:49:40.607' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (61, 3, CAST(N'2021-06-02T20:55:00.433' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (62, 3, CAST(N'2021-06-02T20:55:41.133' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (63, 3, CAST(N'2021-06-02T20:57:18.310' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (64, 3, CAST(N'2021-06-02T20:57:51.460' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (65, 3, CAST(N'2021-06-02T21:01:01.737' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (66, 3, CAST(N'2021-06-02T21:04:00.087' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (67, 3, CAST(N'2021-06-02T21:07:00.143' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (68, 3, CAST(N'2021-06-02T21:07:33.430' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (69, 3, CAST(N'2021-06-02T21:11:21.137' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (70, 3, CAST(N'2021-06-02T21:13:57.647' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (71, 3, CAST(N'2021-06-02T21:17:38.313' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (72, 3, CAST(N'2021-06-02T22:15:38.630' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (73, 3, CAST(N'2021-06-02T22:16:49.480' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (74, 3, CAST(N'2021-06-02T22:28:07.523' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (75, 3, CAST(N'2021-06-02T22:30:17.373' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (76, 3, CAST(N'2021-06-02T22:33:35.450' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (77, 3, CAST(N'2021-06-02T22:36:23.580' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (78, 3, CAST(N'2021-06-02T22:49:08.670' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (79, 3, CAST(N'2021-06-02T22:49:58.067' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (80, 3, CAST(N'2021-06-02T22:55:25.067' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (81, 3, CAST(N'2021-06-02T23:01:08.970' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (82, 3, CAST(N'2021-06-02T23:01:24.593' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (83, 3, CAST(N'2021-06-02T23:04:54.180' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (84, 3, CAST(N'2021-06-04T18:48:36.357' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (85, 3, CAST(N'2021-06-04T18:50:01.803' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (86, 2, CAST(N'2021-06-04T21:44:50.887' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (87, 3, CAST(N'2021-06-04T21:57:20.627' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (88, 3, CAST(N'2021-06-05T10:58:21.383' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (89, 3, CAST(N'2021-06-05T11:00:47.177' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (90, 3, CAST(N'2021-06-05T11:01:26.787' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (91, 3, CAST(N'2021-06-05T11:02:00.350' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (92, 1, CAST(N'2021-06-05T11:03:11.733' AS DateTime), 1)
INSERT [dbo].[History] ([Id], [UserId], [EnterDate], [Result]) VALUES (93, 3, CAST(N'2021-06-05T11:14:16.873' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[History] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Artist], [Name], [Duration], [Label], [Quantity], [TypeId]) VALUES (4, N'Elephant Tree', N'Elephant Tree', CAST(N'00:38:12' AS Time), N'Small Rock Recordings', 42, 1)
INSERT [dbo].[Products] ([Id], [Artist], [Name], [Duration], [Label], [Quantity], [TypeId]) VALUES (5, N'Snail', N'Feral', CAST(N'00:56:00' AS Time), N'Magnetic Records', 42, 1)
INSERT [dbo].[Products] ([Id], [Artist], [Name], [Duration], [Label], [Quantity], [TypeId]) VALUES (6, N'Svrm', N'Rozpad', CAST(N'00:24:07' AS Time), N'900052 Records DK', 32, 3)
INSERT [dbo].[Products] ([Id], [Artist], [Name], [Duration], [Label], [Quantity], [TypeId]) VALUES (7, N'Потьма', N'Дубравлаг', CAST(N'00:22:12' AS Time), N'Потьма', 12, 2)
INSERT [dbo].[Products] ([Id], [Artist], [Name], [Duration], [Label], [Quantity], [TypeId]) VALUES (8, N'Hippie Death Cult', N'Circle of Days', CAST(N'00:37:15' AS Time), N'Heavy Psych Sounds', 23, 1)
INSERT [dbo].[Products] ([Id], [Artist], [Name], [Duration], [Label], [Quantity], [TypeId]) VALUES (9, N'AK-747s', N'Night Party', CAST(N'00:21:57' AS Time), N'Yggdrasil Records', 22, 4)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductTypes] ON 

INSERT [dbo].[ProductTypes] ([Id], [TypeName]) VALUES (1, N'LP 12"')
INSERT [dbo].[ProductTypes] ([Id], [TypeName]) VALUES (2, N'EP 7"')
INSERT [dbo].[ProductTypes] ([Id], [TypeName]) VALUES (3, N'CD')
INSERT [dbo].[ProductTypes] ([Id], [TypeName]) VALUES (4, N'Кассета ')
SET IDENTITY_INSERT [dbo].[ProductTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Patronymic], [DateOfBirth], [TypeId], [Login], [Password]) VALUES (1, N'Алексей', N'Егоров', N'Иванович', CAST(N'2001-10-04' AS Date), 2, N'ale', N'ale')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Patronymic], [DateOfBirth], [TypeId], [Login], [Password]) VALUES (2, N'Мизяк', N'Кириллов', N'Мизякович', CAST(N'2001-12-05' AS Date), 1, N'hohl', N'hohl')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Patronymic], [DateOfBirth], [TypeId], [Login], [Password]) VALUES (3, N'Максим', N'Шейкин', N'Константинович', CAST(N'2001-10-10' AS Date), 1, N'main', N'main')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [Patronymic], [DateOfBirth], [TypeId], [Login], [Password]) VALUES (10, N'Дмитри', N'Академик', N'Николаевич', CAST(N'2000-12-10' AS Date), 2, N'acad', N'acad2000')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[UserTypes] ON 

INSERT [dbo].[UserTypes] ([Id], [TypeName]) VALUES (1, N'Администратор')
INSERT [dbo].[UserTypes] ([Id], [TypeName]) VALUES (2, N'Кладовщик')
SET IDENTITY_INSERT [dbo].[UserTypes] OFF
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_Users]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductTypes] FOREIGN KEY([TypeId])
REFERENCES [dbo].[ProductTypes] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductTypes]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserTypes] FOREIGN KEY([TypeId])
REFERENCES [dbo].[UserTypes] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserTypes]
GO
USE [master]
GO
ALTER DATABASE [ZvukDB] SET  READ_WRITE 
GO
