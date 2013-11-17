USE [sony_rebuild_alpha]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_center_retailLevel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_center] DROP CONSTRAINT [DF_sony_center_retailLevel]
END

GO

USE [sony_rebuild_alpha]
GO

/****** Object:  Table [dbo].[sony_center]    Script Date: 11/17/2013 16:53:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_center]') AND type in (N'U'))
DROP TABLE [dbo].[sony_center]
GO

USE [sony_rebuild_alpha]
GO

/****** Object:  Table [dbo].[sony_center]    Script Date: 11/17/2013 16:53:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sony_center](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](300) NOT NULL,
	[address] [nvarchar](500) NULL,
	[phone] [nvarchar](50) NULL,
	[fax] [nvarchar](50) NULL,
	[province] [nvarchar](50) NULL,
	[description] [text] NULL,
	[retailLevel] [int] NOT NULL,
	[avatar] [int] NULL,
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
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[sony_center] ADD  CONSTRAINT [DF_sony_center_retailLevel]  DEFAULT ((0)) FOR [retailLevel]
GO

