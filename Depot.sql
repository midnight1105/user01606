USE [master]
GO
/****** Object:  Database [Depot]    Script Date: 2022-12-15 17:03:41 ******/
CREATE DATABASE [Depot] ON  PRIMARY 
( NAME = N'Depot', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Depot.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Depot_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Depot_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Depot] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Depot].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Depot] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Depot] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Depot] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Depot] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Depot] SET ARITHABORT OFF 
GO
ALTER DATABASE [Depot] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Depot] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Depot] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Depot] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Depot] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Depot] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Depot] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Depot] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Depot] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Depot] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Depot] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Depot] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Depot] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Depot] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Depot] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Depot] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Depot] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Depot] SET RECOVERY FULL 
GO
ALTER DATABASE [Depot] SET  MULTI_USER 
GO
ALTER DATABASE [Depot] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Depot] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Depot', N'ON'
GO
USE [Depot]
GO
/****** Object:  Table [dbo].[adminer]    Script Date: 2022-12-15 17:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adminer](
	[工号] [nchar](10) NOT NULL,
	[库房编号] [nchar](10) NOT NULL,
	[姓名] [nchar](10) NULL,
	[性别] [nchar](1) NULL,
	[年龄] [nchar](3) NULL,
	[电话] [nchar](11) NULL,
	[工资] [nchar](10) NULL,
	[密码] [nchar](10) NULL,
 CONSTRAINT [PK_adminer] PRIMARY KEY CLUSTERED 
(
	[工号] ASC,
	[库房编号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[homead]    Script Date: 2022-12-15 17:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[homead](
	[库房编号] [nchar](10) NULL,
	[工号] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[homepart]    Script Date: 2022-12-15 17:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[homepart](
	[库房编号] [nchar](10) NULL,
	[零件号] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[house]    Script Date: 2022-12-15 17:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[house](
	[库房编号] [nchar](10) NOT NULL,
	[地址] [nchar](20) NULL,
	[面积] [nchar](10) NULL,
 CONSTRAINT [PK_house] PRIMARY KEY CLUSTERED 
(
	[库房编号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partaddtable]    Script Date: 2022-12-15 17:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partaddtable](
	[零件号] [nchar](10) NULL,
	[入库量] [nchar](10) NULL,
	[时间] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partoutable]    Script Date: 2022-12-15 17:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partoutable](
	[零件号] [nchar](10) NULL,
	[出库量] [nchar](10) NULL,
	[时间] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[parts]    Script Date: 2022-12-15 17:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[parts](
	[零件号] [nchar](10) NOT NULL,
	[库房编号] [nchar](10) NOT NULL,
	[零件名] [nchar](10) NULL,
	[规格] [nchar](20) NULL,
	[价格] [nchar](10) NULL,
	[库存数量] [nchar](10) NULL,
 CONSTRAINT [PK_parts] PRIMARY KEY CLUSTERED 
(
	[零件号] ASC,
	[库房编号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partsum]    Script Date: 2022-12-15 17:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partsum](
	[零件号] [nchar](10) NULL,
	[库房编号] [nchar](10) NULL,
	[库存数量] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_2]    Script Date: 2022-12-15 17:03:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_2]
AS
SELECT     dbo.adminer.*
FROM         dbo.adminer INNER JOIN
                      dbo.homead ON dbo.adminer.库房编号 = dbo.homead.库房编号 INNER JOIN
                      dbo.homepart ON dbo.adminer.库房编号 = dbo.homepart.库房编号 INNER JOIN
                      dbo.house ON dbo.adminer.库房编号 = dbo.house.库房编号 INNER JOIN
                      dbo.parts ON dbo.adminer.库房编号 = dbo.parts.库房编号 INNER JOIN
                      dbo.partsum ON dbo.adminer.库房编号 = dbo.partsum.库房编号 CROSS JOIN
                      dbo.partaddtable CROSS JOIN
                      dbo.partoutable
GO
INSERT [dbo].[adminer] ([工号], [库房编号], [姓名], [性别], [年龄], [电话], [工资], [密码]) VALUES (N'A101      ', N'H1        ', N'小明        ', N'男', N'20 ', N'884433     ', N'4000      ', N'123       ')
INSERT [dbo].[adminer] ([工号], [库房编号], [姓名], [性别], [年龄], [电话], [工资], [密码]) VALUES (N'A102      ', N'H1        ', N'笑天        ', N'男', N'22 ', N'665588     ', N'3000      ', N'456       ')
INSERT [dbo].[adminer] ([工号], [库房编号], [姓名], [性别], [年龄], [电话], [工资], [密码]) VALUES (N'A103      ', N'H2        ', N'肖明        ', N'男', N'20 ', N'664499     ', N'5000      ', N'456       ')
INSERT [dbo].[adminer] ([工号], [库房编号], [姓名], [性别], [年龄], [电话], [工资], [密码]) VALUES (N'A104      ', N'H2        ', N'诺诺        ', N'女', N'44 ', N'669977     ', N'6000      ', N'456       ')
INSERT [dbo].[adminer] ([工号], [库房编号], [姓名], [性别], [年龄], [电话], [工资], [密码]) VALUES (N'A105      ', N'H3        ', N'晓欣        ', N'男', N'23 ', N'628953     ', N'7000      ', N'789       ')
INSERT [dbo].[adminer] ([工号], [库房编号], [姓名], [性别], [年龄], [电话], [工资], [密码]) VALUES (N'A106      ', N'H4        ', N'测试名       ', N'女', N'24 ', N'648456     ', N'6000      ', N'789       ')
GO
INSERT [dbo].[homead] ([库房编号], [工号]) VALUES (N'H1        ', N'A101      ')
INSERT [dbo].[homead] ([库房编号], [工号]) VALUES (N'H1        ', N'A102      ')
INSERT [dbo].[homead] ([库房编号], [工号]) VALUES (N'H2        ', N'A104      ')
INSERT [dbo].[homead] ([库房编号], [工号]) VALUES (N'H3        ', N'A105      ')
INSERT [dbo].[homead] ([库房编号], [工号]) VALUES (N'H4        ', N'A106      ')
INSERT [dbo].[homead] ([库房编号], [工号]) VALUES (N'H2        ', N'A103      ')
GO
INSERT [dbo].[homepart] ([库房编号], [零件号]) VALUES (N'H1        ', N'PTX3      ')
INSERT [dbo].[homepart] ([库房编号], [零件号]) VALUES (N'H1        ', N'PTX5      ')
INSERT [dbo].[homepart] ([库房编号], [零件号]) VALUES (N'H2        ', N'PTX4      ')
INSERT [dbo].[homepart] ([库房编号], [零件号]) VALUES (N'H2        ', N'PZX2      ')
INSERT [dbo].[homepart] ([库房编号], [零件号]) VALUES (N'H3        ', N'PTX1      ')
INSERT [dbo].[homepart] ([库房编号], [零件号]) VALUES (N'H1        ', N'LJ01      ')
GO
INSERT [dbo].[house] ([库房编号], [地址], [面积]) VALUES (N'H1        ', N'广东省广州市              ', N'1万平方米     ')
INSERT [dbo].[house] ([库房编号], [地址], [面积]) VALUES (N'H2        ', N'广西省柳州市              ', N'8万平方米     ')
INSERT [dbo].[house] ([库房编号], [地址], [面积]) VALUES (N'H3        ', N'广东省佛山市              ', N'3万平方米     ')
INSERT [dbo].[house] ([库房编号], [地址], [面积]) VALUES (N'H4        ', N'广东惠州市               ', N'2.5万平方米   ')
INSERT [dbo].[house] ([库房编号], [地址], [面积]) VALUES (N'H5        ', N'广东省河源市              ', N'3万平方米     ')
INSERT [dbo].[house] ([库房编号], [地址], [面积]) VALUES (N'KF01      ', N'一楼1                 ', N'10        ')
GO
INSERT [dbo].[partaddtable] ([零件号], [入库量], [时间]) VALUES (N'LJ01      ', N'100       ', N'2022-12-15')
GO
INSERT [dbo].[partoutable] ([零件号], [出库量], [时间]) VALUES (N'LJ01      ', N'2         ', N'2022-12-15')
GO
INSERT [dbo].[parts] ([零件号], [库房编号], [零件名], [规格], [价格], [库存数量]) VALUES (N'LJ01      ', N'H1        ', N'桌子        ', N'一个                  ', N'1         ', N'98        ')
GO
INSERT [dbo].[partsum] ([零件号], [库房编号], [库存数量]) VALUES (N'LJ01      ', N'H1        ', N'100       ')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[83] 4[7] 2[4] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "adminer"
            Begin Extent = 
               Top = 136
               Left = 32
               Bottom = 256
               Right = 174
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "homead"
            Begin Extent = 
               Top = 54
               Left = 440
               Bottom = 144
               Right = 582
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "homepart"
            Begin Extent = 
               Top = 159
               Left = 438
               Bottom = 249
               Right = 580
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "house"
            Begin Extent = 
               Top = 12
               Left = 244
               Bottom = 117
               Right = 386
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "partaddtable"
            Begin Extent = 
               Top = 85
               Left = 631
               Bottom = 190
               Right = 773
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "partoutable"
            Begin Extent = 
               Top = 258
               Left = 625
               Bottom = 363
               Right = 767
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "parts"
            Begin Extent = 
               Top = 319
               Left = 242
               Bottom = 439
               Right = 384
            End
            DisplayFlags ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'= 280
            TopColumn = 0
         End
         Begin Table = "partsum"
            Begin Extent = 
               Top = 259
               Left = 441
               Bottom = 364
               Right = 583
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
USE [master]
GO
ALTER DATABASE [Depot] SET  READ_WRITE 
GO
