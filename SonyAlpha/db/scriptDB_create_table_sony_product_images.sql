USE [sony_rebuild_alpha]
GO

/****** Object:  Table [dbo].[sony_product_images]    Script Date: 11/24/2013 20:26:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sony_product_images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NOT NULL,
	[imageUrls] [nvarchar](max) NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
 CONSTRAINT [PK_sony_product_images] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


