USE [sony_rebuild_alpha]
GO

/****** Object:  Table [dbo].[sony_product]    Script Date: 11/16/2013 16:58:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_product]') AND type in (N'U'))
DROP TABLE [dbo].[sony_product]
GO

USE [sony_rebuild_alpha]
GO

/****** Object:  Table [dbo].[sony_product]    Script Date: 11/16/2013 16:58:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

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
 CONSTRAINT [PK_sony_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

