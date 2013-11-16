USE [sony_rebuild_alpha]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_prod__paren__47C69FAC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_product_category] DROP CONSTRAINT [DF__sony_prod__paren__47C69FAC]
END

GO

USE [sony_rebuild_alpha]
GO

/****** Object:  Table [dbo].[sony_product_category]    Script Date: 11/16/2013 16:12:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_product_category]') AND type in (N'U'))
DROP TABLE [dbo].[sony_product_category]
GO

USE [sony_rebuild_alpha]
GO

/****** Object:  Table [dbo].[sony_product_category]    Script Date: 11/16/2013 16:12:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sony_product_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[imageUrl] [nvarchar](500) NULL,
	[parentId] [int] NOT NULL,
	[description] [nvarchar](max) NULL,
	[seoUrl] [nvarchar](500) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_product_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[sony_product_category] ADD  DEFAULT ((0)) FOR [parentId]
GO

