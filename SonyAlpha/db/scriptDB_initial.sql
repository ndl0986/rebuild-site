USE [sony_rebuild_alpha]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_new_user]    Script Date: 11/05/2013 21:44:54 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_new_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_new_user]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user]    Script Date: 11/05/2013 21:44:54 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_user]
GO
/****** Object:  Table [dbo].[sony_user]    Script Date: 11/05/2013 21:44:53 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_user_status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_user] DROP CONSTRAINT [DF_sony_user_status]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_user]') AND type in (N'U'))
DROP TABLE [dbo].[sony_user]
GO
/****** Object:  Table [dbo].[sony_user_group]    Script Date: 11/05/2013 21:44:53 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_user_group_issuper]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_user_group] DROP CONSTRAINT [DF_sony_user_group_issuper]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_user_group]') AND type in (N'U'))
DROP TABLE [dbo].[sony_user_group]
GO
/****** Object:  Table [dbo].[sony_action_log]    Script Date: 11/05/2013 21:44:51 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_action_log_username]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_action_log] DROP CONSTRAINT [DF_sony_action_log_username]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_action_log]') AND type in (N'U'))
DROP TABLE [dbo].[sony_action_log]
GO
/****** Object:  Table [dbo].[sony_album]    Script Date: 11/05/2013 21:44:51 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_albu__album__25A691D2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_album] DROP CONSTRAINT [DF__sony_albu__album__25A691D2]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_albu__viewC__269AB60B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_album] DROP CONSTRAINT [DF__sony_albu__viewC__269AB60B]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_album]') AND type in (N'U'))
DROP TABLE [dbo].[sony_album]
GO
/****** Object:  Table [dbo].[sony_album_comment]    Script Date: 11/05/2013 21:44:51 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_album_comment_status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_album_comment] DROP CONSTRAINT [DF_sony_album_comment_status]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_album_comment]') AND type in (N'U'))
DROP TABLE [dbo].[sony_album_comment]
GO
/****** Object:  Table [dbo].[sony_album_photo]    Script Date: 11/05/2013 21:44:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_album_photo]') AND type in (N'U'))
DROP TABLE [dbo].[sony_album_photo]
GO
/****** Object:  Table [dbo].[sony_banner]    Script Date: 11/05/2013 21:44:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_banner]') AND type in (N'U'))
DROP TABLE [dbo].[sony_banner]
GO
/****** Object:  Table [dbo].[sony_banner_photo]    Script Date: 11/05/2013 21:44:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_banner_photo]') AND type in (N'U'))
DROP TABLE [dbo].[sony_banner_photo]
GO
/****** Object:  Table [dbo].[sony_banner_type]    Script Date: 11/05/2013 21:44:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_banner_type]') AND type in (N'U'))
DROP TABLE [dbo].[sony_banner_type]
GO
/****** Object:  Table [dbo].[sony_category]    Script Date: 11/05/2013 21:44:52 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_cate__avata__10AB74EC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_category] DROP CONSTRAINT [DF__sony_cate__avata__10AB74EC]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_category]') AND type in (N'U'))
DROP TABLE [dbo].[sony_category]
GO
/****** Object:  Table [dbo].[sony_category_album]    Script Date: 11/05/2013 21:44:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_category_album]') AND type in (N'U'))
DROP TABLE [dbo].[sony_category_album]
GO
/****** Object:  Table [dbo].[sony_category_news]    Script Date: 11/05/2013 21:44:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_category_news]') AND type in (N'U'))
DROP TABLE [dbo].[sony_category_news]
GO
/****** Object:  Table [dbo].[sony_category_type]    Script Date: 11/05/2013 21:44:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_category_type]') AND type in (N'U'))
DROP TABLE [dbo].[sony_category_type]
GO
/****** Object:  Table [dbo].[sony_center]    Script Date: 11/05/2013 21:44:52 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_center_retailLevel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_center] DROP CONSTRAINT [DF_sony_center_retailLevel]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_center]') AND type in (N'U'))
DROP TABLE [dbo].[sony_center]
GO
/****** Object:  Table [dbo].[sony_file]    Script Date: 11/05/2013 21:44:52 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_files_status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_file] DROP CONSTRAINT [DF_sony_files_status]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_file]') AND type in (N'U'))
DROP TABLE [dbo].[sony_file]
GO
/****** Object:  Table [dbo].[sony_menu]    Script Date: 11/05/2013 21:44:52 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_menu_isparent]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_menu] DROP CONSTRAINT [DF_sony_menu_isparent]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_menu_parentid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_menu] DROP CONSTRAINT [DF_sony_menu_parentid]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_menu_isadmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_menu] DROP CONSTRAINT [DF_sony_menu_isadmin]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_menu_visible]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_menu] DROP CONSTRAINT [DF_sony_menu_visible]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_menu__order__025D5595]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_menu] DROP CONSTRAINT [DF__sony_menu__order__025D5595]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_menu]') AND type in (N'U'))
DROP TABLE [dbo].[sony_menu]
GO
/****** Object:  Table [dbo].[sony_news]    Script Date: 11/05/2013 21:44:52 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_news__viewC__2C538F61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_news] DROP CONSTRAINT [DF__sony_news__viewC__2C538F61]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_news__likeC__2D47B39A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_news] DROP CONSTRAINT [DF__sony_news__likeC__2D47B39A]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news]') AND type in (N'U'))
DROP TABLE [dbo].[sony_news]
GO
/****** Object:  Table [dbo].[sony_news_page]    Script Date: 11/05/2013 21:44:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news_page]') AND type in (N'U'))
DROP TABLE [dbo].[sony_news_page]
GO
/****** Object:  Table [dbo].[sony_news_related]    Script Date: 11/05/2013 21:44:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news_related]') AND type in (N'U'))
DROP TABLE [dbo].[sony_news_related]
GO
/****** Object:  Table [dbo].[sony_news_type]    Script Date: 11/05/2013 21:44:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news_type]') AND type in (N'U'))
DROP TABLE [dbo].[sony_news_type]
GO
/****** Object:  Table [dbo].[sony_page]    Script Date: 11/05/2013 21:44:52 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_page_creator]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_page] DROP CONSTRAINT [DF_sony_page_creator]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_page_updator]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_page] DROP CONSTRAINT [DF_sony_page_updator]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_page]') AND type in (N'U'))
DROP TABLE [dbo].[sony_page]
GO
/****** Object:  Table [dbo].[sony_page_banner]    Script Date: 11/05/2013 21:44:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_page_banner]') AND type in (N'U'))
DROP TABLE [dbo].[sony_page_banner]
GO
/****** Object:  Table [dbo].[sony_permission]    Script Date: 11/05/2013 21:44:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_permission]') AND type in (N'U'))
DROP TABLE [dbo].[sony_permission]
GO
/****** Object:  Table [dbo].[sony_permission_group]    Script Date: 11/05/2013 21:44:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_permission_group]') AND type in (N'U'))
DROP TABLE [dbo].[sony_permission_group]
GO
/****** Object:  Table [dbo].[sony_permission_page_menu]    Script Date: 11/05/2013 21:44:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_permission_page_menu]') AND type in (N'U'))
DROP TABLE [dbo].[sony_permission_page_menu]
GO
/****** Object:  Table [dbo].[sony_photo]    Script Date: 11/05/2013 21:44:52 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_phot__statu__67A95F59]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_photo] DROP CONSTRAINT [DF__sony_phot__statu__67A95F59]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_phot__viewC__689D8392]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_photo] DROP CONSTRAINT [DF__sony_phot__viewC__689D8392]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_phot__voteC__6991A7CB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_photo] DROP CONSTRAINT [DF__sony_phot__voteC__6991A7CB]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_phot__likeC__6A85CC04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_photo] DROP CONSTRAINT [DF__sony_phot__likeC__6A85CC04]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_photo]') AND type in (N'U'))
DROP TABLE [dbo].[sony_photo]
GO
/****** Object:  Table [dbo].[sony_product]    Script Date: 11/05/2013 21:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_product]') AND type in (N'U'))
DROP TABLE [dbo].[sony_product]
GO
/****** Object:  Table [dbo].[sony_product_category]    Script Date: 11/05/2013 21:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_product_category]') AND type in (N'U'))
DROP TABLE [dbo].[sony_product_category]
GO
/****** Object:  Table [dbo].[sony_product_type]    Script Date: 11/05/2013 21:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_product_type]') AND type in (N'U'))
DROP TABLE [dbo].[sony_product_type]
GO
/****** Object:  Table [dbo].[sony_province]    Script Date: 11/05/2013 21:44:53 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_province_provinceOrder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_province] DROP CONSTRAINT [DF_sony_province_provinceOrder]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_province]') AND type in (N'U'))
DROP TABLE [dbo].[sony_province]
GO
/****** Object:  Table [dbo].[sony_setting]    Script Date: 11/05/2013 21:44:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_setting]') AND type in (N'U'))
DROP TABLE [dbo].[sony_setting]
GO
/****** Object:  Table [dbo].[sony_setting]    Script Date: 11/05/2013 21:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_setting]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[sony_province]    Script Date: 11/05/2013 21:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_province]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_province](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[province] [nvarchar](200) NOT NULL,
	[provinceOrder] [int] NOT NULL CONSTRAINT [DF_sony_province_provinceOrder]  DEFAULT ((0)),
 CONSTRAINT [PK_sony_province] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_product_type]    Script Date: 11/05/2013 21:44:53 ******/
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
/****** Object:  Table [dbo].[sony_product_category]    Script Date: 11/05/2013 21:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_product_category]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[sony_product]    Script Date: 11/05/2013 21:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[productType] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[photoId] [int] NOT NULL,
	[shortDesc] [nvarchar](300) NULL,
	[description] [text] NULL,
	[status] [bit] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_photo]    Script Date: 11/05/2013 21:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_photo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](150) NOT NULL,
	[filename] [nvarchar](150) NOT NULL,
	[description] [nvarchar](500) NULL,
	[redirectUrl] [nvarchar](500) NULL,
	[status] [bit] NOT NULL DEFAULT ((0)),
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
	[viewCount] [int] NOT NULL DEFAULT ((0)),
	[voteCount] [int] NOT NULL DEFAULT ((0)),
	[likeCount] [int] NOT NULL DEFAULT ((0)),
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_photo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_permission_page_menu]    Script Date: 11/05/2013 21:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_permission_page_menu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_permission_page_menu](
	[id] [int] NOT NULL,
	[permissionGroup] [int] NOT NULL,
	[menuPageId] [int] NOT NULL,
	[isPage] [bit] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_permission_page_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'sony_permission_page_menu', N'COLUMN',N'menuPageId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'field nay chua id cua Page hoac Menu, dung de check hoac set permission cho page hoac menu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sony_permission_page_menu', @level2type=N'COLUMN',@level2name=N'menuPageId'
GO
/****** Object:  Table [dbo].[sony_permission_group]    Script Date: 11/05/2013 21:44:52 ******/
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
/****** Object:  Table [dbo].[sony_permission]    Script Date: 11/05/2013 21:44:52 ******/
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
/****** Object:  Table [dbo].[sony_page_banner]    Script Date: 11/05/2013 21:44:52 ******/
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
/****** Object:  Table [dbo].[sony_page]    Script Date: 11/05/2013 21:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_page]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[sony_news_type]    Script Date: 11/05/2013 21:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news_type]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[sony_news_related]    Script Date: 11/05/2013 21:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news_related]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_news_related](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[newsId] [int] NOT NULL,
	[relatedIds] [nvarchar](200) NULL,
 CONSTRAINT [PK_sony_news_related] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_news_page]    Script Date: 11/05/2013 21:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news_page]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[sony_news]    Script Date: 11/05/2013 21:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_news](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](500) NOT NULL,
	[shortTitle] [nvarchar](300) NULL,
	[redirectUrl] [nvarchar](500) NULL,
	[shortDesc] [nvarchar](500) NOT NULL,
	[detail] [nvarchar](max) NULL,
	[categoryId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[metaTag] [nvarchar](500) NULL,
	[metaTitle] [nvarchar](500) NULL,
	[metaKeyword] [nvarchar](500) NULL,
	[viewCount] [int] NOT NULL DEFAULT ((0)),
	[likeCount] [int] NOT NULL DEFAULT ((0)),
	[newsImage] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_new] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_menu]    Script Date: 11/05/2013 21:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_menu]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[sony_file]    Script Date: 11/05/2013 21:44:52 ******/
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
	[status] [bit] NOT NULL CONSTRAINT [DF_sony_files_status]  DEFAULT ((0)),
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_files] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_center]    Script Date: 11/05/2013 21:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_center]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[sony_category_type]    Script Date: 11/05/2013 21:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_category_type]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[sony_category_news]    Script Date: 11/05/2013 21:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_category_news]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_category_news](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoryId] [int] NOT NULL,
	[newsListIds] [nvarchar](1000) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_category_news] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_category_album]    Script Date: 11/05/2013 21:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_category_album]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[sony_category]    Script Date: 11/05/2013 21:44:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_category]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[sony_banner_type]    Script Date: 11/05/2013 21:44:52 ******/
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
/****** Object:  Table [dbo].[sony_banner_photo]    Script Date: 11/05/2013 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_banner_photo]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[sony_banner]    Script Date: 11/05/2013 21:44:51 ******/
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
/****** Object:  Table [dbo].[sony_album_photo]    Script Date: 11/05/2013 21:44:51 ******/
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
/****** Object:  Table [dbo].[sony_album_comment]    Script Date: 11/05/2013 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_album_comment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_album_comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[albumId] [int] NOT NULL,
	[photoId] [int] NOT NULL,
	[status] [bit] NOT NULL CONSTRAINT [DF_sony_album_comment_status]  DEFAULT ((0)),
	[comment] [text] NULL,
	[created] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_album_comment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_album]    Script Date: 11/05/2013 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_album]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_album](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](500) NOT NULL,
	[albumCreator] [nvarchar](50) NOT NULL DEFAULT ('admin'),
	[albumImage] [int] NULL,
	[viewCount] [int] NOT NULL DEFAULT ((0)),
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_album] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_action_log]    Script Date: 11/05/2013 21:44:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_action_log]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[sony_user_group]    Script Date: 11/05/2013 21:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_user_group]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[sony_user]    Script Date: 11/05/2013 21:44:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_user]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user]    Script Date: 11/05/2013 21:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		ndl0986
-- Create date: 2013/11/05 20:33:00
-- Description:	Store to update user to db
--				Support web to update user when they change their information
-- Return : return indentity 1 if add OK and return 0 if NOT OK
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_user]
	-- Add the parameters for the stored procedure here
	@username nvarchar (50),
	@password nvarchar (50),
	@fullname nvarchar (200),
	@status bit,
	@updated datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP (1) username FROM sony_user WHERE username=@username)
	BEGIN
		SET @updated = GETDATE();
		UPDATE sony_user 
		SET
			[password] = @password, 
			[fullname] = @fullname, 
			[status] = @status, 
			[updated] = @updated
		WHERE 
			[username] = @username
	END
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_new_user]    Script Date: 11/05/2013 21:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_new_user]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 2013/11/05 20:33:00
-- Description:	Store to add new user to db
--				Support web to add user when they regist as member
-- Return : return indentity <> 0 if add OK and return 0 if NOT OK
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_new_user]
	-- Add the parameters for the stored procedure here
	@username nvarchar (50),
	@password nvarchar (50),
	@fullname nvarchar (200),
	@status bit,
	@registered datetime,
	@updated datetime,
	@indentity int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @indentity = 0;
    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP (1) username FROM sony_user WHERE username=@username)
	BEGIN
		SET @registered = GETDATE();
		IF @updated = NULL
		BEGIN
			SET @updated = GETDATE();
		END
		INSERT INTO sony_user ([username], [password], [fullname], [status], [registered], [updated])
		VALUES (@username, @password, @fullname, @status, @registered, @updated);
		SET @indentity = (SELECT @@IDENTITY)
	END
END

' 
END
GO
