USE [sony_rebuild_alpha]
GO

/****** Object:  Table [dbo].[sony_banner_photo]    Script Date: 11/12/2013 19:27:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_banner_photo]') AND type in (N'U'))
DROP TABLE [dbo].[sony_banner_photo]
GO

USE [sony_rebuild_alpha]
GO

/****** Object:  Table [dbo].[sony_banner_photo]    Script Date: 11/12/2013 19:27:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sony_banner_photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bannerId] [int] NOT NULL,
	[imageUrl] [nvarchar](500) NULL,
	[link2] [nvarchar](500) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_banner_photo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

