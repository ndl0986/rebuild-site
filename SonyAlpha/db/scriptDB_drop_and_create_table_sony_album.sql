USE [sony_rebuild_alpha]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_albu__album__216BEC9A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_album] DROP CONSTRAINT [DF__sony_albu__album__216BEC9A]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_albu__album__226010D3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_album] DROP CONSTRAINT [DF__sony_albu__album__226010D3]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_albu__viewC__2354350C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_album] DROP CONSTRAINT [DF__sony_albu__viewC__2354350C]
END

GO

USE [sony_rebuild_alpha]
GO

/****** Object:  Table [dbo].[sony_album]    Script Date: 11/19/2013 20:45:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_album]') AND type in (N'U'))
DROP TABLE [dbo].[sony_album]
GO

USE [sony_rebuild_alpha]
GO

/****** Object:  Table [dbo].[sony_album]    Script Date: 11/19/2013 20:45:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sony_album](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](500) NOT NULL,
	[albumCreator] [nvarchar](50) NOT NULL,
	[albumImage] [nvarchar](500) NULL,
	[albumType] [int] NULL,
	[viewCount] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_album] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[sony_album] ADD  DEFAULT ('admin') FOR [albumCreator]
GO

ALTER TABLE [dbo].[sony_album] ADD  DEFAULT ((0)) FOR [albumType]
GO

ALTER TABLE [dbo].[sony_album] ADD  DEFAULT ((0)) FOR [viewCount]
GO

