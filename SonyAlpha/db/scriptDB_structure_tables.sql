--USE [sony_rebuild_alpha_test]
--GO
/****** Object:  Table [dbo].[sony_user_group]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_user_group]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_user_group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[groupname] [nvarchar](150) NOT NULL,
	[issuper] [bit] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_user_group] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_user]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_user]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](200) NOT NULL,
	[fullname] [nvarchar](200) NULL,
	[status] [bit] NOT NULL,
	[groupId] [int] NOT NULL,
	[registered] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
	[phone] [varchar](20) NULL,
	[email] [varchar](150) NULL,
	[productused] [nvarchar](200) NULL,
 CONSTRAINT [PK_sony_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [sony_user_unique] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sony_setting]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_setting]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_setting](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [varchar](150) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_setting] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sony_province]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_province]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_province](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[province] [nvarchar](200) NOT NULL,
	[provinceOrder] [int] NOT NULL,
 CONSTRAINT [PK_sony_province] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_product_type]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_product_type]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_product_type](
	[id] [int] NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_product_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_product_images]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_product_images]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_product_images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NOT NULL,
	[imageUrls] [nvarchar](max) NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
 CONSTRAINT [PK_sony_product_images] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_product_category]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_product_category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_product_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[parentId] [int] NOT NULL,
	[description] [nvarchar](max) NULL,
	[seoUrl] [nvarchar](500) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
	[albumId] [int] NULL,
	[coverphoto] [varchar](500) NULL,
 CONSTRAINT [PK_sony_product_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sony_product]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[productType] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[imageUrl] [nvarchar](max) NULL,
	[shortDesc] [nvarchar](300) NULL,
	[description] [text] NULL,
	[status] [bit] NOT NULL,
	[fStop] [nvarchar](55) NULL,
	[fMax] [nvarchar](55) NULL,
	[fMin] [nvarchar](55) NULL,
	[lensDetails] [nvarchar](150) NULL,
	[numOfPiece] [int] NULL,
	[minDistance] [nvarchar](150) NULL,
	[maxDistance] [nvarchar](150) NULL,
	[lensDiameter] [nvarchar](150) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
	[price] [varchar](20) NULL,
	[albumId] [int] NULL,
 CONSTRAINT [PK_sony_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sony_photo_vote]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_photo_vote]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_photo_vote](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[photoIds] [varchar](2000) NULL,
 CONSTRAINT [PK_sony_photo_vote] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sony_photo]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_photo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](150) NOT NULL,
	[filename] [varchar](500) NOT NULL,
	[description] [nvarchar](500) NULL,
	[redirectUrl] [nvarchar](500) NULL,
	[status] [bit] NOT NULL,
	[cameraName] [nvarchar](150) NULL,
	[cameraModel] [nvarchar](150) NULL,
	[fStop] [nvarchar](55) NULL,
	[exposureTime] [nvarchar](55) NULL,
	[iso] [nvarchar](55) NULL,
	[exposureBlas] [nvarchar](55) NULL,
	[focalLengh] [nvarchar](55) NULL,
	[maxAperture] [nvarchar](55) NULL,
	[materingMode] [nvarchar](55) NULL,
	[subjectDistance] [nvarchar](55) NULL,
	[flashMode] [nvarchar](55) NULL,
	[flashEnergy] [nvarchar](55) NULL,
	[viewCount] [int] NOT NULL,
	[voteCount] [int] NOT NULL,
	[likeCount] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
	[userupload] [nvarchar](50) NULL,
 CONSTRAINT [PK_sony_photo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sony_permission_group]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_permission_group]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_permission_group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[groupId] [int] NOT NULL,
	[permissionId] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_permission_group] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_permission]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_permission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[allowinsert] [bit] NOT NULL,
	[allowupdate] [bit] NOT NULL,
	[allowdelete] [bit] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_permission] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_page_menu_permission]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_page_menu_permission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_page_menu_permission](
	[id] [int] NOT NULL,
	[permissionGroup] [int] NOT NULL,
	[menuPageId] [int] NOT NULL,
	[isPage] [bit] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_page_menu_permission] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_page_banner]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_page_banner]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_page_banner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pageId] [int] NOT NULL,
	[bannerId] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_page_banner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_page]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_page]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_page](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](300) NULL,
	[longtitle] [nvarchar](500) NOT NULL,
	[pageContent] [nvarchar](max) NULL,
	[isNews] [bit] NOT NULL,
	[seoUrl] [nvarchar](500) NULL,
	[status] [bit] NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
	[creator] [nvarchar](50) NOT NULL,
	[updator] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_sony_page] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_news_category]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news_category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_news_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[seoUrl] [nvarchar](500) NULL,
	[imageUrl] [varchar](500) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sony_news]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_news](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](500) NOT NULL,
	[seoUrl] [nvarchar](500) NULL,
	[detail] [nvarchar](max) NULL,
	[description] [nvarchar](500) NULL,
	[categoryId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[metaTag] [nvarchar](500) NULL,
	[metaTitle] [nvarchar](500) NULL,
	[metaKeyword] [nvarchar](500) NULL,
	[viewCount] [int] NOT NULL,
	[likeCount] [int] NOT NULL,
	[newsImage] [varchar](500) NULL,
	[relatedNewsIds] [varchar](500) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_new] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sony_menu]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_menu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[isparent] [bit] NOT NULL,
	[parentid] [int] NOT NULL,
	[seoUrl] [nvarchar](500) NULL,
	[isadmin] [bit] NOT NULL,
	[visible] [bit] NOT NULL,
	[order] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_file]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_file]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_file](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[filename] [nvarchar](150) NOT NULL,
	[fullPath] [nvarchar](500) NOT NULL,
	[filetype] [int] NOT NULL,
	[status] [bit] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_files] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_faq]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_faq]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_faq](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question] [nvarchar](2000) NOT NULL,
	[answer] [nvarchar](max) NULL,
 CONSTRAINT [PK_sony_faq] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_center]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_center]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_center](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](300) NOT NULL,
	[address] [nvarchar](500) NULL,
	[phone] [nvarchar](50) NULL,
	[fax] [nvarchar](50) NULL,
	[province] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
	[retailLevel] [int] NOT NULL,
	[centerImage] [varchar](500) NULL,
	[opentime] [nvarchar](50) NULL,
	[closetime] [nvarchar](50) NULL,
	[longitude] [nvarchar](20) NULL,
	[latitude] [nvarchar](20) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_center] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sony_banner_type]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_banner_type]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_banner_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[positionType] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_banner_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_banner_photo]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_banner_photo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_banner_photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bannerId] [int] NOT NULL,
	[imageUrl] [nvarchar](500) NULL,
	[link2] [nvarchar](500) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
	[sortOrder] [int] NOT NULL,
 CONSTRAINT [PK_sony_banner_photo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_banner]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_banner]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_banner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](300) NOT NULL,
	[visible] [bit] NOT NULL,
	[bannerType] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_banner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_album_photo]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_album_photo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_album_photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[albumId] [int] NOT NULL,
	[photoId] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_album_photo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_album_comment]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_album_comment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_album_comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[albumId] [int] NOT NULL,
	[photoId] [int] NOT NULL,
	[status] [bit] NOT NULL,
	[comment] [nvarchar](max) NULL,
	[created] [datetime] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_sony_album_comment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_album]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_album]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_album](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](500) NOT NULL,
	[albumCreator] [nvarchar](50) NOT NULL,
	[albumImage] [nvarchar](500) NULL,
	[albumType] [int] NULL,
	[viewCount] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
	[albumCover] [nvarchar](500) NULL,
 CONSTRAINT [PK_sony_album] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_action_log]    Script Date: 12/06/2013 00:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_action_log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_action_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[created] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_action_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Default [DF_sony_action_log_username]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_sony_action_log_username]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_action_log]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_action_log_username]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_action_log] ADD  CONSTRAINT [DF_sony_action_log_username]  DEFAULT (N'admin') FOR [username]
END


End
GO
/****** Object:  Default [DF__sony_albu__album__40058253]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__sony_albu__album__40058253]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_album]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_albu__album__40058253]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_album] ADD  DEFAULT ('admin') FOR [albumCreator]
END


End
GO
/****** Object:  Default [DF__sony_albu__album__40F9A68C]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__sony_albu__album__40F9A68C]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_album]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_albu__album__40F9A68C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_album] ADD  DEFAULT ((0)) FOR [albumType]
END


End
GO
/****** Object:  Default [DF__sony_albu__viewC__41EDCAC5]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__sony_albu__viewC__41EDCAC5]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_album]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_albu__viewC__41EDCAC5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_album] ADD  DEFAULT ((0)) FOR [viewCount]
END


End
GO
/****** Object:  Default [DF_sony_album_comment_status]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_sony_album_comment_status]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_album_comment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_album_comment_status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_album_comment] ADD  CONSTRAINT [DF_sony_album_comment_status]  DEFAULT ((0)) FOR [status]
END


End
GO
/****** Object:  Default [DF__sony_albu__usern__43D61337]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__sony_albu__usern__43D61337]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_album_comment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_albu__usern__43D61337]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_album_comment] ADD  DEFAULT ('admin') FOR [username]
END


End
GO
/****** Object:  Default [DF__sony_bann__sortO__44CA3770]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__sony_bann__sortO__44CA3770]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_banner_photo]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_bann__sortO__44CA3770]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_banner_photo] ADD  DEFAULT ((0)) FOR [sortOrder]
END


End
GO
/****** Object:  Default [DF_sony_center_retailLevel]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_sony_center_retailLevel]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_center]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_center_retailLevel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_center] ADD  CONSTRAINT [DF_sony_center_retailLevel]  DEFAULT ((0)) FOR [retailLevel]
END


End
GO
/****** Object:  Default [DF_sony_files_status]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_sony_files_status]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_file]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_files_status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_file] ADD  CONSTRAINT [DF_sony_files_status]  DEFAULT ((0)) FOR [status]
END


End
GO
/****** Object:  Default [DF_sony_menu_isparent]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_sony_menu_isparent]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_menu]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_menu_isparent]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_menu] ADD  CONSTRAINT [DF_sony_menu_isparent]  DEFAULT ((1)) FOR [isparent]
END


End
GO
/****** Object:  Default [DF_sony_menu_parentid]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_sony_menu_parentid]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_menu]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_menu_parentid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_menu] ADD  CONSTRAINT [DF_sony_menu_parentid]  DEFAULT ((0)) FOR [parentid]
END


End
GO
/****** Object:  Default [DF_sony_menu_isadmin]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_sony_menu_isadmin]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_menu]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_menu_isadmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_menu] ADD  CONSTRAINT [DF_sony_menu_isadmin]  DEFAULT ((1)) FOR [isadmin]
END


End
GO
/****** Object:  Default [DF_sony_menu_visible]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_sony_menu_visible]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_menu]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_menu_visible]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_menu] ADD  CONSTRAINT [DF_sony_menu_visible]  DEFAULT ((1)) FOR [visible]
END


End
GO
/****** Object:  Default [DF__sony_menu__order__4B7734FF]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__sony_menu__order__4B7734FF]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_menu]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_menu__order__4B7734FF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_menu] ADD  DEFAULT ((1)) FOR [order]
END


End
GO
/****** Object:  Default [DF__sony_news__viewC__4C6B5938]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__sony_news__viewC__4C6B5938]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_news]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_news__viewC__4C6B5938]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_news] ADD  DEFAULT ((0)) FOR [viewCount]
END


End
GO
/****** Object:  Default [DF__sony_news__likeC__4D5F7D71]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__sony_news__likeC__4D5F7D71]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_news]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_news__likeC__4D5F7D71]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_news] ADD  DEFAULT ((0)) FOR [likeCount]
END


End
GO
/****** Object:  Default [DF__sony_news__paren__4E53A1AA]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__sony_news__paren__4E53A1AA]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_news_category]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_news__paren__4E53A1AA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_news_category] ADD  DEFAULT ((0)) FOR [parentId]
END


End
GO
/****** Object:  Default [DF_sony_page_creator]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_sony_page_creator]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_page]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_page_creator]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_page] ADD  CONSTRAINT [DF_sony_page_creator]  DEFAULT (N'admin') FOR [creator]
END


End
GO
/****** Object:  Default [DF_sony_page_updator]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_sony_page_updator]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_page]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_page_updator]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_page] ADD  CONSTRAINT [DF_sony_page_updator]  DEFAULT (N'admin') FOR [updator]
END


End
GO
/****** Object:  Default [DF__sony_phot__statu__51300E55]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__sony_phot__statu__51300E55]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_photo]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_phot__statu__51300E55]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_photo] ADD  DEFAULT ((0)) FOR [status]
END


End
GO
/****** Object:  Default [DF__sony_phot__viewC__5224328E]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__sony_phot__viewC__5224328E]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_photo]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_phot__viewC__5224328E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_photo] ADD  DEFAULT ((0)) FOR [viewCount]
END


End
GO
/****** Object:  Default [DF__sony_phot__voteC__531856C7]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__sony_phot__voteC__531856C7]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_photo]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_phot__voteC__531856C7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_photo] ADD  DEFAULT ((0)) FOR [voteCount]
END


End
GO
/****** Object:  Default [DF__sony_phot__likeC__540C7B00]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__sony_phot__likeC__540C7B00]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_photo]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_phot__likeC__540C7B00]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_photo] ADD  DEFAULT ((0)) FOR [likeCount]
END


End
GO
/****** Object:  Default [DF__sony_phot__useru__5CA1C101]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__sony_phot__useru__5CA1C101]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_photo]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_phot__useru__5CA1C101]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_photo] ADD  DEFAULT ('admin') FOR [userupload]
END


End
GO
/****** Object:  Default [DF__sony_prod__paren__55009F39]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__sony_prod__paren__55009F39]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_product_category]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_prod__paren__55009F39]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_product_category] ADD  DEFAULT ((0)) FOR [parentId]
END


End
GO
/****** Object:  Default [DF_sony_province_provinceOrder]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_sony_province_provinceOrder]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_province]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_province_provinceOrder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_province] ADD  CONSTRAINT [DF_sony_province_provinceOrder]  DEFAULT ((0)) FOR [provinceOrder]
END


End
GO
/****** Object:  Default [DF_sony_user_status]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_sony_user_status]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_user]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_user_status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_user] ADD  CONSTRAINT [DF_sony_user_status]  DEFAULT ((0)) FOR [status]
END


End
GO
/****** Object:  Default [DF__sony_user__group__57DD0BE4]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__sony_user__group__57DD0BE4]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_user]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_user__group__57DD0BE4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_user] ADD  DEFAULT ((0)) FOR [groupId]
END


End
GO
/****** Object:  Default [DF_sony_user_group_issuper]    Script Date: 12/06/2013 00:21:48 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_sony_user_group_issuper]') AND parent_object_id = OBJECT_ID(N'[dbo].[sony_user_group]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_user_group_issuper]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_user_group] ADD  CONSTRAINT [DF_sony_user_group_issuper]  DEFAULT ((0)) FOR [issuper]
END


End
GO
