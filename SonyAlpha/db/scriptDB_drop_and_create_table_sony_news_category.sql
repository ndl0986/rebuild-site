USE [sony_rebuild_alpha]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_news__paren__113584D1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_news_category] DROP CONSTRAINT [DF__sony_news__paren__113584D1]
END

GO

USE [sony_rebuild_alpha]
GO

/****** Object:  Table [dbo].[sony_news_category]    Script Date: 11/17/2013 21:27:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news_category]') AND type in (N'U'))
DROP TABLE [dbo].[sony_news_category]
GO

USE [sony_rebuild_alpha]
GO

/****** Object:  Table [dbo].[sony_news_category]    Script Date: 11/17/2013 21:27:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

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

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[sony_news_category] ADD  DEFAULT ((0)) FOR [parentId]
GO

