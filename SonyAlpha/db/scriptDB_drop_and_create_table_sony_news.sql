USE [sony_rebuild_alpha]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_news__viewC__15FA39EE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_news] DROP CONSTRAINT [DF__sony_news__viewC__15FA39EE]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_news__likeC__16EE5E27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_news] DROP CONSTRAINT [DF__sony_news__likeC__16EE5E27]
END

GO

USE [sony_rebuild_alpha]
GO

/****** Object:  Table [dbo].[sony_news]    Script Date: 11/18/2013 00:49:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news]') AND type in (N'U'))
DROP TABLE [dbo].[sony_news]
GO

USE [sony_rebuild_alpha]
GO

/****** Object:  Table [dbo].[sony_news]    Script Date: 11/18/2013 00:49:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

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

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[sony_news] ADD  DEFAULT ((0)) FOR [viewCount]
GO

ALTER TABLE [dbo].[sony_news] ADD  DEFAULT ((0)) FOR [likeCount]
GO

