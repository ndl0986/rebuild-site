USE [sony_rebuild_alpha_test]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_news]    Script Date: 11/26/2013 22:12:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sony_sp_add_news] 
	-- Add the parameters for the stored procedure here
	@title nvarchar(500) 
   ,@seoUrl nvarchar(500) = NULL
   ,@detail nvarchar(max) = NULL
   ,@description nvarchar(500) = NULL
   ,@categoryId int 
   ,@published bit 
   ,@metaTag nvarchar(500) = NULL
   ,@metaTitle nvarchar(500) = NULL
   ,@metaKeyword nvarchar(500) = NULL
   ,@viewCount int = 0
   ,@likeCount int = 0
   ,@newsImage varchar(500) = NULL
   ,@relatedNewsIds varchar(500) = NULL
   ,@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [sony_news]
           ([title]
           ,[seoUrl]
           ,[detail]
           ,[description]
           ,[categoryId]
           ,[published]
           ,[metaTag]
           ,[metaTitle]
           ,[metaKeyword]
           ,[viewCount]
           ,[likeCount]
           ,[newsImage]
           ,[relatedNewsIds]
           ,[created]
           ,[updated])
     VALUES
           (@title
           ,@seoUrl
           ,@detail
           ,@description
           ,@categoryId
           ,@published
           ,@metaTag 
           ,@metaTitle
           ,@metaKeyword 
           ,@viewCount 
           ,@likeCount 
           ,@newsImage 
           ,@relatedNewsIds 
           ,GETDATE() 
           ,GETDATE() );
     SET @returnVal = (SELECT @@IDENTITY);
END