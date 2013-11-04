USE [sony_rebuild_alpha]
GO
/****** Object:  Table [dbo].[sony_action_log]    Script Date: 11/04/2013 19:21:01 ******/
ALTER TABLE [dbo].[sony_action_log] DROP CONSTRAINT [DF_sony_action_log_username]
GO
DROP TABLE [dbo].[sony_action_log]
GO
/****** Object:  Table [dbo].[sony_album]    Script Date: 11/04/2013 19:21:01 ******/
DROP TABLE [dbo].[sony_album]
GO
/****** Object:  Table [dbo].[sony_album_photo]    Script Date: 11/04/2013 19:21:01 ******/
DROP TABLE [dbo].[sony_album_photo]
GO
/****** Object:  Table [dbo].[sony_banner]    Script Date: 11/04/2013 19:21:02 ******/
DROP TABLE [dbo].[sony_banner]
GO
/****** Object:  Table [dbo].[sony_banner_photo]    Script Date: 11/04/2013 19:21:02 ******/
DROP TABLE [dbo].[sony_banner_photo]
GO
/****** Object:  Table [dbo].[sony_banner_type]    Script Date: 11/04/2013 19:21:02 ******/
DROP TABLE [dbo].[sony_banner_type]
GO
/****** Object:  Table [dbo].[sony_category]    Script Date: 11/04/2013 19:21:02 ******/
ALTER TABLE [dbo].[sony_category] DROP CONSTRAINT [DF__sony_cate__avata__59063A47]
GO
DROP TABLE [dbo].[sony_category]
GO
/****** Object:  Table [dbo].[sony_category_album]    Script Date: 11/04/2013 19:21:02 ******/
DROP TABLE [dbo].[sony_category_album]
GO
/****** Object:  Table [dbo].[sony_category_news]    Script Date: 11/04/2013 19:21:02 ******/
DROP TABLE [dbo].[sony_category_news]
GO
/****** Object:  Table [dbo].[sony_category_type]    Script Date: 11/04/2013 19:21:02 ******/
DROP TABLE [dbo].[sony_category_type]
GO
/****** Object:  Table [dbo].[sony_center]    Script Date: 11/04/2013 19:21:02 ******/
ALTER TABLE [dbo].[sony_center] DROP CONSTRAINT [DF_sony_center_retailLevel]
GO
DROP TABLE [dbo].[sony_center]
GO
/****** Object:  Table [dbo].[sony_file]    Script Date: 11/04/2013 19:21:02 ******/
ALTER TABLE [dbo].[sony_file] DROP CONSTRAINT [DF_sony_files_status]
GO
DROP TABLE [dbo].[sony_file]
GO
/****** Object:  Table [dbo].[sony_menu]    Script Date: 11/04/2013 19:21:02 ******/
ALTER TABLE [dbo].[sony_menu] DROP CONSTRAINT [DF_sony_menu_isparent]
GO
ALTER TABLE [dbo].[sony_menu] DROP CONSTRAINT [DF_sony_menu_parentid]
GO
ALTER TABLE [dbo].[sony_menu] DROP CONSTRAINT [DF_sony_menu_isadmin]
GO
ALTER TABLE [dbo].[sony_menu] DROP CONSTRAINT [DF_sony_menu_visible]
GO
ALTER TABLE [dbo].[sony_menu] DROP CONSTRAINT [DF__sony_menu__order__1CF15040]
GO
DROP TABLE [dbo].[sony_menu]
GO
/****** Object:  Table [dbo].[sony_news]    Script Date: 11/04/2013 19:21:02 ******/
DROP TABLE [dbo].[sony_news]
GO
/****** Object:  Table [dbo].[sony_news_page]    Script Date: 11/04/2013 19:21:02 ******/
DROP TABLE [dbo].[sony_news_page]
GO
/****** Object:  Table [dbo].[sony_news_related]    Script Date: 11/04/2013 19:21:02 ******/
DROP TABLE [dbo].[sony_news_related]
GO
/****** Object:  Table [dbo].[sony_news_type]    Script Date: 11/04/2013 19:21:02 ******/
DROP TABLE [dbo].[sony_news_type]
GO
/****** Object:  Table [dbo].[sony_page]    Script Date: 11/04/2013 19:21:02 ******/
ALTER TABLE [dbo].[sony_page] DROP CONSTRAINT [DF_sony_page_creator]
GO
ALTER TABLE [dbo].[sony_page] DROP CONSTRAINT [DF_sony_page_updator]
GO
DROP TABLE [dbo].[sony_page]
GO
/****** Object:  Table [dbo].[sony_page_banner]    Script Date: 11/04/2013 19:21:02 ******/
DROP TABLE [dbo].[sony_page_banner]
GO
/****** Object:  Table [dbo].[sony_permission]    Script Date: 11/04/2013 19:21:02 ******/
DROP TABLE [dbo].[sony_permission]
GO
/****** Object:  Table [dbo].[sony_permission_group]    Script Date: 11/04/2013 19:21:02 ******/
DROP TABLE [dbo].[sony_permission_group]
GO
/****** Object:  Table [dbo].[sony_photo]    Script Date: 11/04/2013 19:21:03 ******/
ALTER TABLE [dbo].[sony_photo] DROP CONSTRAINT [DF__sony_phot__statu__060DEAE8]
GO
DROP TABLE [dbo].[sony_photo]
GO
/****** Object:  Table [dbo].[sony_product_category]    Script Date: 11/04/2013 19:21:03 ******/
DROP TABLE [dbo].[sony_product_category]
GO
/****** Object:  Table [dbo].[sony_setting]    Script Date: 11/04/2013 19:21:03 ******/
DROP TABLE [dbo].[sony_setting]
GO
/****** Object:  Table [dbo].[sony_user]    Script Date: 11/04/2013 19:21:03 ******/
ALTER TABLE [dbo].[sony_user] DROP CONSTRAINT [DF_sony_user_status]
GO
DROP TABLE [dbo].[sony_user]
GO
/****** Object:  Table [dbo].[sony_user_group]    Script Date: 11/04/2013 19:21:03 ******/
ALTER TABLE [dbo].[sony_user_group] DROP CONSTRAINT [DF_sony_user_group_issuper]
GO
DROP TABLE [dbo].[sony_user_group]
GO
/****** Object:  Table [dbo].[sony_user_group]    Script Date: 11/04/2013 19:21:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_user_group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[groupname] [nvarchar](150) NOT NULL,
	[issuper] [bit] NOT NULL CONSTRAINT [DF_sony_user_group_issuper]  DEFAULT ((0)),
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_user_group] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_user]    Script Date: 11/04/2013 19:21:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](200) NOT NULL,
	[fullname] [nvarchar](200) NULL,
	[status] [bit] NOT NULL CONSTRAINT [DF_sony_user_status]  DEFAULT ((0)),
	[registered] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_setting]    Script Date: 11/04/2013 19:21:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_setting](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[value] [nvarchar](50) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_setting] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_product_category]    Script Date: 11/04/2013 19:21:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_product_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[longname] [nvarchar](500) NULL,
	[avatar] [int] NULL,
	[redirectUrl] [nvarchar](500) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_product_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_photo]    Script Date: 11/04/2013 19:21:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](150) NOT NULL,
	[filename] [nvarchar](150) NOT NULL,
	[description] [nvarchar](500) NULL,
	[redirectUrl] [nvarchar](500) NULL,
	[status] [bit] NOT NULL DEFAULT ((0)),
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_photo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_permission_group]    Script Date: 11/04/2013 19:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[sony_permission]    Script Date: 11/04/2013 19:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[sony_page_banner]    Script Date: 11/04/2013 19:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[sony_page]    Script Date: 11/04/2013 19:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_page](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](300) NOT NULL,
	[longtitle] [nvarchar](500) NULL,
	[pageContent] [nvarchar](max) NULL,
	[isNews] [bit] NOT NULL,
	[seoUrl] [nvarchar](500) NULL,
	[status] [bit] NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
	[creator] [nvarchar](50) NOT NULL CONSTRAINT [DF_sony_page_creator]  DEFAULT (N'admin'),
	[updator] [nvarchar](50) NOT NULL CONSTRAINT [DF_sony_page_updator]  DEFAULT (N'admin'),
 CONSTRAINT [PK_sony_page] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_news_type]    Script Date: 11/04/2013 19:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_news_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_new_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_news_related]    Script Date: 11/04/2013 19:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_news_related](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[newsId] [int] NOT NULL,
	[relatedIds] [nvarchar](200) NULL,
 CONSTRAINT [PK_sony_news_related] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_news_page]    Script Date: 11/04/2013 19:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_news_page](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[newsId] [int] NOT NULL,
	[pageId] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_news_page] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_news]    Script Date: 11/04/2013 19:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_news](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](300) NOT NULL,
	[shortTitle] [nvarchar](500) NULL,
	[redirectUrl] [nvarchar](500) NULL,
	[detail] [nvarchar](max) NULL,
	[newsType] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[metaTag] [nvarchar](500) NULL,
	[metaTitle] [nvarchar](500) NULL,
	[metaKeyword] [nvarchar](500) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_new] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_menu]    Script Date: 11/04/2013 19:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[isparent] [bit] NOT NULL CONSTRAINT [DF_sony_menu_isparent]  DEFAULT ((1)),
	[parentid] [int] NOT NULL CONSTRAINT [DF_sony_menu_parentid]  DEFAULT ((0)),
	[seoUrl] [nvarchar](500) NULL,
	[isadmin] [bit] NOT NULL CONSTRAINT [DF_sony_menu_isadmin]  DEFAULT ((1)),
	[visible] [bit] NOT NULL CONSTRAINT [DF_sony_menu_visible]  DEFAULT ((1)),
	[order] [int] NOT NULL DEFAULT ((1)),
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_file]    Script Date: 11/04/2013 19:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_file](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[filename] [nvarchar](150) NOT NULL,
	[filetype] [int] NOT NULL,
	[status] [bit] NOT NULL CONSTRAINT [DF_sony_files_status]  DEFAULT ((0)),
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_files] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_center]    Script Date: 11/04/2013 19:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_center](
	[it] [int] NOT NULL,
	[name] [nvarchar](300) NOT NULL,
	[address] [nvarchar](500) NULL,
	[phone] [nvarchar](50) NULL,
	[fax] [nvarchar](50) NULL,
	[province] [nvarchar](50) NULL,
	[description] [text] NULL,
	[retailLevel] [int] NOT NULL CONSTRAINT [DF_sony_center_retailLevel]  DEFAULT ((0)),
	[avatar] [int] NULL,
	[opentime] [nvarchar](50) NULL,
	[closetime] [nvarchar](50) NULL,
	[longitude] [nvarchar](20) NULL,
	[latitude] [nvarchar](20) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_center] PRIMARY KEY CLUSTERED 
(
	[it] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_category_type]    Script Date: 11/04/2013 19:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_category_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_category_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_category_news]    Script Date: 11/04/2013 19:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_category_news](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoryId] [int] NOT NULL,
	[newsId] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_category_news] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_category_album]    Script Date: 11/04/2013 19:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_category_album](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoryId] [int] NOT NULL,
	[albumId] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_category_album] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_category]    Script Date: 11/04/2013 19:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[seoUrl] [nvarchar](500) NULL,
	[avatar] [int] NOT NULL DEFAULT ((0)),
	[categoryType] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_banner_type]    Script Date: 11/04/2013 19:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[sony_banner_photo]    Script Date: 11/04/2013 19:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_banner_photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bannerId] [int] NOT NULL,
	[photoId] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_banner_photo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_banner]    Script Date: 11/04/2013 19:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[sony_album_photo]    Script Date: 11/04/2013 19:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[sony_album]    Script Date: 11/04/2013 19:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_album](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[shortname] [nvarchar](200) NOT NULL,
	[fullname] [nvarchar](500) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_album] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_action_log]    Script Date: 11/04/2013 19:21:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_action_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL CONSTRAINT [DF_sony_action_log_username]  DEFAULT (N'admin'),
	[description] [nvarchar](max) NOT NULL,
	[created] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_action_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
