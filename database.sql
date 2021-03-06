USE [master]
GO
/****** Object:  Database [banmypham]    Script Date: 4/29/2022 9:55:53 AM ******/
CREATE DATABASE [banmypham]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'banmypham', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\banmypham.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'banmypham_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\banmypham_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [banmypham] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [banmypham].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [banmypham] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [banmypham] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [banmypham] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [banmypham] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [banmypham] SET ARITHABORT OFF 
GO
ALTER DATABASE [banmypham] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [banmypham] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [banmypham] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [banmypham] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [banmypham] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [banmypham] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [banmypham] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [banmypham] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [banmypham] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [banmypham] SET  ENABLE_BROKER 
GO
ALTER DATABASE [banmypham] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [banmypham] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [banmypham] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [banmypham] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [banmypham] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [banmypham] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [banmypham] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [banmypham] SET RECOVERY FULL 
GO
ALTER DATABASE [banmypham] SET  MULTI_USER 
GO
ALTER DATABASE [banmypham] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [banmypham] SET DB_CHAINING OFF 
GO
ALTER DATABASE [banmypham] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [banmypham] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [banmypham] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [banmypham] SET QUERY_STORE = OFF
GO
USE [banmypham]
GO
/****** Object:  Table [dbo].[About]    Script Date: 4/29/2022 9:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 4/29/2022 9:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NULL,
	[ObjectName] [nvarchar](256) NULL,
	[Address] [nvarchar](256) NULL,
	[Mobile] [varchar](20) NULL,
	[Website] [varchar](256) NULL,
	[Email] [varchar](256) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Contact__3214EC07B68E50F5] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credential]    Script Date: 4/29/2022 9:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credential](
	[UserGroupId] [varchar](50) NOT NULL,
	[RoleId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Credential_1] PRIMARY KEY CLUSTERED 
(
	[UserGroupId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 4/29/2022 9:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](256) NULL,
	[Address] [nvarchar](256) NULL,
	[Content] [nvarchar](max) NULL,
	[Reply] [nvarchar](max) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Feedback__3214EC07ABFD67FA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 4/29/2022 9:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[Id] [uniqueidentifier] NOT NULL,
	[CoppyRight] [nvarchar](100) NULL,
	[Address] [nvarchar](256) NULL,
	[PhoneNumber] [nvarchar](256) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Footer__3214EC07852F6A97] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 4/29/2022 9:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](256) NOT NULL,
	[Link] [nvarchar](256) NULL,
	[DisplayOrder] [int] NULL,
	[ParentId] [int] NULL,
	[Target] [nvarchar](256) NOT NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Menu__3214EC079B6A10D6] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 4/29/2022 9:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Summary] [nvarchar](max) NULL,
	[MetaTitle] [varchar](256) NULL,
	[Description] [nvarchar](max) NULL,
	[UrlImage] [nvarchar](256) NULL,
	[NewsCategoryId] [uniqueidentifier] NULL,
	[Warranty] [int] NULL,
	[MetaKeywords] [nvarchar](256) NULL,
	[MetaDescriptions] [nvarchar](256) NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Tag] [nvarchar](256) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Content__3214EC0722536217] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsCategory]    Script Date: 4/29/2022 9:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsCategory](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[MetaTitle] [varchar](256) NULL,
	[ParentId] [int] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](256) NULL,
	[MetaKeywords] [nvarchar](256) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Category__3214EC07DEE8C6AA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 4/29/2022 9:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ShipName] [nvarchar](256) NOT NULL,
	[ShipPhone] [nvarchar](50) NOT NULL,
	[ShipAddress] [nvarchar](256) NOT NULL,
	[ShipEmail] [varchar](256) NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Order__3214EC07DF9E2F66] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 4/29/2022 9:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ProductId] [uniqueidentifier] NOT NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/29/2022 9:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Code] [decimal](18, 0) NULL,
	[MetaTitle] [nvarchar](256) NULL,
	[Description] [nvarchar](max) NULL,
	[UrlImage] [nvarchar](256) NULL,
	[Price] [decimal](18, 0) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[IncludeVAT] [bit] NULL,
	[Quantity] [int] NULL,
	[ProductCategoryId] [uniqueidentifier] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[MetaKeywords] [nvarchar](256) NULL,
	[MetaDescriptions] [nvarchar](256) NULL,
	[TopHot] [bit] NULL,
	[IsNormalProduct2] [bit] NULL,
	[IsNormalProduct1] [bit] NULL,
	[IsNewProduct] [bit] NULL,
	[ViewCount] [int] NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Product__3214EC072E0A9E49] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 4/29/2022 9:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[MetaTitle] [varchar](256) NULL,
	[ParentId] [int] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](256) NULL,
	[MetaKeywords] [nvarchar](256) NULL,
	[MetaDescriptions] [nvarchar](256) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__ProductC__3214EC077834B296] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 4/29/2022 9:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 4/29/2022 9:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UrlImage] [nvarchar](256) NOT NULL,
	[DisplayOrder] [int] NULL,
	[Link] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Slide__3214EC073DFECF16] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 4/29/2022 9:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [uniqueidentifier] NOT NULL,
	[GroupId] [varchar](50) NULL,
	[AvatarUrl] [nvarchar](256) NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[ConfirmPassword] [varchar](50) NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[ResetPasswordCode] [nvarchar](100) NULL,
	[Email] [varchar](256) NULL,
	[Address] [nvarchar](max) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__User__3214EC07B2B93D14] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 4/29/2022 9:55:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[About] ([Id], [Title], [Description], [Content], [IsDeleted], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (N'71725cfd-cf6d-49d9-b152-9102907d997e', N'Giới thiệu thông tin cửa hàng,  sứ mệnh cửa hàng', N'Beauty Garden là hệ thống phân phối Mỹ phẩm chính hãng hàng đầu Việt Nam', N'<p>Cung cấp mỹ phẩm l&agrave;m đẹp ch&iacute;nh h&atilde;ng &ndash; chất lượng tốt &ndash; gi&aacute; tốt nhất thị trường</p>

<p><img alt="iconimg" src="https://beautygarden.vn/lib/images/icon-img.png?v=1" /></p>

<p>Với mục ti&ecirc;u mang đến cơ hội trải nghiệm c&aacute;c sản phẩm l&agrave;m đẹp chất lượng tốt &ndash; gi&aacute; tốt nhất thị trường, g&oacute;p phần đắp đầy những vẻ đẹp khuyết thiếu, truyền cảm hứng d&ugrave;ng mỹ phẩm v&agrave; gi&uacute;p vẻ đẹpViệt tỏa s&aacute;ng, Beauty Garden lu&ocirc;n kh&ocirc;ng ngừng phấn đấu để ho&agrave;n thiện chất lượng dịch vụ của ch&iacute;nh m&igrave;nh.</p>

<p>Gần 7 năm kinh nghiệm hoạt động trong lĩnh vực mỹ phẩm l&agrave;m đẹp, hiện đội ngũ nh&acirc;n vi&ecirc;n của Beauty Garden đ&atilde; l&ecirc;n đến 150 người c&ugrave;ng hệ thống cửa h&agrave;ng trải khắp ba miền đất nước. Beauty Garden đang dần khẳng định được vị thế của m&igrave;nh tr&ecirc;n thương trường v&agrave; chiếm được tin y&ecirc;u của đ&ocirc;ng đảo qu&yacute; kh&aacute;ch h&agrave;ng.</p>

<p><img alt="hinh anh cong ty" src="https://beautygarden.vn/lib/images/left_img_w.png?v=1" /></p>

<p><img alt="hinh anh cong ty" src="https://beautygarden.vn/lib/images/right_img_w.png?v=1" /></p>

<p>6&nbsp;năm</p>

<p>3&nbsp;miền</p>

<p>150&nbsp;nh&acirc;n vi&ecirc;n</p>

<h2>BEAUTY GARDEN<br />
C&Oacute; NHỮNG G&Igrave;?</h2>

<p>Ph&acirc;n phối mỹ phẩm ch&iacute;nh h&atilde;ng c&oacute; xuất xứ nguồn gốc r&otilde; r&agrave;ng: H&agrave;ng nhập khẩu, h&agrave;ng nhập khẩu từ Mỹ, Ph&aacute;p, Anh, Nhật, H&agrave;n, Th&aacute;i Lan,...</p>

<p>Sản phẩm đa dạng: makeup, chăm s&oacute;c da, chăm s&oacute;c t&oacute;c, thực phẩm chức năng, phụ kiện l&agrave;m đẹp,... đảm bảo phục vụ nhu cầu l&agrave;m đẹp của chị em.</p>

<p><img alt="hinh anh cong ty" src="https://beautygarden.vn/lib/images/right_img_for.png?v=1" /></p>

<p><img alt="hinh anh cong ty" src="https://beautygarden.vn/lib/images/center_img_for.png?v=1" /></p>

<h2>TẠI SAO N&Ecirc;N MUA H&Agrave;NG<br />
TẠI BEAUTY GARDEN?</h2>

<p><img alt="hinh anh cong ty" src="https://beautygarden.vn/lib/images/left_img_fi.png?v=1" /></p>

<p>Mỹ phẩm ch&iacute;nh h&atilde;ng &ndash; chất lượng tốt &ndash; gi&aacute; tốt nhất thị trường.</p>

<ul>
	<li>Đội ngũ nh&acirc;n vi&ecirc;n tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm v&agrave; tận t&acirc;m với nghề.</li>
	<li>Hệ thống 11 chi nh&aacute;nh tại 3 miền kh&aacute;ch tiện lợi đến tận nơi xem h&agrave;ng. Dễ d&agrave;ng mua h&agrave;ng online qua fanpage hoặc website.</li>
	<li>H&igrave;nh thức thanh to&aacute;n linh hoạt: chuyển khoản, ship COD</li>
	<li>C&ocirc;ng ty uy t&iacute;n, nhiều năm kinh nghiệm ph&aacute;t triển trong lĩnh vực mỹ phẩm l&agrave;m đẹp.</li>
	<li>L&agrave; đối t&aacute;c của nhiều thương hiệu mỹ phẩm nổi tiếng The Face Shop, TonyMoly, The Body Shop, Mac,...sss</li>
</ul>
<iframe width="560" height="315" src="https://www.youtube.com/embed/Glqn9l-Smnw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<p><img alt="hinh anh cong ty" src="https://beautygarden.vn/lib/images/center_img_fi.png?v=1" /></p>
', 0, NULL, NULL, N'admin', CAST(N'2022-04-25T15:07:12.5312129+07:00' AS DateTimeOffset))
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([Id], [Title], [ObjectName], [Address], [Mobile], [Website], [Email], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (1, N'Chi nhánh 1', N'Cơ sở Hà Nội', N'48 Hai Bà Trưng, Hà Nội', N'0236.478.479', N'https://freestylehanoi.com.vn', N'freestylehanoi@gmail.com', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2020-12-19T19:37:14.7001247+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Contact] ([Id], [Title], [ObjectName], [Address], [Mobile], [Website], [Email], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (2, N'Chi nhánh 2', N'Cơ sở Quảng Nam', N'48 Nguyễn Trí Thanh, Hội An', N'0235.487.489', N'https://freestylehoian.com.vn', N'freestylehoian@gmail.com', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2022-04-28T09:44:01.6803291+07:00' AS DateTimeOffset), N'admin', 0)
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'ADD_USER')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'CREATE_CREDENTIAL')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'CREATE_ROLE')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'CREATE_USER_GROUP')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'DELETE_CREDENTIAL')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'DELETE_ROLE')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'DELETE_USER')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'DELETE_USER_GROUP')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'EDIT_USER')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'UPDATE_ROLE')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'UPDATE_USER_GROUP')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'VIEW_CREDENTIAL')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'VIEW_LAYOUT')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'VIEW_ROLE')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'VIEW_USER')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'VIEW_USER_GROUP')
GO
INSERT [dbo].[Feedback] ([Id], [Name], [Phone], [Email], [Address], [Content], [Reply], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'a5ef101e-c644-4687-acb6-038d1586dfe6', N'Lê Văn D', N'0394074355', N'levan@gmail.com', N'Hà Nội', N'shop chất lượng', NULL, CAST(N'2022-04-28T10:06:43.4094588+07:00' AS DateTimeOffset), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Footer] ([Id], [CoppyRight], [Address], [PhoneNumber], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'044bf44b-24af-4c55-a776-f93ae5e6ceb0', N'© Created by Hoài Trần', N'48 Hai Bà Trưng Hà Nội', N'0988.944.608', NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', 0)
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (1, N'Trang chủ', N'/', 1, NULL, N'_self', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), NULL, NULL, N'admin', 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (2, N' Giới thiệu', N'/gioi-thieu', 2, NULL, N'_self', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (3, N'Tin tức', N'/tin-tuc', 3, NULL, N'_self', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (4, N'Sản phẩm', N'/tat-ca-san-pham', 4, NULL, N'_self', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (5, N'Liên hệ', N'#', 5, NULL, N'_self', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (15, N'Thông tin liên hệ', N'#Contact', 1, 5, N'_self', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (16, N'Góp ý', N'/gop-y', 2, 5, N'_self', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (18, N'Phản hồi ý kiến khách hàng', N'/phan-hoi-y-kien-khach-hang', 3, 5, N'_self', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (20, N'Khuyến mãi', N'/loai-tin-tuc/khuyen-mai/a2b988e6-9053-4c9d-b6fb-5ade0e050d18', 1, 3, N'_self', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (21, N'Sự kiện', N'/loai-tin-tuc/su-kien/9d1fdd2c-e06d-402b-87de-f8746537bdbf', 2, 3, N'_self', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (22, N'Chăm sóc khách hàng', N'/loai-tin-tuc/cham-soc-khach-hang/c787ffc1-f333-484e-b176-c76d5c3d85a7', 3, 3, N'_self', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
INSERT [dbo].[NewsCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'a2b988e6-9053-4c9d-b6fb-5ade0e050d18', N'Khuyến mãi', N'khuyen-mai', NULL, 1, N'khuyen-mai', N'khuyen-mai', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[NewsCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'c787ffc1-f333-484e-b176-c76d5c3d85a7', N'Chăm sóc khách hàng', N'cham-soc-khach-hang', NULL, 3, N'cham-soc-khach-hang', N'cham-soc-khach-hang', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[NewsCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'9d1fdd2c-e06d-402b-87de-f8746537bdbf', N'Sự kiện', N'su-kien', NULL, 2, N'su-kien', N'su-kien', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
GO
INSERT [dbo].[Order] ([Id], [UserId], [ShipName], [ShipPhone], [ShipAddress], [ShipEmail], [Status], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'085897b5-4172-4613-8633-99a69ae3ffe0', N'ebfb15ea-6c37-4024-9f72-db52619af8ed', N'Nguyễn Minh Nhã', N'0394074355', N'Hà Nội', N'minhnha@gmail.com', 0, CAST(N'2022-04-28T10:15:57.9554199+07:00' AS DateTimeOffset), N'nguyenminhnha', NULL, NULL, 0)
INSERT [dbo].[Order] ([Id], [UserId], [ShipName], [ShipPhone], [ShipAddress], [ShipEmail], [Status], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'be0ac036-284b-47f1-9b9e-a5cf894feaed', N'ebfb15ea-6c37-4024-9f72-db52619af8ed', N'Nguyễn Minh Nhã', N'0394074355', N'Hà Nội', N'minhnha@gmail.com', 1, CAST(N'2022-04-28T10:10:13.0571877+07:00' AS DateTimeOffset), N'nguyenminhnha', NULL, NULL, 0)
INSERT [dbo].[Order] ([Id], [UserId], [ShipName], [ShipPhone], [ShipAddress], [ShipEmail], [Status], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'219b89d7-1cfa-4d21-bb66-cea8b59480cc', N'8f0500df-7b12-4b5a-b31f-a615ec831680', N'Kiều Oanh', N'0394074355', N'Hà Nội', N'kieuoanh@gmail.com', 1, CAST(N'2022-04-28T09:46:16.1292202+07:00' AS DateTimeOffset), N'kieuoanh', NULL, NULL, 0)
GO
INSERT [dbo].[OrderDetail] ([ProductId], [OrderId], [Quantity], [Price], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'74126328-626b-450b-8728-143e2a32a202', N'219b89d7-1cfa-4d21-bb66-cea8b59480cc', 3, CAST(380000 AS Decimal(18, 0)), CAST(N'2022-04-28T09:46:16.1760951+07:00' AS DateTimeOffset), N'kieuoanh', NULL, NULL, 0)
INSERT [dbo].[OrderDetail] ([ProductId], [OrderId], [Quantity], [Price], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'44a76484-6ac2-4d48-a5c7-97448c545ab0', N'085897b5-4172-4613-8633-99a69ae3ffe0', 1, CAST(3590000 AS Decimal(18, 0)), CAST(N'2022-04-28T10:15:57.9604070+07:00' AS DateTimeOffset), N'nguyenminhnha', NULL, NULL, 0)
INSERT [dbo].[OrderDetail] ([ProductId], [OrderId], [Quantity], [Price], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'a410db7a-d414-41df-bad6-c6c636940977', N'be0ac036-284b-47f1-9b9e-a5cf894feaed', 3, CAST(1750000 AS Decimal(18, 0)), CAST(N'2022-04-28T10:10:13.0731455+07:00' AS DateTimeOffset), N'nguyenminhnha', NULL, NULL, 0)
GO
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'8cf42ce1-6f0d-4d97-9b1d-03cf821bf39e', N'Tinh Chất Dưỡng Trắng Khử Mùi Vaseline', CAST(200000 AS Decimal(18, 0)), N'reebok-floatride-run-flexweave', N'<p>Kem trị th&acirc;m n&aacute;ch l&agrave; sản phẩm dạng kem được b&ocirc;i l&ecirc;n v&ugrave;ng n&aacute;ch l&agrave; sản phẩm gồm vitamin, c&aacute;c dưỡng chất cần thiết gi&uacute;p l&agrave;m trắng da v&ugrave;ng n&aacute;ch v&agrave; l&agrave;m giảm c&aacute;c vết th&acirc;m, đồng thời gi&uacute;p loại bỏ sắc tố đen sạm nguy&ecirc;n nh&acirc;n g&acirc;y th&acirc;m n&aacute;ch.</p>

<p><strong>DRY SERUM Ultra Whitening</strong>&nbsp;mang t&iacute;nh đột ph&aacute; rất kh&aacute;c so với&nbsp;<strong>lăn n&aacute;ch</strong>&nbsp;hoặc xịt th&ocirc;ng thường của bạn,&nbsp;n&oacute; tr&ocirc;ng giống như một loại kem hoặc kem dưỡng da!</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/9/28/2111118.jpg" style="height:640px; width:640px" /></p>

<p>&nbsp;</p>

<p>C&ocirc;ng thức kh&ocirc; nhanh gấp đ&ocirc;i so với lăn n&aacute;ch th&ocirc;ng thường, v&agrave; thay v&igrave; để lại cho bạn cảm gi&aacute;c d&iacute;nh sản phẩm tạo cảm gi&aacute;c&nbsp;kh&ocirc; tho&aacute;ng ngay lập tức,&nbsp;Serum được hấp thụ ngay lập tức v&agrave;o da, thật tuyệt vời khi bạn đang vội v&atilde; chuẩn bị đi l&agrave;m v&agrave;o buổi s&aacute;ng.&nbsp;Bạn kh&ocirc;ng phải lo lắng về c&aacute;c vệt khử m&ugrave;i b&aacute;m v&agrave;o &aacute;o.</p>

<p>Với kết cấu mỏng v&agrave; nhẹ hấp thu nhanh ngay lập tức&nbsp;mang lại cảm gi&aacute;c mịn m&agrave;ng</p>

<p>Hầu hết phụ nữ c&oacute; thể kh&ocirc;ng dưỡng ẩm cho khu vực n&agrave;y. N&aacute;ch của bạn bị ra mồ h&ocirc;i kh&aacute; nhanh trong thời tiết n&oacute;ng.&nbsp;Sử dụng th&ecirc;m kem c&oacute; xu hướng l&agrave;m cho n&oacute; tồi tệ hơn. Đ&oacute; l&agrave; l&yacute; do tại sao Serum khử m&ugrave;i kh&ocirc; Vaseline DRY SERUM thực sự l&agrave; một sản phẩm&nbsp;mang t&iacute;nh c&aacute;ch mạng.&nbsp;Nhanh kh&ocirc;,&nbsp;dễ d&agrave;ng sử dụng, v&agrave;&nbsp;giữ ẩm&nbsp;c&ugrave;ng một l&uacute;c.</p>

<p>Serum&nbsp;khử m&ugrave;i&nbsp;kh&ocirc; Vaseline chứa collagen v&agrave; vitamin B3, gi&uacute;p l&agrave;m đều m&agrave;u da v&agrave; c&oacute; t&aacute;c dụng sửa chữa c&aacute;c tổn thương ở v&ugrave;ng dưới c&aacute;nh tay của bạn, sản phẩm gi&uacute;p l&agrave;m&nbsp;đều m&agrave;u da của bạn loại bỏ c&aacute;c v&ugrave;ng tối,&nbsp;da xỉn m&agrave;u, cũng như nu&ocirc;i dưỡng l&agrave;n da của bạn c&ugrave;ng một l&uacute;c. N&oacute; c&oacute; khả năng th&acirc;m thấu v&agrave;&nbsp;t&aacute;c động l&agrave;m trắng tới 20 lớp da.&nbsp;Điều n&agrave;y đặc biệt quan trọng nếu bạn cạo r&acirc;u hoặc wax v&ugrave;ng thường xuy&ecirc;n.</p>

<p>Nếu bạn đang đối ph&oacute; với vết&nbsp;sẹo do dao cạo, c&oacute; l&agrave;n da nhạy cảm hoặc phải vật lộn với&nbsp;mụn nhọt,&nbsp;đổi m&agrave;u,&nbsp;ngứa&nbsp;v&agrave; c&aacute;c vấn đề kh&oacute; chịu kh&aacute;c với v&ugrave;ng n&aacute;ch của bạn th&igrave;&nbsp;Vaseline DRY SERUM&nbsp;l&agrave; sản phẩm kh&ocirc;ng thể thiếu.&nbsp;Vaseline Deodorant Dry Serum&nbsp;c&oacute; thể thẩm thấu v&agrave;o da bằng&nbsp;collagen&nbsp;v&agrave;&nbsp;vitamin&nbsp;hoạt h&oacute;a, l&agrave;m hồi sinh c&aacute;c tế b&agrave;o da bị tổn thương của bạn, đồng thời mang lại cho bạn một t&ocirc;ng m&agrave;u đồng đều.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/9/28/1110924.jpg" style="height:640px; width:640px" /></p>

<p>Serum khử m&ugrave;i kh&ocirc; Vaseline mới đ&atilde; được chứng minh l&agrave; c&oacute; thể&nbsp;<strong><em>l&agrave;m trắng v&ugrave;ng da dưới c&aacute;nh tay</em></strong>, mang lại cho bạn một lớp da dưới c&aacute;nh tay s&aacute;ng hơn v&agrave; khử m&ugrave;i m&ugrave;i l&ecirc;n đến&nbsp;<strong><em>48 giờ</em></strong>.</p>

<ul>
	<li>Collagen v&agrave; vitamin B3 l&agrave;m trắng da v&ugrave;ng n&aacute;ch</li>
	<li>Collagen v&agrave; vitamin E để giữ ẩm nhưng vẫn kh&ocirc; tho&aacute;ng cả ng&agrave;y</li>
	<li>Collagen v&agrave; omega 6 cho l&agrave;n da săn chắc, gi&uacute;p giảm nếp nhăn da chảy xệ</li>
	<li>Sức mạnh từ b&ecirc;n trong cho v&ugrave;ng n&aacute;ch trắng r&otilde; rệt ngay từ lần sử dụng đầu ti&ecirc;n</li>
	<li>Chất kem nhẹ gi&uacute;p hấp thụ ngay lập tức</li>
	<li>Khả năng khử m&ugrave;i tới 48 giờ</li>
	<li>C&ocirc;ng thức kh&ocirc; nhanh gấp đ&ocirc;i so với lăn n&aacute;ch th&ocirc;ng thường</li>
</ul>
', N'/Content/Data/files/Avatar-SP-Web(1)(1)-Recovered-Recovered-Recovered-Recovered-Recovered-Recovered-Recovered-Recovered-Recovered-Recovered(4).jpg', CAST(3590000 AS Decimal(18, 0)), NULL, 0, 5, N'185e17eb-86c3-4323-8faf-6fcbb2e7bd08', N'Sức mạnh từ bên trong cho vùng nách trắng rõ rệt ngay từ lần sử dụng đầu tiên
Chất kem nhẹ giúp hấp thụ ngay lập tức
Khả năng khử mùi tới 48 giờ
Công thức khô nhanh gấp đôi so với lăn nách thông thường', NULL, N'reebok-floatride-run-flexweave', NULL, NULL, 1, NULL, NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T15:04:42.2196780+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'836c11c8-c252-45b6-9604-08de7011869a', N'Kem Chống Nắng Innisfree Triple', CAST(200000 AS Decimal(18, 0)), N'converse-jack-purcell-leather', N'<p>Xuất xứ: H&agrave;n Quốc<br />
Dung t&iacute;ch: 50ml</p>

<p>Kem Chống Nắng Chống Tr&ocirc;i, Điều Chỉnh T&ocirc;ng Da Innisfree Intensive Triple-Shield Sunscreen&nbsp;SPF50+/PA++++ l&agrave; phi&ecirc;n bản upgrade của d&ograve;ng Triple Care với nhiều cải tiến ngo&agrave;i việc bảo vệ da mạnh mẽ dưới t&aacute;c động của &aacute;nh nắng mặt trời, điều chỉnh t&ocirc;ng da. Ngo&agrave;i ra c&ograve;n c&oacute; khả năng chống &aacute;nh s&aacute;ng xanh thừ m&agrave;n h&igrave;nh của thiết bị điện tử v&agrave; th&acirc;n thiện với rạn san h&ocirc;.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/11/12/9909f6e3a5d1d7e02ce482f39c3b08ae030126.jpg" style="height:640px; width:640px" /></p>

<ul>
	<li>Sở hữu chức năng k&eacute;p vừa dưỡng trắng vừa chống l&atilde;o h&oacute;a nhờ phức hợp giữa Niacinamide v&agrave; Adenosine. Niacinamide l&agrave; th&agrave;nh phần c&oacute; t&aacute;c dụng l&agrave;m trắng được Bộ An to&agrave;n Thực phẩm v&agrave; Dược phẩm ph&ecirc; duyệt, n&oacute; cũng cải thiện độ ẩm v&agrave; hỗ trợ giải quyết c&aacute;c vấn đề rắc rối tr&ecirc;n da, Adenosine hoạt động để sản xuất collagen gi&uacute;p l&agrave;m đầy nếp nhăn v&agrave; tăng t&iacute;nh đ&agrave;n hồi cho da</li>
	<li>Ch&uacute;ng ta phải thường xuy&ecirc;n phải tiếp x&uacute;c với c&aacute;c thiết bị điện tử như TV/ Laptop, Smartphone, c&aacute;c loại đ&egrave;n điện(LED, huỳnh quang)&hellip; v&agrave; điều đ&oacute; đ&oacute; đồng nghĩa với việc &Aacute;nh S&aacute;ng Xanh(Blue light) đang hủy hoại l&agrave;n da mỗi ng&agrave;y. Blue light c&oacute; bước s&oacute;ng rất d&agrave;i n&ecirc;n c&oacute; khả năng th&acirc;m nhập s&acirc;u v&agrave;o c&aacute;c tầng của da để k&iacute;ch th&iacute;ch sản xuất gốc tự do đẩy nhanh qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a, n&oacute; cũng nguy&ecirc;n nh&acirc;n ch&iacute;nh khiến da bị sạm n&aacute;m - tối m&agrave;u mặc d&ugrave; kh&ocirc;ng thường xuy&ecirc;n tiếp x&uacute;c với &aacute;nh nắng mặt trời. L&agrave; một kem chống nắng phi&ecirc;n bản n&acirc;ng cấp, Triple Shield với bộ lọc UV th&ocirc;ng minh c&oacute; khả năng chống lại tia IR gi&uacute;p n&acirc;ng cao hiệu quả bảo vệ da tối đa dưới nguồn bức xạ nh&acirc;n tạo. [X&aacute;c nhận ho&agrave;n th&agrave;nh kiểm tra chặn &aacute;nh s&aacute;ng xanh bởi tổ chức thử nghiệm Viện Nghi&ecirc;n cứu da liễu H&agrave;n Quốc]. Chứa Iron Oxide với nhiều cấu tr&uacute;c ph&acirc;n tử kh&aacute;c nhau c&oacute; khả năng chặn tia IR (Hồng ngoại).</li>
	<li>Chiết xuất nhiều th&agrave;nh phần thi&ecirc;n nhi&ecirc;n trong đ&oacute; c&oacute; tinh dầu c&aacute;m Gạo, hoa Hướng Dương c&oacute; khả năng hấp thụ UV, chống oxy h&oacute;a gi&uacute;p ngăn chặn tổn thương do tia UV g&acirc;y n&ecirc;n, chứa nhiều chất dinh dưỡng c&oacute; lợi cho sức khỏe của da.</li>
</ul>

<p><a href="https://beautygarden.vn/Upload/images/kem-chong-nang-innisfree-intensive-triple-shield-sunscreen-spf50pa-50ml-new-2020-0-hinh-anh-1.jpg" target="_blank" title="Kem Chống Nắng Innisfree Triple-Shield  hình ảnh 1"><img alt="kem chong nang innisfree intensive triple shield sunscreen spf50pa 50ml new 2020 hinh anh 1" src="https://adminbeauty.hvnet.vn/Upload/images/kem-chong-nang-innisfree-intensive-triple-shield-sunscreen-spf50pa-50ml-new-2020-0-hinh-anh-1.jpg" style="height:640px; width:640px" /></a></p>

<p>C&ocirc;ng dụng ch&iacute;nh:</p>

<p>- Chống nắng ho&agrave;n hảo cho da khỏi c&aacute;c tia cực t&iacute;m v&agrave; bụi bẩn từ m&ocirc;i trường.</p>

<p>- Cấp ẩm v&agrave; dưỡng ẩm cho l&agrave;n da suốt ng&agrave;y d&agrave;i.</p>

<p>- L&agrave;m dịu da v&agrave; giảm k&iacute;ch ứng.</p>

<p>- Củng cố lớp m&agrave;ng bảo vệ tr&ecirc;n bề mặt da, gi&uacute;p da săn chắc hơn.</p>
', N'/Content/Data/files/triple-shield.jpg', CAST(2000000 AS Decimal(18, 0)), NULL, 0, 25, N'35f18486-b2b4-472e-9c90-071466e5bb2d', N'- Chỉ số chống nắng hoàn hảo bảo vệ da khỏi các tia cực tím và bụi bẩn từ môi trường.

- Dưỡng ẩm cho làn da mềm mịn suốt ngày dài.

- Làm dịu da và giảm kích ứng.

- Củng cố lớp màng bảo vệ trên bề mặt da, giúp da săn chắc hơn.', NULL, N'converse-jack-purcell-leather', N'converse-jack-purcell-leather', NULL, NULL, 1, NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T15:00:35.1254930+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'e8ab3637-5fa0-4b12-93ce-0e11bde67845', N'Mi Giả 3 Fashion Eyelashes', CAST(200000 AS Decimal(18, 0)), N'jordan-4-st2030', N'<p>Xu hướng mi d&agrave;y Ch&acirc;u &Acirc;u đang ng&agrave;y c&agrave;ng được giới l&agrave;m đẹp ưa chuộng, mi chồn 3 Faux Cils đem đến cho bạn một đ&ocirc;i mi cực quyến rũ v&agrave; th&ecirc;m long lanh cho đ&ocirc;i mắt!</p>

<p><img alt="Hình ảnh có liên quan" src="https://salt.tikicdn.com/ts/tmp/54/67/3e/8a41f6a72a18a7124d183042f614a437.jpg" style="height:640px; width:640px" /></p>

<h2>M&Ocirc; TẢ SẢN PHẨM MI GIẢ 3 FASHION EYELASHES 3 FAUX - CILS</h2>

<p>Được l&agrave;m từ sợi l&ocirc;ng chồn thật 100%, kiểu d&aacute;ng 3D đan xen v&ocirc; c&ugrave;ng độc đ&aacute;o, gi&uacute;p t&ocirc;n d&aacute;ng cho đ&ocirc;i mắt của bạn đẹp tự nhi&ecirc;n v&agrave; th&ecirc;m phần quyến rũ &amp; thu h&uacute;t.<br />
Ph&ugrave; hợp cho những bạn th&iacute;ch make up tone ấn tượng lẫn tự nhi&ecirc;n, c&oacute; thể d&ugrave;ng đi học, đi l&agrave;m, đi chơi hay đi đến bất cứ một buổi party n&agrave;o.<br />
Tạm biệt cả những chuỗi ng&agrave;y nối mi vừa cộm lại đau r&aacute;t, chỉ với 5 ph&uacute;t gắn mi chồn l&agrave; bạn trở n&ecirc;n lung linh ngay!</p>

<p><img src="https://salt.tikicdn.com/ts/tmp/b2/bf/85/66aeb38f082919d39ecf0a726b3f0bf2.jpg" style="height:640px; width:640px" /></p>
', N'/Content/Data/files/mi-3d-22102019110848.jpg', CAST(299000 AS Decimal(18, 0)), NULL, 0, 20, N'de613250-d551-435b-9613-2f67164a78f6', N'- Mi chồn 3 Faux Cils đem đến cho bạn một đôi mi quyến rũ và long lanh 

- Kiểu dáng 3D cho ánh nhìn thu hút

- Không bị cộm hay nặng mắt

- Phù hợp với kiểu makeup ấn tượng', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T11:52:06.7609699+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'74126328-626b-450b-8728-143e2a32a202', N'Bảng Hiệu Chỉnh Màu Da Essence', CAST(300000 AS Decimal(18, 0)), N'new-balance-572', N'<p>C&ocirc;ng cuộc l&agrave;m đẹp của c&aacute;c chị em chưa bao giờ đơn giản, rất nhiều sản phẩm mới ra để phục vụ cho nhu cầu l&agrave;m đẹp n&agrave;y.</p>

<p>Trong c&ocirc;ng đoạn che đi c&aacute;c khuyết điểm kh&ocirc;ng mấy xinh đẹp tr&ecirc;n da, ngo&agrave;i kem che khuyết điểm th&igrave; hiện n&agrave;y c&ograve;n c&oacute; loại kem hiệu chỉnh m&agrave;u da. &Aacute;p dụng tr&ecirc;n nguy&ecirc;n l&yacute; triệt sắc đề m&agrave;u da được trung h&ograve;a v&agrave; đều m&agrave;u nhất, v&igrave; thế những c&ocirc; n&agrave;ng n&agrave;o c&oacute; l&agrave;n da hơi nhiều khuyết điểm m&agrave; kem che khuyết điểm vẫn chưa thế x&oacute;a đi được th&igrave; h&atilde;y tham khảo qua loại&nbsp;<strong>Bảng Hiệu Chỉnh M&agrave;u Da Essence Correct To Perfect CC Powder&nbsp;</strong>n&agrave;y nh&eacute;!</p>

<p>&nbsp;</p>

<p><img alt="Káº¿t quáº£ hÃ¬nh áº£nh cho Essence Correct To Perfect CC Powder Palette" src="http://i2.wp.com/www.byisabelle.be/wp-content/uploads/2017/09/ESSENCE-BACK2SCHOOL-4.jpg" style="height:640px; width:640px" /></p>

<h2>C&Ocirc;NG DỤNG BẢNG HIỆU CHỈNH M&Agrave;U DA ESSENCE CORRECT TO PERFECT CC POWDER</h2>

<p>Sản phẩm c&oacute; kết cấu mỏng mịn dễ d&agrave;ng che đi c&aacute;c khuyết điểm tr&ecirc;n gương mặt, l&agrave;m đều m&agrave;u da, giảm quầng th&acirc;m mắt v&agrave; c&aacute;c v&ugrave;ng da sạm m&agrave;u.<br />
<br />
- M&agrave;u t&iacute;m: sử dụng cho những v&ugrave;ng da tối, da v&agrave;ng, gi&uacute;p l&agrave;m đều m&agrave;u da hơn<br />
- M&agrave;u xanh: sử dụng cho c&aacute;c vết đỏ, mụn, dị ứng,&hellip;<br />
- M&agrave;u v&agrave;ng s&aacute;ng: c&oacute; thể sử dụng như highlight, bắt s&aacute;ng cho v&ugrave;ng chữ T tr&ecirc;n khu&ocirc;n mặt<br />
- M&agrave;u v&agrave;ng đậm: sử dụng để che đi c&aacute;c khuyết điểm như th&acirc;m t&iacute;m, th&acirc;m mụn, quầng th&acirc;m mắt.</p>
', N'/Content/Data/files/avatar-sp-web11-1-29082019112933.jpg', CAST(400000 AS Decimal(18, 0)), CAST(380000 AS Decimal(18, 0)), NULL, 46, N'f4e587a0-d114-4f30-946c-04c30e01b730', N'- Có 4 màu hiệu chỉnh từng vùng sắc trên da

- Chất kem mỏng, mịn dễ tán

- Độ che phủ trung bình khá 

- Bảng nhỏ gọn tiện lợi dễ mang theo trong túi', NULL, N'new-balance-572', NULL, 1, 0, 1, NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T11:40:22.6679063+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'07b8ca65-0fa3-4aad-aace-1944c6740869', N'Nước Tẩy Trang Senka All', CAST(200000 AS Decimal(18, 0)), N'converse-chuck-taylor', N'<p>Dung t&iacute;ch: 230ml</p>

<p>Nước Sữa Tẩy Trang Senka All Clear Milky Water Nourish Hai Lớp 230ml gi&uacute;p l&agrave;m sạch s&acirc;u lớp trang điểm l&acirc;u tr&ocirc;i, tế b&agrave;o da chết, bụi bẩn, b&atilde; nhờn, dầu thừa b&ecirc;n trong lỗ ch&acirc;n l&ocirc;ng m&agrave; kh&ocirc;ng để lại cảm gi&aacute;c nhờn r&iacute;t hay g&acirc;y kh&ocirc; da.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/2/26/b4960984350aa15cf2540f8e81339174030829.jpg" style="height:640px; width:640px" /></p>

<h2>C&Ocirc;NG DỤNG SẢN PHẨM</h2>

<p>Th&agrave;nh phần ch&iacute;nh:&nbsp;</p>

<p>Japanese Soy (Chiết xuất đậu n&agrave;nh Nhật): Ngo&agrave;i khả năng chống l&atilde;o h&oacute;a tr&ecirc;n da bằng c&aacute;ch chống lại sự sản sinh của c&aacute;c gốc tự do, th&agrave;nh phần c&ograve;n c&oacute; khả năng điều tiết độ ẩm cũng như k&iacute;ch th&iacute;ch sản sinh collagen.</p>

<p>White Cocoon Extract (Chiết xuất tằm trắng): C&oacute; khả năng chống nhăn, chống l&atilde;o h&oacute;a, cũng như th&uacute;c đẩy độ đ&agrave;n hồi v&agrave; tăng cường dưỡng ẩm cho da. Ngo&agrave;i cơ chế giảm thiểu sự mất nước tr&ecirc;n bề mặt da, th&agrave;nh phần n&agrave;y c&ograve;n t&iacute;ch cực phục hồi yếu tố giữ ẩm tự nhi&ecirc;n hay ch&uacute;ng ta c&ograve;n thường biết đến với t&ecirc;n NMF.</p>

<p>Hyaluronic Acid x2: Th&agrave;nh phần v&agrave;ng trong l&agrave;ng cấp ẩm, hấp thụ chất ẩm ngo&agrave;i kh&ocirc;ng kh&iacute; để cung cấp cho da, đồng thời gi&uacute;p giữ ẩm hiệu quả.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/2/26/64bca8ddee888547eb7e1ba98520e9ac030859.jpg" style="height:640px; width:640px" /></p>

<p>- L&agrave;m sạch s&acirc;u lớp makeup cũng như mọi bụi bẩn, dầu nhờn đ&atilde; t&iacute;ch tụ suốt ng&agrave;y d&agrave;i.<br />
- Tẩy tế b&agrave;o da chết dịu nhẹ, gi&uacute;p lỗ ch&acirc;n l&ocirc;ng được th&ocirc;ng tho&aacute;ng.<br />
- Nu&ocirc;i dưỡng l&agrave;n da từ b&ecirc;n trong nhờ những chiết xuất từ thi&ecirc;n nhi&ecirc;n v&ocirc; c&ugrave;ng l&agrave;nh t&iacute;nh.<br />
- C&oacute; khả năng chống lại c&aacute;c gốc tự do g&acirc;y hại cho da, sản phẩm c&ograve;n c&oacute; khả năng chống vi&ecirc;m hiệu quả.<br />
- K&iacute;ch th&iacute;ch sản sinh collagen, từ đ&oacute; tăng cường độ đ&agrave;n hồi cho da, trả lại một l&agrave;n da mịn m&agrave;ng, mềm mại.<br />
- C&oacute; khả năng cấp ẩm v&agrave; giữ ẩm cho da v&ocirc; c&ugrave;ng si&ecirc;u việt.<br />
- Ph&ugrave; hợp với mọi loại da.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/2/26/86e8da55e2af15e12653c099b3339071030928.jpg" style="height:640px; width:640px" /></p>

<h2>HƯỚNG DẪN SỬ DỤNG</h2>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/2/26/dc4f4d0f424653cf26040afed8726e77032528.jpg" style="height:640px; width:640px" /></p>
', N'/Content/Data/files/milky.jpg', CAST(1300000 AS Decimal(18, 0)), NULL, 0, 14, N'35f18486-b2b4-472e-9c90-071466e5bb2d', N'- Công thức mỏng nhẹ độc đáo kết hợp 2 lớp từ nước tẩy trang micellar làm sạch sâu lớp trang điểm đậm cùng Sữa tẩy trang có thanh phần chiết xuất đậu nành Nhật giúp nuôi dưỡng, cấp ẩm cho làn da sạch thoáng, mịn màng, đàn hồi và rạng rỡ.

- Dịu nhẹ: thích hợp cho mọi loại da

- Không chứa dầu, không chứa cồn, không hương liệu, không màu', NULL, N'converse-chuck-taylor', NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T15:01:32.0323150+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'79ecab79-012d-4a7a-896d-3ea453a7d4ec', N'Kit Make-Up Mắt Tiện Lợi Sivanna', CAST(200000 AS Decimal(18, 0)), N'vans-oldskool-mash-up-stickers', N'<p>Tiếp nối th&agrave;nh c&ocirc;ng của bộ make up chuy&ecirc;n nghiệp Super Kit, Sivanna đ&atilde; cho ra thị trường bộ&nbsp;<a href="http://beautygarden.vn/Kit-MakeUp-mat-tien-loi-Sivanna-833-180-153-5.html">Kit make up mắt tiện lợi Sivanna</a>&nbsp;với thiết kế nhỏ gọn hơn, dễ sử dụng, dễ phối bởi c&aacute;c tone m&agrave;u trầm hiện đại.&nbsp;Set phấn mắt với những t&ocirc;ng m&agrave;u cực k&igrave; dễ phối, bao gồm cả m&aacute; hồng theo t&ocirc;ng mắt nhẹ nh&agrave;ng! Bạn c&oacute; thể d&ugrave;ng để tạo khối cho gương mặt thanh tho&aacute;t hơn.</p>

<p><strong>Kit Make-Up mắt tiện lợi Sivanna<br />
Xuất xứ: Sivanna - H&agrave;n Quốc</strong></p>

<h4><img alt="Kit Make-Up mắt tiện lợi Sivanna." src="https://adminbeauty.hvnet.vn/Files/Uploads/beauty-garden/Kit-MakeUp--Sivanna-833.png" style="height:640px; width:640px" title="Kit Make-Up mắt tiện lợi Sivanna." /></h4>

<h4>Kit Make-Up mắt tiện lợi Sivanna</h4>

<h2>C&Ocirc;NG DỤNG</h2>

<p>-<a href="http://beautygarden.vn/Trang-diem-0-153-1.html">&nbsp;Trang điểm</a>&nbsp;cho đ&ocirc;i mắt trở n&ecirc;n cuốn h&uacute;t, hấp dẫn.</p>

<p>- Ngo&agrave;i ra c&ograve;n c&oacute; một số c&ocirc;ng dụng l&agrave; mẹo cho bạn khi trang điểm: Kẻ viền mắt, che th&acirc;m quầng mắt, tạo khối cho khu&ocirc;n mặt, tạo g&oacute;c cạnh cho khu&ocirc;n mặt.</p>

<p><img alt="Phấn hồng tô điểm cho đôi má thêm rạng rỡ" src="https://adminbeauty.hvnet.vn/Files/Uploads/tieu-chuan-cho-mot-doi-mat-dep5.jpg" style="height:640px; width:640px" title="Phấn hồng tô điểm cho đôi má thêm rạng rỡ" /></p>

<p><strong>Phấn hồng t&ocirc; điểm cho đ&ocirc;i m&aacute; th&ecirc;m rạng rỡ</strong></p>

<h2>C&Aacute;CH SỬ DỤNG</h2>

<p>- Đầu ti&ecirc;n, phủ một lớp s&aacute;p mỏng eyeshadow base l&ecirc;n to&agrave;n bộ bầu mắt. Việc n&agrave;y gi&uacute;p dưỡng ẩm da v&agrave; hỗ trợ những lớp phấn phủ tiếp theo b&aacute;m d&iacute;nh tốt hơn. N&ecirc;n d&ugrave;ng eyeshadow base của c&aacute;c h&atilde;ng mỹ phẩm cao cấp để dưỡng da v&ugrave;ng quanh mắt tốt v&agrave; an to&agrave;n hơn.<br />
- Chọn m&agrave;u cho bầu mắt<br />
D&ugrave;ng cọ phủ một lớp phấn m&agrave;u n&acirc;u đồng l&ecirc;n to&agrave;n bộ bầu mắt. Phấn mắt n&acirc;u đồng chưa bao giờ hạ nhiệt với ph&aacute;i đẹp, đặc biệt tone m&agrave;u n&agrave;y rất ph&ugrave; hợp với c&ocirc; n&agrave;ng c&ocirc;ng sở. N&oacute; đem lại n&eacute;t đẹp tự nhi&ecirc;n nhưng vẫn l&ocirc;i cuốn với ch&uacute;t nhũ &aacute;nh.<br />
Đ&aacute;nh m&agrave;u mắt, từ giữa bầu m&iacute; mắt sang m&iacute; kho&eacute; mắt, d&agrave;i xuống đu&ocirc;i mắt, t&aacute;n đều m&agrave;u mắt l&ecirc;n qua m&iacute; mắt v&agrave; một lớp nhẹ dưới mi mắt. Để tạo điểm nhấn v&agrave; chiều s&acirc;u cho mắt, bạn cần phủ một lớp phấn n&acirc;u theo khối chữ V ở đu&ocirc;i mắt.<br />
Trang điểm viền mi tr&ecirc;n của mắt<br />
Sử dụng một c&acirc;y b&uacute;t dạ kẻ viền mi tr&ecirc;n. V&igrave; l&agrave; style trang điểm thường n&agrave;y n&ecirc;n bạn kh&ocirc;ng cần k&eacute;o d&agrave;i đường viền m&iacute;. Kẻ mắt m&agrave;u đen hoặc n&acirc;u sẫm lu&ocirc;n l&agrave; sự lựa chọn h&agrave;ng đầu cho c&aacute;c n&agrave;ng văn ph&ograve;ng bởi n&oacute; tạo cảm gi&aacute;c đ&ocirc;i mắt to, đen v&agrave; cuốn h&uacute;t hơn. Ngo&agrave;i ra, kh&ocirc;ng n&ecirc;n d&ugrave;ng những m&agrave;u bắt mắt như xanh, t&iacute;m v&igrave; chung sẽ khiến khu&ocirc;n mặt kh&ocirc;ng nổi bật.<br />
- Kẻ viền mi dưới sắc sảo, chuy&ecirc;n nghiệp<br />
Với viền mi dưới, bạn n&ecirc;n d&ugrave;ng b&uacute;t ch&igrave; m&agrave;u trắng ngọc trai hoặc m&agrave;u da &aacute;nh nhũ để đ&ocirc;i mắt to v&agrave; tr&ograve;n hơn.Bạn d&ugrave;ng b&uacute;t ch&igrave; m&agrave;u trắng ngọc trai hoặc m&agrave;u da &aacute;nh nhũ để kẻ viền m&iacute; trong b&ecirc;n dưới, điều n&agrave;y sẽ tạo cảm gi&aacute; đ&ocirc;i mắt to tr&ograve;n hơn.<br />
Đối với đ&ocirc;i mắt thiếu ngủ, cần chấm kem che khuyết điểm dưới bọng mắt, sử dụng phấn phủ m&agrave;u hồng đ&agrave;o để gi&uacute;p đ&ocirc;i mắt trở n&ecirc;n s&aacute;ng, to hơn. B&ecirc;n cạnh đ&oacute;, d&ugrave;ng eyeliner kẻ một đường mi mắt dưới hoặc v&agrave;nh trong của mắt v&agrave; chuốt mascara gi&uacute;p l&ocirc;ng mi d&agrave;y v&agrave; cong hơn.<br />
- Cuối c&ugrave;ng, kẹp mi v&agrave; chuốt từ hai đến ba lớp mascara để ho&agrave;n th&agrave;nh c&aacute;c bước trong c&aacute;ch đ&aacute;nh phấn mắt đẹp cho c&ocirc; n&agrave;ng c&ocirc;ng sở. Với phong c&aacute;ch trang điểm n&agrave;y, bạn sử dụng son m&ocirc;i v&agrave; phấn m&aacute; hồng m&agrave;u nude để c&oacute; gương mặt tự nhi&ecirc;n khi đi l&agrave;m.</p>
', N'/Content/Data/files/kit-make-up-mat-tien-loi-sivanna-beauty-garden-1.jpg', CAST(1750000 AS Decimal(18, 0)), NULL, 0, 25, N'dc7469a5-a82d-4e56-863b-e2f6f1fcf15d', N'Trang điểm màu mắt chưa lúc nào trở nên lỗi mốt bởi chỉ với một chút biến tấu nhỏ, bạn đã có thể sáng tạo ra một phong cách hoàn toàn mới mẻ. Kiểu make-up này thường gắn liền với những buổi tiệc đêm hoặc make-up nhạt hơn để phù hợp cho ban ngày.', NULL, N'vans-oldskool-mash-up-stickers', N'vans-oldskool-mash-up-stickers', NULL, 1, NULL, NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T11:53:58.5313671+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'd22b1e54-b2d1-4375-86b7-41596036ab8c', N'Chì Mày Xé Coloured Soft', CAST(200000 AS Decimal(18, 0)), N'adidas-x18.1-fg', N'<p>Đ&ocirc;i m&agrave;y đậm v&agrave; d&agrave;i tự nhi&ecirc;n l&agrave; mơ ước của nhiều chị em phụ nữ. Thế nhưng, ch&acirc;n m&agrave;y bạn lại thưa hoặc ngắn qu&aacute; khiến bạn thiếu tự tin với vẻ ngo&agrave;i của m&igrave;nh. Đừng v&igrave; thế m&agrave; vội buồn nh&eacute;, ch&igrave; x&eacute; kẻ ch&acirc;n m&agrave;y Cosmetic Art sẽ mang lại cho bạn đ&ocirc;i l&ocirc;ng m&agrave;y đậm v&agrave; đều m&agrave;u.</p>

<p>Ch&igrave; x&eacute; kẻ ch&acirc;n m&agrave;y&nbsp;<strong>Coloured Soft Cosmetic Art</strong>&nbsp;mang tới những đường cong l&ocirc;ng m&agrave;y đậm n&eacute;t ho&agrave;n hảo cho đ&ocirc;i l&ocirc;ng m&agrave;y, kh&ocirc;ng thấm nước v&agrave; l&acirc;u phai m&agrave;u sẽ gi&uacute;p bạn tự tin suốt cả ng&agrave;y với cặp ch&acirc;n m&agrave;y cong, đẹp thật ấn tượng.</p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2019/5/20/a3013854.jpg" style="height:640px; width:640px" /></p>

<h2>C&Ocirc;NG DỤNG CH&Igrave; M&Agrave;Y X&Eacute; COLOURED SOFT COSMETIC ART</h2>

<p>Xuất xứ: H&agrave;n Quốc</p>

<p>Ch&igrave; x&eacute; kẻ ch&acirc;n m&agrave;y Coloured Soft Cosmetic Art&nbsp;gi&uacute;p bạn dễ d&agrave;ng c&oacute; được những đường cong l&ocirc;ng m&agrave;y đậm n&eacute;t ho&agrave;n hảo cho đ&ocirc;i l&ocirc;ng m&agrave;y, kh&ocirc;ng thấm nước v&agrave; phai m&agrave;u cho bạn tự tin suốt cả ng&agrave;y với cặp ch&acirc;n m&agrave;y cong, đẹp thật ấn tượng.</p>

<p>Được sản xuất theo c&ocirc;ng nghệ H&agrave;n Quốc chất liệu an to&agrave;n chỉ cần một v&agrave;i đường n&eacute;t, sẽ gi&uacute;p ch&acirc;n m&agrave;y bạn được như &yacute; muốn.</p>

<p>- Ch&igrave; x&eacute; kẻ ch&acirc;n m&agrave;y tạo đường cong l&ocirc;ng m&agrave;y đậm n&eacute;t ho&agrave;n hảo với cặp ch&acirc;n m&agrave;y cong, đẹp thật ấn tượng.</p>

<p>- Kh&ocirc;ng thấm nước v&agrave; phai m&agrave;u cho bạn tự tin suốt cả ng&agrave;y.&nbsp;<br />
- Miếng giấy x&eacute; tiện lợi giữ g&igrave;n độ bền ch&igrave; b&ecirc;n trong. Với m&agrave;u sắc đa dạng, bạn c&oacute; thể dễ d&agrave;ng phối hợp với c&aacute;c loại trang phục v&agrave; m&agrave;u t&oacute;c của m&igrave;nh.<br />
<br />
<img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2019/5/20/a4013924.jpg" style="height:640px; width:640px" /></p>

<h2>HƯỚNG DẪN SỬ DỤNG CH&Igrave; M&Agrave;Y X&Eacute; COLOURED SOFT COSMETIC ART</h2>

<p>- Khi sử dụng hết đầu ch&igrave; bạn chỉ cần x&eacute; giấy đến vị tr&iacute; m&igrave;nh muốn sau đ&oacute; thắt lại v&agrave; sử dụng kh&ocirc;ng cần phải gọt giũa như bao ch&igrave; kẻ kh&aacute;c.</p>

<p>- Đầu ch&igrave; kẻ to, bạn c&oacute; thể gọt theo h&igrave;nh lưỡi để t&aacute;n đều cho ch&acirc;n m&agrave;y tự nhi&ecirc;n nhất.<br />
<br />
<img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2019/5/20/a00014017.jpg" style="height:640px; width:640px" /></p>
', N'/Content/Data/files/a0-20052019013820.jpg', CAST(759000 AS Decimal(18, 0)), CAST(590000 AS Decimal(18, 0)), 0, 20, N'f4e587a0-d114-4f30-946c-04c30e01b730', N'- Chì mày xé Hàn Quốc cực kỳ tiện lợi

- Chì lên màu rõ nét và lâu trôi

- Sản phẩm dễ sử dụng và tiết kiệm

- Các tone màu tự nhiên, dễ sử dụng', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T11:44:58.0689906+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'6af940c9-ab84-40f8-b433-42daec387bb9', N'Phấn Mắt Odbo Lovely Pantone', CAST(200000 AS Decimal(18, 0)), N'adidas-eqt-2018', N'<p>Xuất xứ: Th&aacute;i Lan</p>

<p>Odbo l&agrave; thương hiệu nổi tiếng tại Th&aacute;i Lan. C&aacute;c sản phẩm trang điểm của Odbo được nghi&ecirc;n cứu v&agrave; sản xuất theo quy chuẩn nghi&ecirc;m ngặt nhằm đảm bảo cho kh&aacute;ch h&agrave;ng c&oacute; được những sản phẩm chất lượng tốt nhất. C&aacute;c sản phẩm như phấn mắt, phấn m&aacute; hồng của thương hiệu Odbo rất đa dạng về m&agrave;u sắc v&agrave; đều sở hữu thiết kế đẹp mắt nhưng kh&ocirc;ng k&eacute;m phần hiện đại, thời thượng c&ugrave;ng với chất lượng tốt kh&ocirc;ng thể b&agrave;n c&atilde;i.</p>

<p>Bảng phấn mắt&nbsp;Phấn Mắt Odbo Lovely Pantone Eyeshadow OD239 với 2 t&ocirc;ng chủ đạo cam đ&agrave;o v&agrave; hồng nude nhẹ nh&agrave;ng th&iacute;ch hợp cho nững bạn th&iacute;ch phong c&aacute;ch makeup H&agrave;n Quốc, tươi s&aacute;ng, trong veo v&agrave; tự nhi&ecirc;n</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/10/7/64329299_2832386953497995_5712084475345633280_o033507.jpg" style="height:640px; width:640px" /></p>

<p>- Chất phấn mịn dễ t&aacute;n đều tr&ecirc;n da</p>

<p>- T&ocirc;ng m&agrave;u nhẹ nh&agrave;ng, tự nhi&ecirc;n dễ sử dụng</p>

<p>- M&agrave;u phấn l&ecirc;n chuẩn kh&ocirc;ng g&acirc;y d&agrave;y, cộm da</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/10/7/64576614_2832387086831315_970715552957857792_o033525.jpg" style="height:640px; width:640px" /></p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/10/7/64241217_2832386946831329_6603635929837993984_o033532.jpg" style="height:640px; width:640px" /></p>
', N'/Content/Data/files/Odbo-Lovely.jpg', CAST(699000 AS Decimal(18, 0)), CAST(590000 AS Decimal(18, 0)), 0, 20, N'f4e587a0-d114-4f30-946c-04c30e01b730', N'- Chất phấn mịn dễ tán đều trên da

- Tông màu nhẹ nhàng, tự nhiên dễ sử dụng

- Màu phấn lên chuẩn không gây dày, cộm da', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T11:43:23.5079245+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'510c5367-ff16-4646-9cd8-44770a7748d7', N'Mặt Nạ Ngủ Môi Laneige Special', CAST(200000 AS Decimal(18, 0)), N'adidas-tubular-2019', N'<p><a href="https://beautygarden.vn/mat-na-ngu-moi-laneige-lip-sleeping-mask.html"><strong>Mặt nạ ngủ m&ocirc;i&nbsp;</strong><strong>Laneige Lip Sleeping Mask</strong></a>&nbsp;l&agrave; một sản phẩm của h&atilde;ng mỹ phẩm nổi tiếng Laneige thuộc tập đo&agrave;n Amore Pacific, H&agrave;n Quốc. Mặt nạ ngủ m&ocirc;i n&agrave;y được ra đời với mong muốn của h&atilde;ng l&agrave; s&aacute;nh bước c&ugrave;ng ph&aacute;i đẹp trong việc chăm s&oacute;c đ&ocirc;i m&ocirc;i trở n&ecirc;n hồng h&agrave;o, căng mọng v&agrave; mềm mại ngay trong thời gian ngủ.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2019/2/25/a2033308.jpg" style="height:640px; width:640px" /></p>

<h2>C&Ocirc;NG DỤNG MẶT NẠ NGỦ M&Ocirc;I LANEIGE SPECIAL CARE LIP SLEEPING MASK 8GR</h2>

<p>Xuất xứ: h&agrave;n Quốc<br />
Trọng lượng: 8gr</p>

<p><strong><a href="https://beautygarden.vn/danh-muc/mat-na-moi.html">Mặt nạ ngủ m&ocirc;i</a></strong>&nbsp;Laneige Lip Sleeping Mask c&oacute; thiết kế cực dễ thương: thoạt nh&igrave;n tưởng chừng em n&agrave;y l&agrave; một hũ thủy tinh nhưng sản phẩm lại được l&agrave;m từ nhựa cứng, cầm kh&aacute; chắc tay. Đi k&egrave;m theo sản phẩm l&agrave; một t&uacute;i nho nhỏ c&oacute; cọ m&ocirc;i k&egrave;m theo b&ecirc;n trong. Cọ m&ocirc;i l&agrave;m từ cao su si&ecirc;u mềm, c&oacute; h&igrave;nh chiếc l&aacute; xinh xinh, c&oacute; thể mang sản phẩm đến tận từng kh&oacute;e m&ocirc;i.</p>

<p>Bằng việc sử dụng&nbsp;<strong><a href="https://beautygarden.vn/danh-muc/mat-na-moi.html">mặt nạ ngủ m&ocirc;i&nbsp;</a></strong>Laneige, đ&ocirc;i m&ocirc;i của bạn lu&ocirc;n lu&ocirc;n được cung cấp đầy đủ c&aacute;c loại vitamin v&agrave; dưỡng chất cần thiết từ hỗn hợp The Berry Mix Complex của 8 loại d&acirc;u (berry) tươi: Raspberry, blueberry, strawberry, cranberry, gojiberry,.....Đồng thời khả năng l&agrave;m sạch những tế b&agrave;o chết tr&ecirc;n m&ocirc;i trong qu&aacute; tr&igrave;nh ngủ, gi&uacute;p đ&ocirc;i m&ocirc;i th&acirc;m sần v&agrave; nứt nẻ do sử dụng mỹ phẩm được t&aacute;i sinh v&agrave; phục hồi trở n&ecirc;n hồng h&agrave;o v&agrave; căng mọng hơn.</p>

<p>Đặc biệt c&ocirc;ng nghệ Moisture Wrap &trade; chứa c&aacute;c li&ecirc;n kết Hyaluronic gi&uacute;p độ ẩm lưu lại l&acirc;u hơn v&agrave; c&aacute;c dưỡng chất hấp thụ tối ưu tr&ecirc;n m&ocirc;i, đặc biệt l&agrave; trong c&aacute;c đường r&atilde;nh m&ocirc;i nhỏ. C&aacute;c bạn g&aacute;i thỏa th&iacute;ch sử dụng son m&agrave; kh&ocirc;ng lo m&ocirc;i bị kh&ocirc; r&aacute;p, tối m&agrave;u v&agrave; son kh&ocirc;ng l&ecirc;n m&agrave;u chuẩn. Sau một thời gian sử dụng mặt nạ ngủ m&ocirc;i, sắc tố hồng tr&ecirc;n m&ocirc;i tr&ocirc;ng tự nhi&ecirc;n hơn v&agrave; vẫn v&ocirc; c&ugrave;ng tươi tắn nếu bạn kh&ocirc;ng t&ocirc; son m&agrave;u ng&agrave;y h&ocirc;m đ&oacute; nh&eacute;.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2019/2/25/a3033323.jpg" style="height:640px; width:640px" /></p>

<h2>HƯỚNG DẪN SỬ DỤNG MẶT NẠ NGỦ M&Ocirc;I LANEIGE SPECIAL CARE LIP SLEEPING MASK 8GR</h2>

<p>- Tẩy trang sạch m&ocirc;i.</p>

<p>- D&ugrave;ng chiếc th&igrave;a nhỏ trong hộp, lấy 1 lượng vừa đủ sản phẩm, kh&ocirc;ng n&ecirc;n b&ocirc;i mỏng qu&aacute;</p>

<p>- Thoa đều&nbsp;<strong><a href="https://beautygarden.vn/">mặt nạ ngủ m&ocirc;i</a></strong>&nbsp;l&ecirc;n m&ocirc;i v&agrave; đi ngủ.</p>

<p>- S&aacute;ng h&ocirc;m sau c&aacute;c n&agrave;ng sẽ thấy tế b&agrave;o chết m&ocirc;i sẽ bong ra, m&ocirc;i cực k&igrave; mềm mịn v&agrave; căng mọng.<br />
<br />
<img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2019/2/25/a4033639.jpg" style="height:640px; width:640px" /></p>
', N'/Content/Data/files/mask-m%C3%B4i8g.jpg', CAST(599000 AS Decimal(18, 0)), CAST(499000 AS Decimal(18, 0)), 0, 20, N'f4e587a0-d114-4f30-946c-04c30e01b730', N'- Laneige Lip Sleeping Mask phiên bản mới với nhiều ưu điểm vượt trội cho mùa giáng sinh 2016.

- Nhiều sự lựa chọn với nhiều mùi hương khác nhau.

- Xóa bỏ nỗi âu lo về đôi môi thô ráp và xỉn màu bằng việc cung cấp các loại vitamin và dưỡng chất cần thiết.', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T11:45:43.3624070+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'c042f922-9fd4-4a0e-8056-8e904cc5e5cf', N'Bộ Dưỡng Trắng Some By Mi Yuja', CAST(200000 AS Decimal(18, 0)), N'nike-air-zoom-generation', N'<p>Xuất xứ: H&agrave;n Quốc</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/7/3/0d76abd24c97aba8e6c17a61140af61b012522.jpg" style="height:640px; width:640px" /></p>

<p>Bộ sản phẩm dưỡng s&aacute;ng da c&oacute; chiết xuất từ tr&aacute;i Yuja, Niacinamide gi&uacute;p dưỡng s&aacute;ng da, chứa th&ecirc;m th&agrave;nh phần Arbutin v&agrave; Glutathione gi&uacute;p giảm th&acirc;m n&aacute;m, đồng thời bổ sung c&aacute;c loại vitamin gi&uacute;p l&agrave;m khỏe v&agrave; mang lại sức sống cho l&agrave;n da. Bộ kit gồm 4 sản phẩm nhỏ:<br />
1. Some By Mi Yuja Niacin 30 Days Miracle Brightening Toner 30ml- Nước hoa hồng gi&uacute;p c&acirc;n bằng ẩm, s&aacute;ng da<br />
2. Some By Mi Yuja Niacin Blemish Care Serum 10ml- Tinh chất gi&uacute;p dưỡng s&aacute;ng da, giảm th&acirc;m n&aacute;m<br />
3. Some By Mi Yuja Niacin Brightening Moisture Gel Cream 30ml- Kem dưỡng gi&uacute;p dưỡng s&aacute;ng da, dưỡng ẩm<br />
4. Some By Mi Yuja Niacin 30 days Miracle Brightening Sleeping Mask 20g- Mặt nạ ngủ dưỡng s&aacute;ng, dưỡng ẩm da&nbsp;</p>

<p><strong>Th&agrave;nh phần:</strong><br />
Qu&yacute;t Yuja, Niacinamide, Glutithione, Arbutin,...</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/7/3/set-4-mon-some-by-mi-yuja-niacin-mini012734.jpg" style="height:640px; width:640px" /></p>

<p><strong>Hướng dẫn sử dụng:</strong><br />
Sử dụng 2 lần 1 ng&agrave;y, s&aacute;ng v&agrave; tối<br />
Bước 1: Nước hoa hồng: Sau bước l&agrave;m sạch, lấy 1 lượng vừa đủ ra b&ocirc;ng tẩy trang, thoa đều khắp mặt v&agrave; vỗ nhẹ để thẩm thấu<br />
Bước 2: Tinh chất: Sau bước nước hoa hồng, lấy 1 lượng vừa đủ khoảng 2-3 giọt, thoa đều khắp mặt v&agrave; vỗ nhẹ để thẩm thấu<br />
Bước 3: Kem dưỡng: Sau bước tinh chất, lấy 1 lượng vừa đủ khoảng 1-2 hạt đỗ, thoa đều khắp mặt v&agrave; vỗ nhẹ để thẩm thấu<br />
Bước 4: Mặt nạ ngủ: Sử dụng v&agrave;o bước cuối c&ugrave;ng của chu tr&igrave;nh dưỡng da, lấy 1 lượng vừa đủ, thoa đều khắp mặt v&agrave; vỗ nhẹ để thẩm thấu, để qua đ&ecirc;m</p>
', N'/Content/Data/files/ava-fb.jpg', CAST(699000 AS Decimal(18, 0)), NULL, 0, 20, N'35f18486-b2b4-472e-9c90-071466e5bb2d', N'- Bộ chăm sóc da bao gồm 4 bước cơ bản cho làn da tươi sáng, hồng hào

- Nuôi dưỡng làn da từ sâu bên trong, với thành phần thiên nhiên an toàn không bào mòn da

- Tăng sức đề kháng giúp da khỏe mạnh, đánh bay các vết thâm mụn

- Cải thiện nền da đều màu, căng mướt, thu hẹp lỗ chân lông', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T15:03:07.9348793+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'b14e06c8-8cd6-4c9c-b3a3-95ea614e799a', N'Bộ Dưỡng Some By Mi AHA', CAST(200000 AS Decimal(18, 0)), N'nike-air-uptempo', N'<p>Bộ sản phẩm bao gồm 4 m&oacute;n b&aacute;n chạy nhất, với chiết xuất từ c&aacute;c th&agrave;nh phần thi&ecirc;n nhi&ecirc;n c&ugrave;ng với c&ocirc;ng nghệ trị mụn độc quyền của h&atilde;ng:</p>

<p>Chiết xuất rau m&aacute; (700,000ppm): C&oacute; khả năng l&agrave;m dịu da, củng cố h&agrave;ng r&agrave;o bảo vệ da v&agrave; l&agrave;m l&agrave;nh c&aacute;c vết thương.<br />
Chiết xuất 10,000ppm từ Tr&agrave;m tr&agrave;. C&oacute; t&aacute;c dụng kiểm so&aacute;t nhẹ nh&agrave;ng b&atilde; nhờn. Chăm s&oacute;c v&agrave; l&agrave;m dịu những tổn thương do mụn g&acirc;y ra.<br />
B&ecirc;n cạnh đ&oacute;, sản phẩm c&ograve;n sở hữu c&ocirc;ng thức kết hợp trị mụn hiệu quả của sản phẩm sẽ l&agrave; vị cứu tinh cho c&aacute;c n&agrave;ng da dầu mụn đ&oacute; nha:<br />
&ndash; AHA (Alpha Hydroxy Acid): Gi&uacute;p loại bỏ tế b&agrave;o chết kh&ocirc; sần, xỉn m&agrave;u tr&ecirc;n bề mặt da.<br />
&ndash; BHA (Beta Hydroxy Acid): Ph&aacute; vỡ b&atilde; nhờn tr&ecirc;n bề mặt da, gi&uacute;p l&agrave;m sạch s&acirc;u hơn cho lỗ ch&acirc;n l&ocirc;ng th&ocirc;ng tho&aacute;ng.<br />
&ndash; PHA (Poly Hydroxy Acid): Chất tẩy tế b&agrave;o chết nhẹ dịu, ngo&agrave;i ra c&ograve;n gi&uacute;p chống oxy h&oacute;a, k&iacute;ch th&iacute;ch t&aacute;i tạo tế b&agrave;o mới cho da săn chắc hơn.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/4/26/6a1418708deef07d2e2e1cfb83529e61014543.jpg" style="height:640px; width:640px" /><br />
<strong>Sữa rửa mặt Some By Mi AHA BHA PHA 30 Days Miracle Acne Clear Foam (30ml)</strong><br />
Sản phẩm c&oacute; t&iacute;nh acid nhẹ l&agrave;m dịu l&agrave;n da c&oacute; vấn đề, đồng thời cung cấp hydrat h&oacute;a v&agrave; dinh dưỡng cho da, c&oacute; chứa đến 80% chiết xuất Centella Asiatica v&agrave; c&aacute;c hoạt chất kh&aacute;c để cải thiện sự xuất hiện của c&aacute;c vết sưng tấy, đồng thời bảo vệ da chống lại c&aacute;c chất k&iacute;ch th&iacute;ch b&ecirc;n ngo&agrave;i, gi&uacute;p da lấy lại sự khỏe mạnh v&agrave; th&ocirc;ng tho&aacute;ng hơn.</p>

<p><strong>Nước C&acirc;n Bằng Da Some By Mi AHA-BHA-PHA 30 Days Miracle Toner (30ml)</strong><br />
Sản phẩm sở hữu khả năng dưỡng ẩm, c&acirc;n bằng độ pH v&agrave; hỗ trợ thu nhỏ lỗ ch&acirc;n l&ocirc;ng. C&oacute; t&aacute;c dụng ngăn chặn c&aacute;c dấu hiệu l&atilde;o h&oacute;a, tăng độ săn chắc cho da. C&ugrave;ng với đ&oacute; l&agrave; hỗ trợ loại bỏ tế b&agrave;o chết v&agrave; b&atilde; nhờn, hỗ trợ thu nhỏ lỗ ch&acirc;n l&ocirc;ng. Mang đến bạn l&agrave;n da mịn m&agrave;ng, sẵn s&agrave;ng &ldquo;tiếp nhận&rdquo; c&aacute;c bước dưỡng da tiếp theo.</p>

<p>&Aacute;p dụng c&ocirc;ng thức trị mụn nhưng vẫn kh&ocirc;ng sợ kh&ocirc; da. Bởi v&igrave; em ấy c&ograve;n tăng cường độ ẩm cho da bởi c&aacute;c th&agrave;nh phần như niacinamide, hyaluronic acid, glycerin. Đặc biệt, với độ pH=6 kh&aacute; an to&agrave;n kh&ocirc;ng g&acirc;y kh&ocirc; da hay k&iacute;ch ứng. Bạn c&oacute; thể y&ecirc;n t&acirc;m sử dụng em ấy m&agrave; kh&ocirc;ng sợ mụn lại tiếp tục tấn c&ocirc;ng nh&eacute;!</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/4/26/3d23277557d8dc69d3730e4206abe586014607.jpg" style="height:640px; width:640px" /></p>

<p><strong>Tinh Chất Trị Mụn Some By Mi AHA-BHA-PHA 30 Days Miracle Serum (10ml)</strong><br />
Sản phẩm sở hữu đặc t&iacute;nh s&aacute;t khuẩn cao, gi&uacute;p giảm sưng vi&ecirc;m &amp; l&agrave;m kh&ocirc; nh&acirc;n mụn, cải thiện da mụn cấp tốc. Đặc biệt c&ograve;n hỗ trợ l&agrave;m sạch da nhẹ nh&agrave;ng, gi&uacute;p lỗ ch&acirc;n l&ocirc;ng được th&ocirc;ng tho&aacute;ng v&agrave; mịn m&agrave;ng hơn. Đồng thời, củng cố &ldquo;h&agrave;ng r&agrave;o&rdquo; bảo vệ da, gi&uacute;p da nhanh ch&oacute;ng được t&aacute;i tạo &amp; l&agrave;m l&agrave;nh vết thương. Ngo&agrave;i ra sản phẩm c&ograve;n được bổ sung chiết xuất từ dầu thực vật (Plant Oil Complex). N&ecirc;n ngo&agrave;i chức năng trị mụn sản phẩm c&ograve;n gi&uacute;p da được dưỡng ẩm nữa c&aacute;c n&agrave;ng nh&eacute;.</p>

<p><strong>Kem Chống Nắng Some By Mi Truecica Mineral 100 Calming Suncream (25ml)</strong><br />
Kem Chống Nắng Some By Mi Trucica Mineral 100 Calming Suncream l&agrave; d&ograve;ng kem chống nắng an to&agrave;n đặc biệt d&agrave;nh cho l&agrave;n da mụn kh&ocirc;ng g&acirc;y k&iacute;ch ứng, mang lại khả năng l&agrave;m dịu l&agrave;n da đang c&oacute; vấn đề, đồng thời cung cấp c&aacute;c dưỡng chất gi&uacute;p bảo vệ l&agrave;n da tuyệt đối trước tia tia cực t&iacute;m độc hại.Sản phẩm c&oacute; chỉ số chống nắng SPF 50+ PA++++ sẽ gi&uacute;p bảo vệ l&agrave;n da bạn tr&aacute;nh khỏi t&aacute;c hại của &aacute;nh nắng mặt trời mỗi ng&agrave;y. Ngăn chặn c&aacute;c dấu hiệu l&atilde;o h&oacute;a v&agrave; cải thiện t&igrave;nh trạng sạm đen.</p>
', N'/Content/Data/files/30-Days-Miracle-Solution-(4-m%C3%B3n).jpg', CAST(759000 AS Decimal(18, 0)), NULL, 0, 20, N'35f18486-b2b4-472e-9c90-071466e5bb2d', N'- Nước hoa hồng Some By Mi AHA-BHA-PHA 30 Days Miracle Toner 30ml

- Tinh chất đặc trị Some By Mi AHA-BHA-PHA 30 Days Miracle Serum 10ml

- Kem dưỡng Some By Mi AHA-BHA-PHA 30 Days Miracle Cream 20g

- Kem chống nắng Some By Mi Truecica Mineral 100 Calming Suncream 25ml', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T15:03:49.4425073+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'44a76484-6ac2-4d48-a5c7-97448c545ab0', N'Phấn Má Hồng Nee Cara', CAST(200000 AS Decimal(18, 0)), N'new-balance-572', N'<p>M&aacute; hồng l&agrave; điểm nhấn quan trọng l&agrave;m nổi bật thần th&aacute;i v&agrave; kh&iacute; chất, tạo cảm gi&aacute;c tr&agrave;n đầy sức sống, rạng rỡ, thế n&ecirc;n được xem l&agrave; vật bất ly th&acirc;n đối với c&aacute;c n&agrave;ng y&ecirc;u th&iacute;ch make up tự nhi&ecirc;n, chỉ cần thoa một ch&uacute;t m&aacute; hồng l&agrave; đ&atilde; tăng th&ecirc;m v&agrave;i phần xinh đẹp.&nbsp;<strong>Nee Cara Leopard</strong>&nbsp;với 6 &ocirc; m&agrave;u kh&aacute;c nhau, c&aacute;c n&agrave;ng c&oacute; thể thoải m&aacute;i thay đổi m&agrave;u m&aacute; t&ugrave;y v&agrave;o c&aacute;c thời điểm trong ng&agrave;y nh&eacute;!!!</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/2/27/83809901_146047743521770_4480653759622828473_n091449.jpg" style="height:640px; width:640px" /></p>

<p>&nbsp;</p>

<h2>C&Ocirc;NG DỤNG SẢN PHẨM</h2>

<p>Xuất xứ: Th&aacute;i Lan</p>

<p>Trọng lượng:&nbsp;4.5gr x6</p>

<p>Nee Cara Leopard c&oacute; bảng m&agrave;u nhẹ nh&agrave;ng với c&aacute;c tone như cam đất, hồng nhẹ, cam nhẹ,.... c&oacute; thể d&ugrave;ng l&agrave;m cả phấn mắt để được lối make up &quot;tone xẹt tone&quot; nhanh - tiện - lợi. Đ&acirc;y thật sự l&agrave; bảng phấn cực kỳ ph&ugrave; hợp cho những n&agrave;ng lười make up, ngại tốn thời gian, cũng sẽ l&agrave; bảo bối cho những bạn thường xuy&ecirc;n đi du lịch, đi c&ocirc;ng t&aacute;c.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/2/27/nee-cara-leopard-n606-5091742.jpg" style="height:640px; width:640px" /></p>

<p>- Kết cấu hạt phấn rất nhỏ, nhuyễn, khi apply l&ecirc;n da sẽ cảm nhận được sự mịn m&agrave;ng của phấn, kh&ocirc;ng g&acirc;y hiện tượng v&oacute;n cục, kh&ocirc;ng bết d&iacute;nh, dễ l&ecirc;n m&agrave;u, chỉ cần d&ugrave;ng cọ qu&eacute;t một lần l&agrave; đ&atilde; l&ecirc;n m&agrave;u nh&egrave; nhẹ xinh xắn rồi, độ b&aacute;m kh&aacute; cao. ( Tuy nhi&ecirc;n để lu&ocirc;n xinh đẹp th&igrave; tầm 4-5 tiếng n&ecirc;n dặm lại phấn hoặc thay đổi m&agrave;u phấn kh&aacute;c nh&eacute;).</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/2/27/85232256_489162161727725_7350876392990441472_n091845.jpg" style="height:640px; width:640px" /></p>

<p>- Pakaging lạ m&agrave; xinh với phần vỏ c&oacute; mặt nhựa trong suốt k&egrave;m những hạt cườm h&igrave;nh ng&ocirc;i sao nhỏ nhắn, tạo cảm gi&aacute;c bắt mắt, đ&aacute;ng y&ecirc;u, phần vỏ được l&agrave;m từ giấ cứng n&ecirc;n sẽ kh&ocirc;ng dễ bể, tiện mang theo.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/2/27/5888255611ee48a463e26b639f14e997091912.jpg" style="height:640px; width:640px" /></p>
', N'/Content/Data/files/avatar-sp-web11-1-recovered-recovered-recovered-recovered-recovered-27022020091329.jpg', CAST(3590000 AS Decimal(18, 0)), NULL, 0, 18, N'49df2e48-4b19-477c-a87b-aec64de21e48', N'- Bảng phấn bao gồm 6 ô màu to bự thoải mái sử dụng

- Màu sắc hài hòa từ nhẹ nhàng đến ấn tượng

- Chất phấn mịn màng và giữ màu lâu', NULL, N'new-balance-572', N'new-balance-572', NULL, NULL, NULL, 1, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T11:57:17.6624041+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'11b4d958-69e7-47b5-afe0-9f1b49e1b01e', N'Bộ Chuốt Mi Maybelline New York', CAST(200000 AS Decimal(18, 0)), N'vans-comfycush-era', N'<p>Trải nghiệm 4 si&ecirc;u phẩm mascara đ&igrave;nh đ&aacute;m nhất của Maybelline với gi&aacute; v&ocirc; c&ugrave;ng tiết kiệm cực k&igrave; dễ d&agrave;ng v&igrave; đ&atilde; c&oacute; bộ sưu tập&nbsp;<strong>Maybelline Countdown Mini Mascara Kit</strong>&nbsp;đặc biệt.&nbsp;</p>

<p>Bộ sản phẩm c&oacute; thiết kế nhỏ gọn, bao gồm 4&nbsp;best-seller nh&agrave; Maybelline trong phi&ecirc;n bản mini size v&ocirc; c&ugrave;ng tiện lợi cho việc trải nghiệm thử sản phẩm v&agrave; mang theo b&ecirc;n m&igrave;nh mọi l&uacute;c mọi nơi.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2019/4/27/a0015115.jpg" style="height:640px; width:640px" /></p>

<h2>C&Ocirc;NG DỤNG BỘ CHUỐT MI MAYBELLINE NEW YORK COUNTDOWN MINI MASCARA KIT</h2>

<p>Bộ tứ si&ecirc;u đẳng gồm những sản phẩm sau:</p>

<p><strong>Total Temptation&nbsp;</strong></p>

<p>&ndash; Chuy&ecirc;n l&agrave;m d&agrave;y v&agrave; d&agrave;i mi.&nbsp;<br />
&ndash; C&ocirc;ng thức an to&agrave;n cho cả người sử dụng k&iacute;nh &aacute;p tr&ograve;ng.&nbsp;<br />
&ndash; Đầu cọ mềm, l&ocirc;ng chải trải đều khắp cọ, dễ d&agrave;ng chải kỹ từng phần mi.</p>

<p><strong>Lash Sensational</strong></p>

<p>&ndash; Gi&uacute;p sợi mi tơi d&agrave;i v&agrave; x&ograve;e đều như c&aacute;nh quạt.&nbsp;<br />
&ndash; C&ocirc;ng thức chống lem, chống tr&ocirc;i.&nbsp;<br />
&ndash; Đầu cọ cong nhẹ, bao gồm 6 loại lược v&agrave; 10 lớp lược kh&aacute;c nhau gi&uacute;p chải đều đến từng lớp mi nhỏ &amp; ngắn nhất.</p>

<p><strong>The Colossal</strong></p>

<p>&ndash; L&agrave;m d&agrave;y mi gấp 7 lần<br />
&ndash; Bổ sung Collagen dưỡng mi, tr&aacute;nh t&igrave;nh trạng kh&ocirc; hay g&atilde;y rụng mi.&nbsp;<br />
&ndash; Đầu chổi d&agrave;y c&oacute; thể len lỏi, b&aacute;m v&agrave;o từng sợi mi ở mọi g&oacute;c độ, gi&uacute;p mi được l&agrave;m d&agrave;y tối ưu.</p>

<p><strong>Great Lash</strong></p>

<p>&ndash; D&ograve;ng masscara b&aacute;n chạy nhất với khả năng l&agrave;m d&agrave;y mi, đen mi suốt cả ng&agrave;y d&agrave;i.&nbsp;<br />
&ndash; C&ocirc;ng thức che phủ mềm mại, kh&ocirc;ng lem, kh&ocirc;ng v&oacute;n cục, an to&agrave;n với k&iacute;nh &aacute;p tr&ograve;ng.&nbsp;<br />
&ndash; Đầu chổi mềm mại, dễ d&agrave;ng len lỏi đến từng lớp mi nhỏ nhất.<br />
<br />
<img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2019/4/27/a1015134.jpg" style="height:640px; width:640px" /></p>

<h2>HƯỚNG DẪN SỬ DỤNG BỘ CHUỐT MI MAYBELLINE NEW YORK COUNTDOWN MINI MASCARA KIT</h2>

<p>- Bước 1: D&ugrave;ng kẹp bấm mi tạo nếp cong cho h&agrave;ng mi</p>

<p>- Bước 2: Sử dụng phần ph&iacute;a trong của đầu cọ để c&oacute; thể t&ocirc; điểm h&agrave;ng mi từ gốc</p>

<p>- Bước 3: Nhẹ nh&agrave;ng đưa cọ theo chiều cong l&ocirc;ng mi</p>

<p>- Bước 4: Bạn c&oacute; thể chải một lần hay nhiều lần để c&oacute; l&agrave;n mi ưng &yacute;.<br />
<br />
<img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2019/4/27/a2015148.jpg" style="height:640px; width:640px" /></p>
', N'/Content/Data/files/a00-27042019015159.jpg', CAST(2200000 AS Decimal(18, 0)), NULL, 0, 15, N'dc7469a5-a82d-4e56-863b-e2f6f1fcf15d', N'- Sản phẩm cho mi dày tối đa từ gốc đến ngọn ngay trong lần chải đầu tiên.

- Đầu cọ mới với 2 bề mặt giúp tăng diện tích tiếp xúc cho mi dày hơn

- Thành phần collagen giúp nuôi dưỡng mi khỏe ngay cả khi đang sử dụng.

- Sản phẩm dễ dàng tẩy trang mà không làm mi gãy rụng', NULL, N'vans-comfycush-era', N'vans-comfycush-era', NULL, 1, NULL, NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T11:53:05.9614739+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'c9d85df8-6a73-4c5f-b10e-a7a73bd0e09a', N'Sữa Rửa Mặt Mersenne Beaute', CAST(200000 AS Decimal(18, 0)), N'nike-vapor-max-2019', N'<p>Tinh dầu th&ocirc;ng đỏ H&agrave;n Quốc nổi tiếng khắp thế giới bởi những t&aacute;c dụng tuyệt vời cho sức khoẻ con người. Kh&ocirc;ng chỉ dừng lại ở sản phẩm sức khoẻ, c&aacute;c nh&agrave; sản xuất mỹ phẩm ở xứ sở kim chi đ&atilde; ứng dụng dược liệu qu&yacute; n&agrave;y v&agrave;o lĩnh vực chăm s&oacute;c da v&agrave; cho ra đời&nbsp;<strong>Sữa Rửa Mặt Mersenne Beaute Red Pine Moisture Cleansing Foam 170ml</strong></p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/5/14/f4ddf6a83e68dc368579032238.png" style="height:640px; width:640px" /></p>

<p>Ngo&agrave;i chiết xuất từ l&aacute; c&acirc;y th&ocirc;ng đỏ (Pinus Densiflora Leaf Extract), sữa rửa mặt tinh dầu th&ocirc;ng đỏ Red Pine Gold c&ograve;n c&oacute; c&aacute;c th&agrave;nh phần chủ yếu đến từ thi&ecirc;n nhi&ecirc;n gồm:Chiết xuất củ nh&acirc;n s&acirc;m (Panax Ginseng Root Extract), chiết dưa leo (Cucumis Sativus (Cucumber) Fruit Extract), vỏ c&acirc;y d&acirc;u tằm (Morus Alba Back Extract), tinh chất l&aacute; tr&agrave; xanh (Camellis Sinensis Leaf Extract), chiết xuất rau sam (Portulaca Oleracea Extract), quả c&agrave; chua (Solanum Lycopersicum (Tomato) Fruit Extract) v&agrave; chiết xuất l&aacute; Pinus Densiflora (Pinus Densiflora Leaf Extract), Glycerin, Lauric Acid.</p>

<p>Với c&aacute;c th&agrave;nh phần nguồn gốc thi&ecirc;n nhi&ecirc;n đa dạng v&agrave; c&ocirc;ng thức kết hợp đặc biệt của nh&agrave; sản xuất mỹ phẩm H&agrave;n Quốc,&nbsp;<strong>Red Pine Moisture Cleansing Foam:&nbsp;</strong></p>

<ul>
	<li>Rửa sạch bụi bẩn, b&atilde; nhờn. Mang đến l&agrave;n da thanh khiết, s&aacute;ng sạch. Gi&uacute;p phục hồi sức sống v&agrave; sự mềm mại của l&agrave;n da qua từng ng&agrave;y.</li>
	<li>Cung cấp dưỡng chất từ dầu th&ocirc;ng cho bạn l&agrave;n da mịn m&agrave;ng.</li>
	<li>Với kết cấu kem gi&agrave;u ẩm,&nbsp;<strong>Sửa rửa mặt Th&ocirc;ng đỏ&nbsp;</strong>bổ sung độ ẩm&nbsp;cần thiết cho da. Gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng v&agrave; c&oacute; t&aacute;c dụng ngăn ngừa l&atilde;o h&oacute;a.</li>
</ul>
', N'/Content/Data/files/sua-rm-14052020032137.jpg', CAST(259000 AS Decimal(18, 0)), NULL, 0, 20, N'35f18486-b2b4-472e-9c90-071466e5bb2d', N' Với kết cấu kem giàu ẩm, nhanh chóng tạo nên lớp bọt kem ẩm và mịn màng  ôm lấy làn da bạn.
Rửa sạch bụi bẩn, bã nhờn. Mang đến làn da thanh khiết, sáng sạch. Giúp phục hồi sức sống và sự mềm mại của làn da qua từng ngày.
Cung cấp dưỡng chất từ dầu thông đỏ cho bạn làn da mịn màng.
 Giúp se khít lỗ chân lông và có tác dụng ngăn ngừa lão hóa', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T14:57:39.6259374+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'59ded37f-c008-4f40-9af6-c34691f826e2', N'Son Tint Black Rouge Half', CAST(200000 AS Decimal(18, 0)), N'lunar-epic-low-fly-knit-2', N'<p>Mở đầu cho năm 2021, Black Rouge ra mắt bộ sưu tập son mới Half N Half Collection hứa hẹn sẽ tạo n&ecirc;n một l&agrave;n s&oacute;ng l&agrave;m đẹp hiện đại hơn, nổi bật hơn, gi&uacute;p bạn kh&aacute;m ph&aacute; th&ecirc;m một phần c&aacute; t&iacute;nh v&agrave; vẻ đẹp tiềm ẩn. Một phi&ecirc;n bản tự tin trong ch&iacute;nh con người của bạn!</p>

<p>Half N Half Collection bao gồm 10 m&agrave;u son được chia th&agrave;nh 3 phi&ecirc;n bản theo chất son kh&aacute;c nhau để bạn c&oacute; nhiều sự lựa chọn. Phi&ecirc;n bản kế tiếp HALF N HALF WATER GLOW: Chất son water - glow lần đầu được tr&igrave;nh l&agrave;ng, lớp finish căng mọng nhẹ nh&agrave;ng như m&agrave;u nước.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/3/11/150974236_3616021961785146_5891590431827314391_n010309.jpg" style="height:640px; width:640px" /></p>

<h2>C&Ocirc;NG DỤNG SẢN PHẨM</h2>

<p>Xuất xứ: H&agrave;n Quốc</p>

<p>Trọng lượng: 3.5gr</p>

<p><br />
&bull; Thiết kế h&igrave;nh dạng b&aacute;t gi&aacute;c độc quyền. Chất liệu vỏ son b&aacute;n trong suốt như jelly, gi&uacute;p bảo quản son, hạn chế sự xuy&ecirc;n thấu của &aacute;nh s&aacute;ng, vẫn c&oacute; thể li&ecirc;n tưởng đến t&iacute;nh chất #glowy.</p>

<p>&bull; Lớp vỏ v&agrave; nắp tr&ugrave;ng với m&agrave;u son b&ecirc;n trong, nắp c&oacute; khớp vặn chặt, gi&uacute;p bạn bảo vệ son tốt hơn.</p>

<p>&bull; Đầu cọ h&igrave;nh giọt nước v&aacute;t nhọn đầu, gi&uacute;p dễ di chuyển v&agrave; t&ocirc; đến từng g&oacute;c nhỏ nhất, phần rỗng ở giữa điều chỉnh lượng son m&ocirc;i vừa đủ trong mỗi thao t&aacute;c lấy son.</p>

<p>&bull; Vỏ hộp t&ocirc;ng đỏ bắt mắt, c&oacute; đường cắt h&igrave;nh tr&aacute;i tim để lộ một phần nắp, bạn c&oacute; thể cảm nhận chất liệu đặc biệt của vỏ son.</p>

<p>&nbsp;</p>

<p><br />
&bull; C&ocirc;ng thức HALF &amp; HALF: Giảm &frac12; trọng lượng + Tăng &frac12; th&agrave;nh phần dưỡng ẩm.</p>

<p>&bull; Kết cấu Dewy Glow nhẹ như nước, trong suốt v&agrave; ẩm m&aacute;t như giọt sương, kh&ocirc;ng g&acirc;y bết d&iacute;nh, gi&uacute;p l&ecirc;n m&agrave;u chuẩn v&agrave; tươi tắn tr&ecirc;n đ&ocirc;i m&ocirc;i.</p>

<p>&bull; Hiệu ứng Volume Up v&agrave; Color Up: Tạo độ căng mọng tuyệt vời ngay tức th&igrave;, l&agrave;m m&ocirc;i đầy đặn rạng rỡ, giữ ẩm suốt cả ng&agrave;y d&agrave;i</p>

<ul>
	<li>&nbsp;Hương thơm Juicy Citrus thanh m&aacute;t nhẹ nh&agrave;ng.</li>
</ul>

<p>&nbsp;<img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/3/11/151985065_233134135113567_2706291062432746166_n010439.jpg" style="height:640px; width:640px" /></p>

<p><br />
Black Rouge Half &amp; Half Water Glow Sự kết hợp độc đ&aacute;o gồm 4 m&agrave;u:</p>

<p><br />
HG01 - Fresh Grapefruit: Đỏ cam</p>

<p>HG02 - Exciting Pink: Hồng tone lạnh</p>

<p>HG03 - Greed Cherry: Đỏ anh đ&agrave;o</p>

<p>HG04 - Over Tension: N&acirc;u đỏ</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/3/11/149845582_309170450878850_8164836308415358538_n010605.jpg" style="height:640px; width:640px" /></p>

<p><a href="https://beautygarden.vn/Upload/tinymce/2021/3/11/son-tint-black-rouge-half-half-water-glow-35gr-1-hinh-anh-1.jpg" target="_blank" title="Son Tint Black Rouge Half  Half Water Glow  hình ảnh 1"><img alt="son tint black rouge half half water glow 35gr hinh anh 1" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/3/11/son-tint-black-rouge-half-half-water-glow-35gr-1-hinh-anh-1.jpg" style="height:640px; width:640px" /></a></p>
', N'/Content/Data/files/water-tint(1).jpg', CAST(229000 AS Decimal(18, 0)), NULL, 0, 20, N'1e1200ae-1d12-4306-92ac-b05ac0bcf8ec', N'Half N Half Collection bao gồm 10 màu son được chia thành 3 phiên bản theo chất son khác nhau để bạn có nhiều sự lựa chọn. Phiên bản kế tiếp HALF N HALF WATER GLOW: Chất son water - glow lần đầu được trình làng, lớp finish căng mọng nhẹ nhàng như màu nước.', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T14:58:45.6209822+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'a410db7a-d414-41df-bad6-c6c636940977', N'Kẻ Mắt Nước Chống Trôi', CAST(200000 AS Decimal(18, 0)), N'vans-anaheim-factory-style-73-dx-vn0a3wlqvtm', N'<p>Black Rouge đ&atilde; tung ra bộ sưu tập m&ugrave;a h&egrave; với chủ đề Pool Party m&agrave; bạn kh&ocirc;ng thể bỏ lỡ: All Day Power Proof Pen Liner với t&ocirc;ng m&agrave;u chủ đạo living coral hot nhất hiện nay, chống tr&ocirc;i suốt ng&agrave;y d&agrave;i, c&ograve;n chần chừ g&igrave; nữa m&agrave; kh&ocirc;ng h&ograve;a v&agrave;o m&ugrave;a h&egrave; s&ocirc;i động c&ugrave;ng Black Rouge!</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/3/12/review-ke-mat-black-rouge-all-day-power-proof-pen-liner-16015448.jpg" style="height:640px; width:640px" /></p>

<h2>C&Ocirc;NG DỤNG SẢN PHẨM</h2>

<p><strong>Trọng lượng: 0.5gr</strong></p>

<p><strong>Thiết kế:</strong></p>

<p>- Thiết kế dạng b&uacute;t thanh mảnh nhỏ gọn<br />
- Phủ sắc hồng coral ngọt ng&agrave;o<br />
- Vỏ b&oacute;ng trendy<br />
- Nắp đậy chắc v&agrave; cứng c&aacute;p, gi&uacute;p giữ đầu b&uacute;t lu&ocirc;n tươi mới</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/3/12/review-ke-mat-black-rouge-all-day-power-proof-pen-liner-9015553.jpg" style="height:640px; width:640px" /></p>

<p><strong>Ưu điểm:</strong></p>

<p>- N&eacute;t kẻ thanh mảnh<br />
- Chất gel nước cực k&igrave; sắc n&eacute;t &amp; kh&oacute; lem, l&ecirc;n m&agrave;u r&otilde; ngay lần di b&uacute;t đầu ti&ecirc;n<br />
- Độ b&aacute;m k&eacute;o d&agrave;i cả ng&agrave;y, kh&ocirc;ng dễ bị rửa tr&ocirc;i<br />
- Đầu cọ mảnh nhưng mềm mại linh hoạt, v&ocirc; d&ugrave;ng dễ thao t&aacute;c<br />
- Thiết kế chắc chắn với nắp đậy th&ocirc;ng minh, hạn chế được t&igrave;nh trạng kh&ocirc; mực<br />
- Thuộc bộ sưu tập Pool Party của Black Rouge n&ecirc;n bạn h&atilde;y an t&acirc;m vui chơi suốt ng&agrave;y<br />
- Kh&ocirc;ng cần apply nhiều lần, 1 lần kẻ, b&aacute;m cả ng&agrave;y</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/3/12/bschbsjdhvb015608.jpg" style="height:640px; width:640px" /></p>

<p>2 m&agrave;u sắc cho bạn lựa chọn:</p>

<p>P01 - Deep Black<br />
P02 - Deep Brown</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/3/12/avatar-sp-web11-recovered-recovered-recovered-recovered-recovered015619.jpg" style="height:640px; width:640px" /></p>
', N'/Content/Data/files/Black-Rouge-Power-Proof-Pen-Liner.jpg', CAST(1750000 AS Decimal(18, 0)), NULL, 0, 4, N'dc7469a5-a82d-4e56-863b-e2f6f1fcf15d', N'All Day Power Proof Pen Liner với tông màu chủ đạo living coral hot nhất hiện nay, chống trôi suốt ngày dài, còn chần chừ gì nữa mà không hòa vào mùa hè sôi động cùng Black Rouge!', NULL, N'van', NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T11:54:56.3542804+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'90bff1e5-4b44-4d2c-813b-c94fdad898ff', N'Mặt Nạ Đất Sét L''Oreal Paris', CAST(200000 AS Decimal(18, 0)), N'nike-air-max-just-do-it', N'<p>Cuộc sống bận rộn đầy &aacute;p lực, m&ocirc;i trường &ocirc; nhiễm hay trang điểm h&agrave;ng ng&agrave;y khiến da bạn mệt mỏi, b&iacute; tắt, yếu đi tr&ocirc;ng thấy. Mụn ẩn xuất hiện, da xỉn m&agrave;u hay đổ dầu, lỗ ch&acirc;n l&ocirc;ng to. Để sở hữu l&agrave;n da khỏe rạng ngời từ s&acirc;u b&ecirc;n trong, bạn cần một giải ph&aacute;p thanh lọc chuy&ecirc;n s&acirc;u, loại bỏ c&aacute;c khuyết điểm da. V&agrave; mặt nạ L&#39;Oreal Pure Clay Mask 50gr đến từ thương hiệu L&rsquo;Oreal ch&iacute;nh l&agrave; mặt nạ bạn n&ecirc;n sử dụng ngay từ b&acirc;y giờ.</p>

<p><strong>Mặt Nạ&nbsp;L&#39;Oreal Pure Clay Mask 50gr&nbsp;</strong>&ndash; một d&ograve;ng mặt nạ nữa đến từ thương hiệu L&rsquo;Oreal, gi&uacute;p s&aacute;ng da, mềm da từ s&acirc;u b&ecirc;n trong đồng thời loại bỏ mụn đầu đen một c&aacute;ch hiệu quả. C&ugrave;ng&nbsp;<a href="https://beautygarden.vn/">BeautyGarden</a>&nbsp;kh&aacute;m ph&aacute; về d&ograve;ng mặt nạ dưỡng da đất s&eacute;t tuyệt vời như thế n&agrave;y nh&eacute;!</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2019/2/25/a1115441.jpg" style="height:640px; width:640px" /></p>

<h2>C&Ocirc;NG DỤNG MẶT NẠ ĐẤT S&Eacute;T L&#39;OREAL PARIS PURE CLAY MASK 50GR + GIFT</h2>

<p>Bộ sản phẩm mặt nạ đất s&eacute;t L&#39;Oreal Paris Pure-Clay Mask được thiết kế ph&ugrave; hợp với mọi loại da bao gồm cả da nhạy cảm. Với sự g&oacute;p mặt của 4 &quot;em&quot; Purify Clay Mask, Glow Clay Mask v&agrave; Detox Clay Mask,Pure Clay Blemish Rescue Mask. Mỗi loại đều được cấu tạo dựa tr&ecirc;n 4 loại đất s&eacute;t ch&iacute;nh c&oacute; nguồn gốc từ những d&atilde;y n&uacute;i tại Morocco, miền Nam nước Anh v&agrave; Mỹ. Sự kh&aacute;c biệt của c&aacute;c loại n&agrave;y l&agrave; được cấu tạo kh&aacute;c nhau với tỷ lệ th&agrave;nh phần đất s&eacute;t kh&aacute;c nhau được thiết kế đặc trưng cho thời gian hấp thụ l&yacute; tưởng, bao gồm:</p>

<p>- Đất s&eacute;t Kaolin l&agrave; đất s&eacute;t &quot;kiệt xuất&quot; về khả năng hấp thụ chất bẩn v&agrave; b&atilde; nhờn dư thừa</p>

<p>- Đất s&eacute;t Montmorillonite gi&agrave;u kho&aacute;ng chất c&oacute; thể loại bỏ nhược điểm tối m&agrave;u của l&agrave;n da</p>

<p>- Đất s&eacute;t Ghassoul (hay rhassoul)- một loại đất s&eacute;t tinh khiết tập trung ở c&aacute;c kho&aacute;ng đảo nổi tiếng, gi&uacute;p cải thiện l&agrave;n da thiếu sức sống.</p>

<p>- Đất s&eacute;t sa mạc Mỹ, chiết xuất từ Lục tảo gi&uacute;p da được thanh lọc, ngăn ng&ugrave;a v&agrave; giảm mụn cho da.</p>

<p><em>C&ocirc;ng dụng của từng loại mask:</em></p>

<p>&bull; Detox mask: C&oacute; m&agrave;u x&aacute;m, th&agrave;nh phần ch&iacute;nh của mặt nạ n&agrave;y l&agrave; 3 loại&nbsp;<a href="https://www.beautygarden.vn/danh-muc/mask-dat-set.html">đất s&eacute;t</a>&nbsp;ph&iacute;a tr&ecirc;n, th&ecirc;m th&agrave;nh phần than củi c&oacute; nguồn gốc Nhật Bản hoạt động giống như một nam ch&acirc;m h&uacute;t bỏ bụi bẩn, gi&uacute;p detox v&agrave; l&agrave;m s&aacute;ng da.</p>

<p>&bull; Glow Mask: C&oacute; m&agrave;u cam đỏ, gồm 3 loại đất s&eacute;t ch&iacute;nh kết hợp chiết xuất t&aacute;o đỏ của Ph&aacute;p. Mặt nạ n&agrave;y cũng c&oacute; cấu tạo từ c&aacute;c hạt nhỏ do đ&oacute; khi d&ugrave;ng, bạn sẽ vừa l&agrave;m sạch da, vừa tẩy da chết c&ugrave;ng l&uacute;c.</p>

<p>&bull; Purify mask: C&oacute; m&agrave;u xanh l&aacute;, ngo&agrave;i 3 loại đất s&eacute;t ch&iacute;nh, sản phẩm c&ograve;n c&oacute; th&ecirc;m chiết xuất l&aacute; bạch đ&agrave;n xanh Ph&aacute;p gi&uacute;p hạn chế qu&aacute; tr&igrave;nh oxy h&oacute;a của b&atilde; nhờn, gi&uacute;p l&agrave;m sạch, s&aacute;ng v&agrave; trong l&agrave;n da.</p>

<p>&bull; Anti-Blemish: C&oacute; m&agrave;u xanh dương, th&agrave;nh phần ch&iacute;nh của mặt nạ n&agrave;y l&agrave; đất s&eacute;t sa mạc Mỹ v&agrave; lục tảo gi&uacute;p loại bỏ mụn hiệu quả, ngăn chặn sự h&igrave;nh th&agrave;nh mụn cho l&agrave;n da khỏe, s&aacute;ng mịn l&ecirc;n tr&ocirc;ng thấy.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2019/2/25/a2115520.jpg" style="height:640px; width:640px" /><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2019/2/25/a3115529.jpg" style="height:640px; width:640px" /></p>

<h2>HƯỚNG DẪN SỬ DỤNG MẶT NẠ ĐẤT S&Eacute;T L&#39;OREAL PARIS PURE CLAY MASK 50GR+ GIFT</h2>

<p>Bước 1: L&agrave;m sạch da bằng tẩy trang v&agrave; sữa rửa mặt.</p>

<p>Bước 2: Lau kh&ocirc; mặt, sau đ&oacute; lấy một lượng&nbsp;<u>mặt nạ dưỡng da giảm mụn&nbsp;</u>L&#39;Oreal Pure Clay Mask 50gr vừa đủ, thoa đều khắp mặt. Lưu &yacute;: n&ecirc;n massage đều v&agrave; kỹ để mặt nạ thấm s&acirc;u len lỏi v&agrave;o những khu vực c&oacute; lỗ ch&acirc;n l&ocirc;ng to.</p>

<p>Bước 3: Đắp&nbsp;<a href="https://beautygarden.vn/danh-muc/mask-mat-na.html">mặt nạ</a>&nbsp;thư gi&atilde;n trong v&ograve;ng 10 ph&uacute;t (kh&ocirc;ng được sử dụng l&acirc;u hơn nh&eacute;)</p>

<p>Bước 5: Rửa sạch mặt với nước ấm sau đ&oacute; lau sơ toner rồi tiếp tục c&aacute;c bước skincare của bạn.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2019/2/25/a4115550.jpg" style="height:640px; width:640px" /></p>
', N'/Content/Data/files/a0-25022019115417.jpg', CAST(599000 AS Decimal(18, 0)), NULL, 0, 20, N'35f18486-b2b4-472e-9c90-071466e5bb2d', N'- Mặt nạ đất sét thanh lọc giảm mụn đầu đen

- Chiết xuất thảo mộc tự nhiên an toàn và nhẹ dịu cho làn da của bạn

- Giúp giảm mụn đầu đen và mềm mịn da hiệu quả

- Chiết xuất từ mặt nạ đất sét giàu khoáng chất giúp loại bỏ hoàn toàn tế bào chết lấy đi bã nhờn ', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T15:02:11.7198315+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'1cdc746d-7b42-4666-baad-d3ca4411b2fe', N'Tinh Dầu Dưỡng Tóc Raip R3 Argan', CAST(200000 AS Decimal(18, 0)), N'puma-tsugi-blaze', N'<p><strong>Tinh dầu dưỡng t&oacute;c Raip R3 Argan Hair Oil</strong>&nbsp;với th&agrave;nh phần 100% tinh dầu Argan, mang lại m&aacute;i t&oacute;c b&oacute;ng mượt c&ugrave;ng m&ugrave;i thơm cực kỳ quyến rũ suốt cả ng&agrave;y. Đặc biệt sản phẩm kh&ocirc;ng chứa Paraben (Paraben Free) rất l&agrave;nh t&iacute;nh cho t&oacute;c v&agrave; da.</p>

<p>Raip R3 Argan l&agrave; một trong những sản phẩm bestseller tại thị trường H&agrave;n Quốc. Argan hair oil thẩm thấu cực nhanh v&agrave;o t&oacute;c, phục hồi t&oacute;c từ b&ecirc;n trong, cho t&oacute;c b&oacute;ng mượt tức th&igrave; m&agrave; kh&ocirc;ng l&agrave;m bết d&iacute;nh hay nặng t&oacute;c, giảm thời gian sấy v&agrave; tạo kiểu đến 50%.</p>

<p>Sử dụng thường xuy&ecirc;n tinh dầu Argan hair oil c&oacute; t&aacute;c dụng chữa trị t&oacute;c hư tổn, l&agrave;m giảm hẳn t&oacute;c chẻ ngọn v&agrave; t&oacute;c gi&ograve;n dễ gẫy.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/2/28/avatar-sp-web11-1-recovered-recovered-recovered-recovered-recovered-recovered100452.jpg" style="height:640px; width:640px" /></p>

<h2>C&Ocirc;NG DỤNG SẢN PHẨM</h2>

<p>Xuất xứ: H&agrave;n Quốc</p>

<p>Dung t&iacute;ch: 100ml</p>

<p><strong>Th&agrave;nh phần:</strong><br />
Argan hair oil chứa th&agrave;nh phần ch&iacute;nh từ dầu Argan, một loại dầu từ hạt quả Argan v&agrave; được v&iacute; như v&agrave;ng của đất nước Bắc Phi. Dầu Argan chứa:</p>

<p>* C&aacute;c axit b&eacute;o chưa b&atilde;o h&ograve;a như axit oleic v&agrave; axit linolenic rất phong ph&uacute;.</p>

<p>* Vitamin E gấp 2 lần dầu &ocirc; liu</p>

<p>* Axit ferulic bảo vệ t&oacute;c khỏi tia cực t&iacute;m&hellip;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/2/28/dau-duong-toc-raip-r3-argan-oil-11100738.jpg" style="height:640px; width:640px" /></p>

<p>&ndash; Dầu c&acirc;y Hắc Mai biển:Gi&agrave;u vitamin, tocopherols v&agrave; carotenoid.</p>

<p>&ndash; Dầu hoa c&uacute;c</p>

<p>&ndash; Dầu Jojoba: Gi&agrave;u vitamin, kho&aacute;ng chất, v&agrave; c&aacute;c th&agrave;nh phần protein, gi&uacute;p giữ cho t&oacute;c mềm mại v&agrave; sống động bằng c&aacute;ch l&agrave;m cho n&oacute; nhẹ hơn v&agrave; s&aacute;ng b&oacute;ng.</p>

<p>&ndash; Dầu bơ: Protein, axit amin v&agrave; kho&aacute;ng chất từ bơ rừng, v&agrave; đặc biệt l&agrave; độ ẩm tuyệt vời.</p>

<p>&ndash; Dầu hạt nho : Cung cấp dưỡng t&oacute;c v&agrave; tỏa s&aacute;ng cho t&oacute;c v&agrave; gi&uacute;p dưỡng ẩm.</p>

<p>&ndash; Dầu &ocirc; liu: Gi&agrave;u chất dinh dưỡng như vitamin, l&agrave;m ẩm t&oacute;c th&ocirc; v&agrave; gi&uacute;p bảo vệ v&agrave; tăng cường sức sống cho t&oacute;c.</p>

<p>&ndash; Dầu hạt hướng dương: Gi&uacute;p ngăn t&oacute;c bay hơi ẩm v&agrave; gi&uacute;p dưỡng ẩm. N&oacute; cũng gi&uacute;p cải thiện v&agrave; duy tr&igrave; m&aacute;i t&oacute;c khỏe mạnh với hiệu quả điều trị nh&igrave;n thấy.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/2/28/dau-duong-toc-raip-r3-argan-oil-1-500x500100531.jpg" style="height:640px; width:640px" /></p>

<p><strong>C&oacute; c&aacute;c loại cho bạn chọn lựa:</strong></p>

<p>1. Original (v&agrave;ng): m&ugrave;i nước hoa nhẹ nh&agrave;ng , nhẹ nhất trong 4 m&ugrave;i .</p>

<p>2. Lovely (hồng): m&ugrave;i ngọt ngọt nhẹ nh&agrave;ng dễ chịu</p>

<p>3. Ocean Blue (xanh): m&ugrave;i thanh m&aacute;t dễ thương cực k&igrave;</p>

<p>4. Elegance (t&iacute;m): m&ugrave;i kiểu quyến rũ nhưng vẫn rất dễ chịu</p>

<p>5.&nbsp;Baby Powder (xanh mint): Hương phấn em b&eacute; nhẹ nh&agrave;ng, tho&aacute;ng m&aacute;t</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/2/28/tinh-dau-duong-va-phuc-hoi-toc-hu-ton-raip-r3-argan-hair-oil-13100706.jpg" style="height:640px; width:640px" /></p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/2/28/dau-duong-toc-raip-r3-argan-oil-1-500x500100717.jpg" style="height:640px; width:640px" /></p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/2/28/unnamed100728.jpg" style="height:640px; width:640px" /></p>
', N'/Content/Data/files/avatar-sp-web11-1-recovered-recovered-recovered-recovered-recovered-recovered-28022020100038.jpg', CAST(499000 AS Decimal(18, 0)), NULL, 0, 20, N'9f0de121-5036-4a23-a37e-176e1fab5ffc', N'- Cung cấp dưỡng tóc và tỏa sáng cho tóc và giúp dưỡng ẩm.

- Giàu chất dinh dưỡng như vitamin, làm ẩm tóc thô và giúp bảo vệ và tăng cường sức sống cho tóc

- Sản phẩm không chứa Paraben (Paraben Free) rất lành tính cho tóc và da', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T15:05:29.8904219+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'cc41105a-fde4-4e45-b479-d84e35b6f6e2', N'Phấn Phủ Innisfree Mentos No Sebum', CAST(200000 AS Decimal(18, 0)), N'adidas-yeezy-super-2019', N'<p>Xuất xứ: H&agrave;n Quốc</p>

<p>Trọng lượng: 5gr</p>

<p><strong>No-sebum Mineral Powder</strong>&nbsp;l&agrave; một trong những sản phẩm phấn phủ kiềm dầu được y&ecirc;u th&iacute;ch nhất của&nbsp;<strong>Innisfree</strong>, thương hiệu l&agrave;m đẹp H&agrave;n Quốc.</p>

<p>M&ugrave;a h&egrave; 2020,<strong>&nbsp;Innisfree</strong>&nbsp;quyết định hợp t&aacute;c c&ugrave;ng thương hiệu kẹo cao su Mentos cho ra mắt diện mạo tr&aacute;i c&acirc;y nhiệt đới h&uacute;t mắt. Sự hợp t&aacute;c bất ngờ n&agrave;y kỷ niệm 14 năm sản phẩm chủ lực của Innisfree.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/5/15/innisfree001032155.jpg" style="height:640px; width:640px" /></p>

<p>Bộ sưu tập giới hạn l&agrave; sự kết hợp đ&aacute;ng y&ecirc;u giữa phấn phủ kiềm dầu<strong>&nbsp;Innisfree No Sebum Mineral Powder</strong>&nbsp;v&agrave; thương hiệu kẹo ngọt Mentos m&agrave;<strong>&nbsp;Innisfree</strong>&nbsp;muốn d&agrave;nh tặng bạn trong những ng&agrave;y đầu h&egrave;. Với th&agrave;nh phần bạc h&agrave; v&agrave; kho&aacute;ng chất thi&ecirc;n nhi&ecirc;n từ đảo Jeju,&nbsp;<strong>No Sebum Mineral Powder</strong>&nbsp;kiểm so&aacute;t b&atilde; nhờn v&agrave; dầu thừa hiệu quả, gi&uacute;p da bạn STAY FRESH suốt cả ng&agrave;y d&agrave;i.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/5/15/innisfre-mentos-1587105992032314.jpg" style="height:640px; width:640px" /></p>

<p>No Sebum Mineral Powder từ l&acirc;u đ&atilde; trở th&agrave;nh niềm đam m&ecirc; l&agrave;m đẹp. Sản phẩm d&ugrave;ng tr&ecirc;n da mặt gi&uacute;p kiểm so&aacute;t b&atilde; nhờn v&agrave; hấp thụ dầu thừa tr&ecirc;n da đồng thời trang điểm trong m&ugrave;a h&egrave;.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/5/15/1-1588177869032345.jpg" style="height:640px; width:640px" /></p>

<p>Ngo&agrave;i ra sản phẩm c&ograve;n được sử dụng tr&ecirc;n t&oacute;c nhờn để tạo hiệu ứng dầu gội kh&ocirc;, phủ l&ocirc;ng mi tạo lớp nền mascara, lớp l&oacute;t nền trong trang điểm cho đ&ocirc;i m&ocirc;i.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/5/15/chanh032413.jpg" style="height:640px; width:640px" /></p>

<p>Mỗi phi&ecirc;n bản No-sebum kết hợp với Mentos l&agrave; một m&ugrave;i hương tr&aacute;i c&acirc;y dịu nhẹ, mời gọi sự tươi m&aacute;t v&agrave; sảng khoải giống như c&aacute;ch bạn tận hưởng hương vị của mỗi vi&ecirc;n kẹo Mentos đầy sắc m&agrave;u.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/5/15/3-1588177875032443.jpg" style="height:640px; width:640px" /></p>

<p>Nếu diện mạo b&ecirc;n ngo&agrave;i thu h&uacute;t &aacute;nh nh&igrave;n l&agrave; h&igrave;nh ảnh đặc trưng của Mentos th&igrave; mở hộp ra l&agrave; th&agrave;nh phần bạc h&agrave; v&agrave; kho&aacute;ng chất tự nhi&ecirc;n của phấn phủ kiềm dầu No-sebum Mineral Powder.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/5/15/bac-ha032508.jpg" style="height:640px; width:640px" /></p>

<p>Phấn phủ kiềm dầu được &quot;diện &aacute;o&quot; Mentos c&oacute; 6 lựa chọn, bao gồm bạc h&agrave;, đ&agrave;o, chanh, nho, anh đ&agrave;o v&agrave; dưa, tất cả đều giống như bao b&igrave; của h&atilde;ng kẹo phổ biến to&agrave;n cầu.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/5/15/5-1588177883032528.jpg" style="height:640px; width:640px" /></p>

<p>Lần hợp t&aacute;c của 2 thương hiệu c&ugrave;ng bao gồm thiết kế của 3 b&ocirc;ng phấn trang điểm Color Powder Puff m&agrave;u xanh bạc h&agrave; - hồng v&agrave; t&iacute;m.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2020/5/15/6-1588177886032546.jpg" style="height:640px; width:640px" /></p>
', N'/Content/Data/files/3051d5491da9a6b7ce5ac52be42d5e35-15052020032604.jpg', CAST(2999000 AS Decimal(18, 0)), NULL, 0, 20, N'f4e587a0-d114-4f30-946c-04c30e01b730', N'Phấn phủ Innisfree Mentos No Sebum Mineral Powder với thành phần bạc hà và khoáng chất thiên nhiên từ đảo Jeju, No Sebum Mineral Powder kiểm soát bã nhờn và dầu thừa hiệu quả, giúp da bạn STAY FRESH suốt cả ngày dài.', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T11:32:34.9280815+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'c4ecf378-3f7a-42da-af1c-e16ba17e5b6b', N'Son Dưỡng Môi Laneige Lip', CAST(200000 AS Decimal(18, 0)), N'nike-air-force-1-mid', N'<p>Tiếp nối sự th&agrave;nh c&ocirc;ng của d&ograve;ng sản phẩm mặt nạ m&ocirc;i huyền thoại, h&atilde;ng&nbsp;<a href="https://beautygarden.vn/">mỹ phẩm</a>&nbsp;nổi tiếng Laneige cho ra mắt phi&ecirc;n bản son dưỡng m&ocirc;i dạng tu&yacute;p.</p>

<p>&nbsp;Được chiết xuất từ c&aacute;c th&agrave;nh phần thi&ecirc;n nhi&ecirc;n gi&agrave;u dưỡng chất, son dưỡng m&ocirc;i&nbsp;<strong>Laneige Lip Glowy Balm</strong>&nbsp;c&oacute; t&aacute;c dụng gi&uacute;p bảo vệ, nu&ocirc;i dưỡng đ&ocirc;i m&ocirc;i căng mọng, &quot;đ&aacute;nh tan&quot; mọi t&aacute;c hại d&agrave;nh cho m&ocirc;i như t&igrave;nh trạng kh&ocirc; m&ocirc;i, th&acirc;m m&ocirc;i... v&agrave; mang đến cho bạn một l&agrave;n m&ocirc;i mịn m&agrave;ng, hồng h&agrave;o tự nhi&ecirc;n.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2019/2/25/a5031549.jpg" style="height:640px; width:640px" /></p>

<h2>C&Ocirc;NG DỤNG SON DƯỠNG M&Ocirc;I LANEIGE LIP GLOWY BALM 10GR</h2>

<p>Xuất xứ: H&agrave;n Quốc<br />
Trọng lượng: 10gr<br />
<br />
&ndash; Gi&uacute;p dưỡng ẩm cho đ&ocirc;i m&ocirc;i tr&ocirc;ng lu&ocirc;n căng mượt v&agrave; đ&agrave;n hồi.</p>

<p>&ndash; Chiết xuất từ hạt quả đ&agrave;o, mơ v&agrave; mận c&oacute; t&aacute;c dụng cung cấp nước tức&nbsp;</p>

<p>&ndash; Chiết xuất quả mọng gi&agrave;u Vitamin C v&agrave; chất chống oxi h&oacute;a, gi&uacute;p l&agrave;m s&aacute;ng m&agrave;u m&ocirc;i, hương thơm ngọt ng&agrave;o, tươi xinh.</p>

<p>Chất son dạng gel, hơi lỏng sau khi sử dụng bạn sẽ cảm nhận ngay lớp son dưỡng như &quot;tan&quot; tr&ecirc;n đ&ocirc;i m&ocirc;i của bạn m&agrave; kh&ocirc;ng hề g&acirc;y cảm gi&aacute;c bết d&iacute;nh hay nặng m&ocirc;i.</p>

<p><a href="https://beautygarden.vn/danh-muc/son-duong.html">Son dưỡng m&ocirc;i</a>&nbsp;Lanaige Lip Glowy Balm&nbsp;được chiết xuất từ 8 loại quả họ nh&agrave; berries gi&agrave;u vitamin c&oacute; t&aacute;c dụng dưỡng ẩm cấp nước cho m&ocirc;i, gi&uacute;p l&agrave;n m&ocirc;i hồng h&agrave;o, căng mọng, nếp nhăn tr&ecirc;n m&ocirc;i phẳng đi đ&aacute;ng kể.</p>

<p>C&ocirc;ng nghệ kết hợp giữa c&aacute;c tr&aacute;i mọng Berry Mix Complex&trade; bao gồm tr&aacute;i m&acirc;m x&ocirc;i, d&acirc;u t&acirc;y, nam việt quất, việt quất, kỷ tử v&agrave; c&aacute;c loại tr&aacute;i mọng kh&aacute;c gi&agrave;u vitamin C gi&uacute;p dưỡng m&ocirc;i hiệu quả, gi&uacute;p l&agrave;m s&aacute;ng m&agrave;u m&ocirc;i, hương thơm ngọt ng&agrave;o, tươi xinh.</p>

<p>Chiết xuất từ hạt quả đ&agrave;o, mơ v&agrave; mận c&oacute; t&aacute;c dụng cung cấp nước tức th&igrave; v&agrave; duy tr&igrave; độ ẩm l&acirc;u bền cho bờ m&ocirc;i mượt m&agrave;, mềm mại. Th&agrave;nh phần Bio-peptide gi&uacute;p tăng cường t&aacute;i tạo collagen, ngăn ngừa c&aacute;c dấu hiệu l&atilde;o h&oacute;a, duy tr&igrave; l&agrave;n m&ocirc;i tươi trẻ, đầy sức sống.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2019/2/25/a3031651.jpg" style="height:640px; width:640px" /></p>

<h2>HƯỚNG DẪN SỬ DỤNG SON DƯỠNG M&Ocirc;I LANEIGE LIP GLOWY BALM 10GR</h2>

<p>- Thoa trực tiếp l&ecirc;n m&ocirc;i</p>

<p>- Tr&aacute;nh tiếp x&uacute;c trực tiếp với mắt<br />
<a href="https://beautygarden.vn/Upload/tinymce/2019/2/25/son-duong-moi-laneige-lip-glowy-balm-10gr-2-hinh-anh-1.jpg" target="_blank" title="Son Dưỡng Môi Laneige Lip Glowy Balm 10gr hình ảnh 1"><img alt="son duong moi laneige lip glowy balm 10gr hinh anh 1" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2019/2/25/son-duong-moi-laneige-lip-glowy-balm-10gr-2-hinh-anh-1.jpg" style="height:640px; width:640px" /></a></p>
', N'/Content/Data/files/a2-25022019031530.jpg', CAST(1190000 AS Decimal(18, 0)), NULL, 0, 13, N'1e1200ae-1d12-4306-92ac-b05ac0bcf8ec', N'- Phiên bản son dưỡng dạng tuýp cực mới của #Laneige
 

- Giúp bạn sỡ hữu đôi môi mềm mọng và màu son tươi mới

- Giúp dưỡng ẩm cho đôi môi trông luôn căng mượt và đàn hồi.', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T17:17:02.2591517+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'73586220-5579-426b-b831-ed1f166ae0f1', N'Xịt Khoáng Aloe Fresh Soothing Mist', CAST(200000 AS Decimal(18, 0)), N'yzy-350-hag-f1', N'<p>Sản phẩm<a href="http://beautygarden.vn/xit-khoang-aloe-fresh-soothing-mist.html"><u>&nbsp;xịt kho&aacute;ng dưỡng da L&ocirc; hội Aloe Fresh Soothing Mist</u></a>&nbsp;chiết xuất 90% từ l&aacute; l&ocirc; hội được d&ugrave;ng cho tất cả c&aacute;c loại da, kể cả những l&agrave;n da nhạy cảm bởi t&iacute;nh trung h&ograve;a của c&aacute;c th&agrave;nh phần c&oacute; trong l&aacute; l&ocirc; hội. Giữ ẩm nhẹ nh&agrave;ng (soothing &amp; moisturizing). Cung cấp c&aacute;c kho&aacute;ng chất cho da kh&ocirc;ng những gi&uacute;p da khỏe hơn, căng mịn hơn m&agrave; c&ograve;n x&oacute;a tan c&aacute;c dấu hiệu mệt mỏi tr&ecirc;n gương mặt bạn, gi&uacute;p giữ lớp trang diểm l&acirc;u tr&ocirc;i.</p>

<p><strong>Xịt kho&aacute;ng dưỡng da L&ocirc; hội Aloe Fresh Soothing Mist<br />
Dung t&iacute;ch: 130ml<br />
Xuất xứ: The Face Shop - H&agrave;n Quốc</strong></p>

<p><img alt="Xịt khoáng dưỡng da Lô hội Aloe Fresh Soothing Mist" src="https://adminbeauty.hvnet.vn/Files/Uploads/Xit-khoang-Aloe-Fresh-Soothing-Mist.png" style="height:640px; width:640px" title="Xịt khoáng dưỡng da Lô hội Aloe Fresh Soothing Mist" /></p>

<h4>Xịt kho&aacute;ng dưỡng da L&ocirc; hội Aloe Fresh Soothing Mist</h4>

<h2>C&Ocirc;NG DỤNG</h2>

<p>- &nbsp;Xịt kho&aacute;ng l&ocirc; hội The Face Shop chai 130ml , cung cấp nước v&agrave; kho&aacute;ng chất đầy đủ cho da , l&agrave;m m&aacute;t mịn da , chiết xuất từ l&ocirc; hội ph&ugrave; hợp với l&agrave;n da nhạy cảm nhất.</p>

<p>- Sản phẩm xịt kho&aacute;ng chiết xuất 90% từ l&aacute; l&ocirc; hội được d&ugrave;ng cho tất cả c&aacute;c loại da, kể cả những l&agrave;n da nhạy cảm bởi t&iacute;nh trung h&ograve;a của c&aacute;c th&agrave;nh phần c&oacute; trong l&aacute; l&ocirc; hội.</p>

<p>&nbsp;</p>

<p>-&nbsp;<u><a href="http://beautygarden.vn/cham-soc-da.html">Giữ ẩm nhẹ nh&agrave;ng</a></u>&nbsp;(soothing &amp; moisturizing). Cung cấp c&aacute;c kho&aacute;ng chất cho da kh&ocirc;ng những gi&uacute;p da khỏe hơn, căng mịn hơn m&agrave; c&ograve;n x&oacute;a tan c&aacute;c dấu hiệu mệt mỏi tr&ecirc;n gương mặt bạn, gi&uacute;p giữ lớp trang diểm l&acirc;u tr&ocirc;i.</p>

<p>&nbsp;</p>

<p><img alt="Xịt khoáng giúp tăng thêm nước cho da" src="https://adminbeauty.hvnet.vn/Files/Uploads/xit-khoang-thermal-spring-water.jpg" style="height:640px; width:640px" title="Xịt khoáng giúp tăng thêm nước cho da" /></p>

<p>&nbsp;</p>

<p><strong>Xịt kho&aacute;ng gi&uacute;p tăng th&ecirc;m nước cho da</strong></p>

<h2>HƯỚNG DẪN SỬ DỤNG</h2>

<p>&ndash; Đặt chai nước kho&aacute;ng song song mặt, c&aacute;ch mặt khoảng 1 gang tay. Xịt đều một v&ograve;ng khắp gương mặt, vỗ nhẹ khoảng 30 gi&acirc;y.</p>

<p>&nbsp;</p>

<p>&ndash; Xịt kho&aacute;ng bất cứ khi n&agrave;o cảm thấy da hơi kh&ocirc; hoặc c&oacute; thể d&ugrave;ng đều đặn mỗi ng&agrave;y 4 &ndash; 5 lần.</p>

<h2>C&Aacute;CH SỬ DỤNG XỊT KHO&Aacute;NG Đ&Uacute;NG C&Aacute;CH</h2>

<p>3 C&Aacute;CH SỬ DỤNG NƯỚC XỊT KHO&Aacute;NG HIỂU QUẢ</p>

<p>Để thay thế những lần d&ugrave;ng nước vỗ v&agrave;o mặt tạo cảm gi&aacute;c sảng kho&aacute;i mỗi khi trời n&oacute;ng th&igrave; giờ đ&acirc;y ch&uacute;ng ta đ&atilde; c&oacute; nước xịt kho&aacute;ng. Tuy nhi&ecirc;n, d&ograve;ng sản phẩm nước kho&aacute;ng dưỡng da c&ograve;n l&agrave;m được nhiều hơn thế, h&atilde;y xem 3 c&aacute;ch sử dụng ở trong b&agrave;i n&agrave;y v&agrave; bạn c&oacute; thể t&igrave;m th&ecirc;m c&aacute;ch mới cho bản th&acirc;n m&igrave;nh nh&eacute;.</p>

<p>1.Tạo gương mặt tự nhi&ecirc;n.</p>

<p>C&oacute; một thực tế hiện nay l&agrave; c&aacute;c c&ocirc; g&aacute;i lu&ocirc;n trang điểm nhưng kh&ocirc;ng muốn lộ lớp trang điểm cho người kh&aacute;c biết. Thế l&agrave; sau khi đ&aacute;nh phấn họ xịt một &iacute;t nước xịt kho&aacute;ng để c&oacute; được lớp nền tự nhi&ecirc;n, rạng rỡ, giống như da khỏe vốn c&oacute; chứ kh&ocirc;ng phải da phấn.</p>

<p>Khi d&ugrave;ng xịt kho&aacute;ng kiểu n&agrave;y n&ecirc;n để chai rất xa, chọn những chai xịt sương mịn. Một số người d&ugrave;ng xịt kho&aacute;ng giống như nước hoa, họ xịt v&agrave;o kh&ocirc;ng trung rồi bước qua chứ kh&ocirc;ng xịt thẳng v&agrave;o mặt. Bất cứ l&uacute;c n&agrave;o, nếu bạn thấy lớp trang điểm xuống m&agrave;u, k&eacute;m tươi c&oacute; thể xịt kho&aacute;ng l&ecirc;n tr&ecirc;n để lấy lại vẻ mềm mại, dịu d&agrave;ng ngay tức khắc.</p>

<p>2. Dưỡng ẩm.</p>

<p>Sau những chuyến bay d&agrave;i hay l&agrave;m việc cả ng&agrave;y trong m&ocirc;i trường điều h&ograve;a l&agrave; những thời điểm xịt kho&aacute;ng trở n&ecirc;n hữu hiệu hơn bao giờ hết. C&oacute; rất nhiều c&ocirc; g&aacute;i với b&igrave;nh xịt kho&aacute;ng mini trong h&agrave;nh l&yacute; x&aacute;ch tay, thỉnh thoảng lại lấy ra xịt khắp mặt để khi xuống m&aacute;y bay da mặt vẫn tươi tỉnh mịn m&agrave;ng.</p>

<p>L&agrave;m việc trong văn ph&ograve;ng điều h&ograve;a hay m&aacute;y lạnh, giải ph&aacute;p tốt nhất l&agrave; bạn n&ecirc;n để sẵn một chai xịt kho&aacute;ng tr&ecirc;n b&agrave;n để cung cấp độ ẩm cho da nhiều lần trong ng&agrave;y. Nếu bạn trang điểm, h&atilde;y nhớ d&ugrave;ng b&igrave;nh xịt kho&aacute;ng c&oacute; l&agrave;n sương rất mịn, để chai c&aacute;ch khu&ocirc;n mặt khoảng 1 gang khi xịt để tr&aacute;nh trường hợp bị nh&ograve;e, hỏng.</p>

<p>3. Trang điểm như H&agrave;n Quốc.</p>

<p>B&iacute; quyết để c&oacute; l&agrave;n da như H&agrave;n Quốc đ&oacute; l&agrave; sau khi bạn t&aacute;n kem nền h&atilde;y d&ugrave;ng xịt kho&aacute;ng xịt l&ecirc;n khắp mặt rồi d&ugrave;ng b&ocirc;ng phấn chấm nước đi rồi mới phủ phấn l&ecirc;n. L&agrave;n da sẽ &oacute;ng &aacute;nh như c&oacute; một lớp nước ở dưới da.</p>

<p>Thậm ch&iacute; một số người sau mỗi lớp kem dưỡng, primer, kem nền đều xịt một lớp xịt kho&aacute;ng để c&oacute; được &laquo; baby skin &raquo;, &laquo; dewy skin &raquo;. Một loại face mist được nhiều chuy&ecirc;n gia trang điểm sử dụng sau hậu trường l&agrave; MAC Fix+.</p>
', N'/Content/Data/files/xit-khoang-the-face-shop-Aloe-Fresh-Soothing-Mist-beauty-garden-1.jpg', CAST(199000 AS Decimal(18, 0)), CAST(99000 AS Decimal(18, 0)), 0, 16, N'f4e587a0-d114-4f30-946c-04c30e01b730', N'Xịt khoáng Aloe Fresh Soothing Mist giúp giữ ẩm nhẹ nhàng (soothing & moisturizing). Cung cấp các khoáng chất cho da không những giúp da khỏe hơn, căng mịn hơn mà còn xóa tan các dấu hiệu mệt mỏi trên gương mặt bạn, giúp giữ lớp trang diểm lâu trôi.', NULL, N'yzy-350-hag-f1', NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T11:41:31.3063896+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'7bcd2a38-03a1-4cee-be22-ef7a628acf27', N'Xịt Thơm Toàn Thân Bath&Body', CAST(200000 AS Decimal(18, 0)), N'balenciaga-triple-s', N'<p><strong>Dung t&iacute;ch: 236ml</strong></p>

<p>Xịt Thơm To&agrave;n Th&acirc;n Bath&amp;Body Works Fine Fragrance Mist với c&aacute;c m&ugrave;i hương đa dạng v&agrave; nhiều collection theo m&ugrave;a cho n&agrave;ng thỏa th&iacute;ch lựa chọn m&ugrave;i hương ph&ugrave; hợp.</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/1/26/bath-bodywork091544.jpg" style="height:640px; width:640px" /></p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/1/26/saltwater091633.jpg" style="height:640px; width:640px" /></p>

<p><strong>Saltwater Breeze</strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/1/26/fresh-sparkling091727.jpg" style="height:640px; width:640px" /></strong></p>

<p><strong>Fresh Sparkling Snow</strong></p>

<p>&nbsp;</p>

<p><strong><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/1/26/japanese091814.jpg" style="height:640px; width:640px" /></strong></p>

<p><strong>Japanese Cherry Blossom</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/1/26/champagne-toast091936.jpg" style="height:640px; width:640px" /></p>

<p><strong>Champagne Toast&nbsp;</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/1/26/perfect-peony091959.jpg" style="height:640px; width:640px" /></p>

<p><strong>Perfect Peony</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/1/26/cactus-blossom092042.jpg" style="height:640px; width:640px" /></p>

<p><strong>Cactus Blossom</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/1/26/forever-red092115.jpg" style="height:640px; width:640px" /></p>

<p><strong>Forever Red</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/1/26/almond-blossom092157.jpg" style="height:640px; width:640px" /></p>

<p><strong>Almond Blossom</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/1/26/youre-the-one092233.jpg" style="height:640px; width:640px" /></p>

<p><strong>You&#39;re The One</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/1/26/rose-water-ivy092316.jpg" style="height:640px; width:640px" /></p>

<p><strong>Rose Water &amp; Ivy</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/1/26/dahlia092351.jpg" style="height:640px; width:640px" /></p>

<p><strong>Dahlia</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/1/26/winterberrywonder092432.jpg" style="height:640px; width:640px" /></p>

<p><strong>WinterBerry Wonder</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/1/26/rose092459.jpg" style="height:640px; width:640px" /></p>

<p><strong>Rose</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/1/26/into-the-night092536.jpg" style="height:640px; width:640px" /></p>

<p><strong>Into The Night</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/1/26/twisted-pepper-mint092627.jpg" style="height:640px; width:640px" /></p>

<p><strong>Twisted Pepper Mint</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/1/26/winter-candy-apple092714.jpg" style="height:640px; width:640px" /></p>

<p><strong>Winter Candy Apple</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/1/26/vanilla-bean-noel092822.jpg" style="height:640px; width:640px" /></p>

<p><strong>Vanilla Bean Noel&nbsp;</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/tinymce/2021/1/26/snowy-peach-berry092934.jpg" style="height:640px; width:640px" /></p>

<p><strong>Snowy Peach Berry</strong></p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/images/White%20Pumpkin%20Chai.jpg" style="height:640px; width:640px" /></p>

<p><strong>White Pumpkin &amp; Chai</strong></p>

<p>&nbsp;</p>

<p><strong><img alt="" src="https://adminbeauty.hvnet.vn/Upload/images/Golden%20Sunflower.jpg" style="height:640px; width:640px" /></strong></p>

<p><strong>Golden Sunflower</strong></p>

<p><strong><img alt="" src="https://adminbeauty.hvnet.vn/Upload/images/Sugared%20Cherry%20Crisp.jpg" style="height:640px; width:640px" /></strong></p>

<p><strong>Sugared Cherry Crisp</strong></p>

<p><strong><img alt="" src="https://adminbeauty.hvnet.vn/Upload/images/Little%20Black%20Party%20Dress.jpg" style="height:640px; width:640px" /></strong></p>

<p><strong>Little Black Party Dress</strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong><img alt="" src="https://adminbeauty.hvnet.vn/Upload/images/Black%20Cherry%20Merlot.jpg" style="height:640px; width:640px" /></strong></p>

<p>&nbsp;</p>

<p><strong>Black Cherry Merlot</strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong><img alt="" src="https://adminbeauty.hvnet.vn/Upload/images/Beautiful%20Day.jpg" style="height:640px; width:640px" /></strong></p>

<p>&nbsp;</p>

<p><strong>Beautiful Day</strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/images/A%20Thousand%20Christmas%20Wishes.jpg" style="height:640px; width:640px" /></p>

<p>&nbsp;</p>

<p><strong>A Thousand Christmas Wishes</strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong><img alt="" src="https://adminbeauty.hvnet.vn/Upload/images/Lemon%20Drop%20Martini.jpg" style="height:640px; width:640px" /></strong></p>

<p>&nbsp;</p>

<p><strong>Lemon Drop Martini</strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/images/Champagne%20Apple%20Honey.jpg" style="height:640px; width:640px" /></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Champagne Apple &amp; Honey</strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong><img alt="" src="https://adminbeauty.hvnet.vn/Upload/images/Agave%20Papaya%20Sunset.jpg" style="height:640px; width:640px" /></strong></p>

<p>&nbsp;</p>

<p><strong>Agave Papaya Sunset</strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong><img alt="" src="https://adminbeauty.hvnet.vn/Upload/images/Confetti%20Daydream.jpg" style="height:640px; width:640px" /></strong></p>

<p>&nbsp;</p>

<p><strong>Confetti Daydream</strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><img alt="" src="https://adminbeauty.hvnet.vn/Upload/images/magic%20in%20the%20air.jpg" style="height:640px; width:640px" /></p>

<p><strong>Magic in the air</strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong><img alt="" src="https://adminbeauty.hvnet.vn/Upload/images/Sensual%20Amber.jpg" style="height:640px; width:640px" /></strong></p>

<p><strong>Sensual Amber</strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong><img alt="" src="https://adminbeauty.hvnet.vn/Upload/images/Black%20Cherry%20Merlot%20-%202.jpg" style="height:640px; width:640px" /></strong></p>

<p><strong>Black Cherry Merlot</strong></p>

<p><strong>&nbsp;</strong></p>

<p>&nbsp;</p>

<p><strong><img alt="" src="https://adminbeauty.hvnet.vn/Upload/images/Vanilla%20Mocha%20Cafe.jpg" style="height:640px; width:640px" /></strong></p>

<p><strong>Vanilla Mocha Cafe</strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong><img alt="" src="https://adminbeauty.hvnet.vn/Upload/images/Lavender%20In%20Bloom.jpg" style="height:640px; width:640px" /></strong></p>

<p><strong>Lavender In Bloom</strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong><img alt="" src="https://adminbeauty.hvnet.vn/Upload/images/Frosted%20Cranberry.jpg" style="height:640px; width:640px" /></strong></p>

<p><strong>Frosted Cranberry</strong></p>
', N'/Content/Data/files/bath-bodywork091544.jpg', CAST(950000 AS Decimal(18, 0)), CAST(850000 AS Decimal(18, 0)), 0, 9, N'4af55b5a-7ef5-4026-ae30-675149352730', N'- Hương thơm đa dạng, trẻ trung

- Thiết kế chai bắt mắt nhiều màu sắc 

- Mùi hương tùy cơ địa mà bám từ 2-4h

- Phù hợp cho các bạn đi học và đi làm mỗi ngày', NULL, N'balenciaga-triple-s', NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T11:50:32.0091994+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'd2c573a6-7c30-49b7-8173-f1d3c18fe5bf', N'Set Dầu Gội Và Dầu Xả Tsubaki', CAST(200000 AS Decimal(18, 0)), N'puma-suede-leather', N'<p>Tsubaki Oil Extra Smooth Shampoo &amp; Conditioner&nbsp;l&agrave; một trong những bộ sản phẩm gi&uacute;p nu&ocirc;i dưỡng t&oacute;c hiệu quả từ s&acirc;u b&ecirc;n trong, được nhiều chị em y&ecirc;u th&iacute;ch v&agrave; lựa chọn. V&agrave; để đ&aacute;p ứng nhu cầu của c&aacute;c chị em,&nbsp;<a href="https://beautygarden.vn/">Beauty Garden</a>&nbsp;đ&atilde; nhập về sản phẩm, cho c&aacute;c chị em thỏa sức lựa chọn v&agrave; nu&ocirc;i dưỡng m&aacute;i t&oacute;c của m&igrave;nh.</p>

<p>Sản phẩm với tinh chất từ thi&ecirc;n nhi&ecirc;n hạn chế sự t&aacute;c động đến t&oacute;c, gi&uacute;p t&oacute;c phục hồi nhanh sau mỗi lần sử dụng. D&ugrave; cho t&oacute;c bạn c&oacute; yếu dễ g&atilde;y rụng, đứt g&atilde;y, chẻ ngọn hay kh&ocirc; xơ hay đi chăng nữa, bạn vẫn c&oacute; thể y&ecirc;n t&acirc;m sử dụng&nbsp;<strong>bộ dầu gội c&ugrave;ng dầu xả tốt Tsubaki Oil Extra Smooth Shampoo &amp; Conditioner</strong>.</p>

<p>Bộ dầu gội v&agrave; dầu xả Shiseido Tsubaki Oil Extra Smooth Shampoo &amp; Conditioner được nghi&ecirc;n cứu v&agrave; sản xuất từ c&aacute;c th&agrave;nh phần tự nhi&ecirc;n gi&uacute;p cung cấp độ ẩm v&agrave; nu&ocirc;i dưỡng từ gốc tới ngọn cho t&oacute;c th&ecirc;m chắc khỏe. Ngo&agrave;i ra, sản phẩm c&ograve;n hạn chế c&aacute;c t&aacute;c nh&acirc;n g&acirc;y hại cho t&oacute;c, phục hồi hư tổn để t&oacute;c lu&ocirc;n su&ocirc;n mượt, &oacute;ng ả.</p>

<p><a href="https://beautygarden.vn/Upload/images/hinh-1-Tsubaki-Oil-Extra-Smooth-Shampoo-Conditioner.jpg" target="_blank" title="Hình 1 - Set dầu gội và dầu xả Tsubaki Oil Extra Smooth Shampoo &amp; Conditioner"><img alt="Thường xuyên chăm sóc tóc để mái tóc của bạn luôn đẹp tự nhiên" src="https://adminbeauty.hvnet.vn/Upload/images/hinh-1-Tsubaki-Oil-Extra-Smooth-Shampoo-Conditioner.jpg" style="height:640px; width:640px" /></a></p>

<p><em>Thường xuy&ecirc;n chăm s&oacute;c t&oacute;c để m&aacute;i t&oacute;c của bạn lu&ocirc;n đẹp tự nhi&ecirc;n</em></p>

<h2>TH&Agrave;NH PHẦN V&Agrave; C&Ocirc;NG DỤNG NỔI BẬT CỦA SET DẦU GỘI V&Agrave; DẦU XẢ TSUBAKI OIL EXTRA SMOOTH SHAMPOO &amp; CONDITIONER</h2>

<p>Th&agrave;nh phần c&oacute; trong bộ dầu gội v&agrave; dầu xả n&agrave;y l&agrave; nguy&ecirc;n liệu c&oacute; nguồn gốc từ tự nhi&ecirc;n đ&atilde; được phụ nữ Nhật Bản tận dụng l&agrave;m đẹp trong suốt h&agrave;ng thế kỷ.</p>

<p>&ndash; Tinh dầu Camellia được chiết xuất hoa tr&agrave; đỏ rất gi&agrave;u axit oleic v&agrave; axit linoleic, l&agrave; những th&agrave;nh phần được hấp thụ dễ d&agrave;ng bởi da v&agrave; t&oacute;c. Th&agrave;nh phần n&agrave;y đ&oacute;ng vai tr&ograve; quan trọng trong việc giữ ẩm, cung cấp c&aacute;c chất dinh dưỡng gi&uacute;p t&oacute;c b&oacute;ng mượt, chắc khỏe.</p>

<p>&ndash; Đồng thời, tinh dầu Camellia c&ograve;n gi&uacute;p chống oxy h&oacute;a, bảo vệ t&oacute;c tr&aacute;nh khỏi c&aacute;c t&aacute;c hại của &aacute;nh nắng mặt trời, ngăn chặn t&oacute;c bị xơ, rối.</p>

<p>&ndash; Mật ong cũng được con người sử dụng để dưỡng t&oacute;c từ rất l&acirc;u, gi&uacute;p tăng cường độ ẩm v&agrave; c&aacute;c vitamin gi&uacute;p nu&ocirc;i dưỡng t&oacute;c từ gốc tới ngọn v&agrave; da đầu khỏe mạnh.</p>

<p><a href="https://beautygarden.vn/Upload/images/hinh-2-Tsubaki-Oil-Extra-Smooth-Shampoo-Conditioner.jpg" target="_blank"><img alt="Sử dụng các sản phẩm có thành phần từ thiên nhiên sẽ an toàn cho sức khỏe của bạn" src="https://adminbeauty.hvnet.vn/Upload/images/hinh-2-Tsubaki-Oil-Extra-Smooth-Shampoo-Conditioner.jpg" style="height:640px; width:640px" /></a></p>

<p><em>Sử dụng c&aacute;c sản phẩm c&oacute; th&agrave;nh phần từ thi&ecirc;n nhi&ecirc;n sẽ an to&agrave;n cho sức khỏe của bạn</em></p>

<p>Hiện Beauty Garden về 2 m&agrave;u với 2 m&ugrave;i hương kh&aacute;c cho n&agrave;ng thỏa sức lựa chọn m&ugrave;i hương m&agrave; m&igrave;nh y&ecirc;u th&iacute;ch để&nbsp;<a href="https://beautygarden.vn/danh-muc/cham-soc-toc.html">chăm s&oacute;c t&oacute;c</a>&nbsp;nh&eacute;!</p>

<p>Bộ Shiseido Tsubaki Oil Extra Intense Damage Care(m&agrave;u v&agrave;ng): d&agrave;nh cho m&aacute;i t&oacute;c hư tổn nặng. Sản phẩm gi&uacute;p tăng cường dưỡng chất gi&uacute;p phục hồi t&oacute;c xơ v&agrave; chẻ ngọn, đồng thời bảo vệ t&oacute;c khỏi c&aacute;c t&aacute;c nh&acirc;n g&acirc;y hại, trả lại cho bạn m&aacute;i t&oacute;c mượt m&agrave;, &oacute;ng ả. Đặc biệt gi&uacute;p t&oacute;c nhuộm sẽ bền m&agrave;u v&agrave; giữ nếp l&acirc;u.</p>

<p>Bộ Shiseido Tsubaki Oil Extra Moisture Balance Care (m&agrave;u hồng): c&oacute; t&aacute;c dụng điều tiết lượng dầu ở da đầu, gi&uacute;p t&oacute;c lu&ocirc;n mềm mượt v&agrave; kh&ocirc;ng bị bết d&iacute;nh. Đồng thời,&nbsp;<em>bộ dầu gội v&agrave; dầu xả gi&uacute;p bổ sung v&agrave; tăng cường độ ẩm cho t&oacute;c</em>&nbsp;nhờ c&aacute;c dưỡng chất nu&ocirc;i dưỡng t&oacute;c su&ocirc;n mềm, &oacute;ng mượt như lụa.</p>

<p><a href="https://beautygarden.vn/Upload/images/hinh-3-Tsubaki-Oil-Extra-Smooth-Shampoo-Conditioner.jpg" target="_blank" title="Hình 2 - Set dầu gội và dầu xả Tsubaki Oil Extra Smooth Shampoo &amp; Conditioner"><img alt="Có nhiều mùi giúp bạn thoải mái lựa chọn mùi hương cho mái tóc của bạn" src="https://adminbeauty.hvnet.vn/Upload/images/hinh-3-Tsubaki-Oil-Extra-Smooth-Shampoo-Conditioner.jpg" style="height:640px; width:640px" /></a></p>

<p><em>C&oacute; nhiều m&ugrave;i gi&uacute;p bạn thoải m&aacute;i lựa chọn m&ugrave;i hương cho m&aacute;i t&oacute;c của bạn</em></p>

<h2>HƯỚNG DẪN SỬ DỤNG SET DẦU GỘI V&Agrave; DẦU XẢ TSUBAKI OIL EXTRA SMOOTH SHAMPOO &amp; CONDITIONER</h2>

<p>C&aacute;c n&agrave;ng ch&uacute; &yacute; c&aacute;c bước để khi sử dụng d&ograve;ng sản phẩm&nbsp;<u>dầu gội v&agrave; dầu xả với tinh chất thi&ecirc;n nhi&ecirc;n&nbsp;</u>để được hiệu quả nhiều hơn&hellip;</p>

<p>- Xả t&oacute;c với nước sạch, lấy 1 lượng vừa đủ dầu gội thoa đều l&ecirc;n t&oacute;c.</p>

<p>- Tạo bọt v&agrave; massage nhẹ nh&agrave;ng khắp da đầu v&agrave; t&oacute;c cho đến khi t&oacute;c sạch.</p>

<p>- Xả lại t&oacute;c với nước sạch cho hết bọt.</p>

<p>- Lấy 1 lượng vừa đủ&nbsp;<a href="https://beautygarden.vn/danh-muc/dau-xa.html">dầu xả</a>&nbsp;thoa đều l&ecirc;n t&oacute;c, massage nhẹ nh&agrave;ng để cho dưỡng chất c&oacute; thời gian ngấm v&agrave;o t&oacute;c. Sau đ&oacute; xả t&oacute;c lại với nước.</p>

<p><a href="https://beautygarden.vn/Upload/images/hinh-4-Tsubaki-Oil-Extra-Smooth-Shampoo-Conditioner.jpg" target="_blank" title="Hình 3 - Set dầu gội và dầu xả Tsubaki Oil Extra Smooth Shampoo &amp; Conditioner"><img alt="Một mái tóc đẹp chính là cách giúp bạn tỏa sáng và tự tin" src="https://adminbeauty.hvnet.vn/Upload/images/hinh-4-Tsubaki-Oil-Extra-Smooth-Shampoo-Conditioner.jpg" style="height:640px; width:640px" /></a></p>

<p><em>Một m&aacute;i t&oacute;c đẹp ch&iacute;nh l&agrave; c&aacute;ch gi&uacute;p bạn tỏa s&aacute;ng v&agrave; tự tin</em></p>
', N'/Content/Data/files/dau-goi-dau-xa.jpg', CAST(1990000 AS Decimal(18, 0)), CAST(1290000 AS Decimal(18, 0)), 0, 20, N'9f0de121-5036-4a23-a37e-176e1fab5ffc', N'- Dầu gội kết hợp với dầu xả tạo mái tóc suôn mượt

- Giúp tóc phục hồi hư tổn vì các tác nhân vật lý

- Thành phần chiết xuất từ thiên nhiên tốt cho da đầu

- Nuôi dưỡng tóc chắc khỏe từ ngọn cho tới chân tóc', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-05-19T11:56:13.9089031+07:00' AS DateTimeOffset), N'admin', 0)
GO
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'f4e587a0-d114-4f30-946c-04c30e01b730', N'Trang điểm', N'ao', NULL, 1, N'adidas', NULL, NULL, NULL, N'admin', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'35f18486-b2b4-472e-9c90-071466e5bb2d', N'Chăm sóc da', N'quan', NULL, 2, N'convers', NULL, NULL, NULL, N'admin', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'9f0de121-5036-4a23-a37e-176e1fab5ffc', N'Chăm sóc tóc', N'phukien', NULL, 3, N'puma', NULL, NULL, NULL, N'admin', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'de613250-d551-435b-9613-2f67164a78f6', N'Phụ kiện', N'combo', NULL, 4, N'jordan', NULL, NULL, NULL, N'admin', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'4af55b5a-7ef5-4026-ae30-675149352730', N'Nước hoa', N'kidman', NULL, 5, N'balenciaga', NULL, NULL, NULL, N'admin', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'185e17eb-86c3-4323-8faf-6fcbb2e7bd08', N'Chăm sóc Body', N'giaydep', NULL, 6, N'reebok', NULL, NULL, NULL, N'admin', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'49df2e48-4b19-477c-a87b-aec64de21e48', N'Chăm sóc mặt', N'dongphuc', NULL, 7, N'new balance', NULL, NULL, NULL, N'admin', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'1e1200ae-1d12-4306-92ac-b05ac0bcf8ec', N'Chăm sóc môi', N'nonmu', NULL, 8, N'nike', NULL, NULL, NULL, N'admin', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'dc7469a5-a82d-4e56-863b-e2f6f1fcf15d', N'Chăm sóc mắt', N'bosuit', NULL, 9, N'vans', NULL, NULL, NULL, N'admin', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', 0)
GO
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'ADD_USER', N'Thêm User')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'CREATE_CREDENTIAL', N'Thêm Credential')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'CREATE_ROLE', N'Thêm Role')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'CREATE_USER_GROUP', N'Thêm UserGroup')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'DELETE_CREDENTIAL', N'Xóa Credential')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'DELETE_ROLE', N'Xóa Role')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'DELETE_USER', N'Xóa User')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'DELETE_USER_GROUP', N'Xóa UserGroup')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'EDIT_USER', N'Cập nhật User')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'UPDATE_CREDENTIAL', N'Cập nhật Credential')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'UPDATE_ROLE', N'Cập nhật Role')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'UPDATE_USER_GROUP', N'Cập nhật UserGroup')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'VIEW_CREDENTIAL', N'Xem Credential')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'VIEW_LAYOUT', N'Xem giao diện')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'VIEW_ROLE', N'Xem Role')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'VIEW_USER', N'Xem User')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'VIEW_USER_GROUP', N'Xem UserGroup')
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([Id], [UrlImage], [DisplayOrder], [Link], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (1, N'/Content/Data/files/images%20(3)(1).jpg', 1, NULL, NULL, NULL, N'admin', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', 1)
INSERT [dbo].[Slide] ([Id], [UrlImage], [DisplayOrder], [Link], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (2, N'/Content/Data/files/slide-1.jpg', 2, NULL, NULL, NULL, N'admin', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Slide] ([Id], [UrlImage], [DisplayOrder], [Link], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (3, N'/Content/Data/files/500482542839320_1366x472.jpg', 3, NULL, NULL, NULL, N'admin', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', 0)
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
INSERT [dbo].[User] ([Id], [GroupId], [AvatarUrl], [UserName], [Password], [ConfirmPassword], [FirstName], [LastName], [ResetPasswordCode], [Email], [Address], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'f6dfcece-f0c2-4d10-91a5-32032d70dda2', N'ADMIN', NULL, N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'21232f297a57a5a743894a0e4a801fc3', N'Quản Trị', N'Viên', NULL, N'admin@gmail.com', N'Hà nội', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2022-04-25T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[User] ([Id], [GroupId], [AvatarUrl], [UserName], [Password], [ConfirmPassword], [FirstName], [LastName], [ResetPasswordCode], [Email], [Address], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'a571085e-1808-4cc8-a591-3fd23ab57cc7', N'MOD', NULL, N'nhanvien', N'25f9e794323b453885f5181f1b624d0b', N'25f9e794323b453885f5181f1b624d0b', N'Nhân', N'Viên', NULL, N'nhanvien@gmail.com', N'Hà Nội', CAST(N'2022-04-28T10:29:32.3711223+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[User] ([Id], [GroupId], [AvatarUrl], [UserName], [Password], [ConfirmPassword], [FirstName], [LastName], [ResetPasswordCode], [Email], [Address], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'8f0500df-7b12-4b5a-b31f-a615ec831680', N'MEMBER', NULL, N'kieuoanh', N'25f9e794323b453885f5181f1b624d0b', N'25f9e794323b453885f5181f1b624d0b', N'Kiều', N'Oanh', NULL, N'kieuoanh@gmail.com', N'Hà Nội', CAST(N'2022-04-07T18:46:06.6627025+07:00' AS DateTimeOffset), NULL, NULL, NULL, 0)
INSERT [dbo].[User] ([Id], [GroupId], [AvatarUrl], [UserName], [Password], [ConfirmPassword], [FirstName], [LastName], [ResetPasswordCode], [Email], [Address], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'ebfb15ea-6c37-4024-9f72-db52619af8ed', N'MEMBER', NULL, N'nguyenminhnha', N'25f9e794323b453885f5181f1b624d0b', N'25f9e794323b453885f5181f1b624d0b', N'Nguyễn ', N'Nhã', NULL, N'minhnha@gmail.com', N'Hà Nội', CAST(N'2022-04-28T10:04:43.0000000+07:00' AS DateTimeOffset), NULL, CAST(N'2022-04-28T10:05:47.4759337+07:00' AS DateTimeOffset), N'nguyenminhnha', 0)
GO
INSERT [dbo].[UserGroup] ([Id], [Name]) VALUES (N'ADMIN', N'Quản trị')
INSERT [dbo].[UserGroup] ([Id], [Name]) VALUES (N'MEMBER', N'Thành viên')
INSERT [dbo].[UserGroup] ([Id], [Name]) VALUES (N'MOD', N'Moderitor')
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK__Content__Categor__412EB0B6] FOREIGN KEY([NewsCategoryId])
REFERENCES [dbo].[NewsCategory] ([Id])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK__Content__Categor__412EB0B6]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__Product__5070F446] FOREIGN KEY([ProductCategoryId])
REFERENCES [dbo].[ProductCategory] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__Product__5070F446]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserGroup] FOREIGN KEY([GroupId])
REFERENCES [dbo].[UserGroup] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserGroup]
GO
USE [master]
GO
ALTER DATABASE [banmypham] SET  READ_WRITE 
GO
