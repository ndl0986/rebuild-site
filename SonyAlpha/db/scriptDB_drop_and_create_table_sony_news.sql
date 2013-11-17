USE [sony_rebuild_alpha]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_news__viewC__6EE06CCD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_news] DROP CONSTRAINT [DF__sony_news__viewC__6EE06CCD]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_news__likeC__6FD49106]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_news] DROP CONSTRAINT [DF__sony_news__likeC__6FD49106]
END

GO

USE [sony_rebuild_alpha]
GO

/****** Object:  Table [dbo].[sony_news]    Script Date: 11/17/2013 14:58:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news]') AND type in (N'U'))
DROP TABLE [dbo].[sony_news]
GO

USE [sony_rebuild_alpha]
GO

/****** Object:  Table [dbo].[sony_news]    Script Date: 11/17/2013 14:58:23 ******/
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

