--USE [sony_rebuild_alpha_test]
--GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_news]    Script Date: 12/19/2013 22:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_news]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_news]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_news_by_list_category_id]    Script Date: 12/19/2013 22:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_news_by_list_category_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_news_by_list_category_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_news]    Script Date: 12/19/2013 22:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_news]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_news]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_news]    Script Date: 12/19/2013 22:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_news]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_news] 
	-- Add the parameters for the stored procedure here
	@id int
	,@title nvarchar(500) 
   ,@seoUrl nvarchar(500) 
   ,@detail nvarchar(max) 
   ,@description nvarchar(500) = NULL
   ,@categoryId int 
   ,@published bit 
   ,@metaTag nvarchar(500) = NULL
   ,@metaTitle nvarchar(500) = NULL
   ,@metaKeyword nvarchar(500) = NULL
   ,@viewCount int 
   ,@likeCount int 
   ,@newsImage varchar(500) 
   ,@relatedNewsIds varchar(500) = NULL
   ,@ishot bit
   ,@sortorder int
   ,@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF EXISTS (SELECT TOP(1) * FROM sony_news WHERE [id]=@id)
    BEGIN
		UPDATE [sony_news]
		   SET [title] = @title
			  ,[seoUrl] = @seoUrl
			  ,[detail] = @detail
			  ,[categoryId] = @categoryId
			  ,[published] = @published
			  ,[metaTag] = @metaTag
			  ,[metaTitle] = @metaTitle
			  ,[metaKeyword] = @metaKeyword
			  ,[viewCount] = @viewCount
			  ,[likeCount] = @likeCount
			  ,[newsImage] = @newsImage
			  ,[relatedNewsIds] = @relatedNewsIds
			  ,[description] = @description
			  ,[ishot] = @ishot
			  ,[sortorder] = @sortorder
			  ,[updated] = GETDATE()
		 WHERE [id]=@id
    END
	
     SET @returnVal = 1;
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_news_by_list_category_id]    Script Date: 12/19/2013 22:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_news_by_list_category_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_news_by_list_category_id]
	-- Add the parameters for the stored procedure here
	@categoryIds varchar(500),
	@pageNum int = NULL,
	@pageSize int  = NULL,
	@order int = NULL,
	@orderBy nvarchar(50),
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    DECLARE @direction nvarchar(4);
	DECLARE @totalPage int = 0;
	DECLARE @from int = 0;
	DECLARE @to int = @from + @pageSize;
	DECLARE @totalBlock int = 1;
	DECLARE @sql nvarchar(max);
	DECLARE @condition nvarchar(500) = '' 1=1 '';
	
	
	IF @order = NULL OR @order = 1
		BEGIN
			SET @direction = ''ASC'';
		END
    ELSE
		BEGIN
			SET @direction = ''DESC'';	
		END
	
	IF @orderBy = NULL
	BEGIN
		SET @orderBy = ''[id]'';
	END
	
	-- remove unexpected 
	IF LEN(@categoryIds) = 1 AND @categoryIds = '',''
	BEGIN
		SET @categoryIds = ''0'';
	END
	SET @categoryIds = REPLACE(@categoryIds, '',,'','''');
	
	SET @condition = @condition + '' AND categoryId IN ('' + @categoryIds + '')'';
	
	DECLARE @myList AS TABLE (value int);
	DECLARE @total int = LEN(@categoryIds);
	DECLARE @temp int;
	DECLARE @n int = 1;
	WHILE @total > 0
	BEGIN
		IF CHARINDEX('','', @categoryIds, 1) > 0
		BEGIN
			SET @temp = (SELECT SUBSTRING(@categoryIds , @n, CHARINDEX( '','', @categoryIds, 1 ) - 1 ));
		END
		ELSE
		BEGIN
			SET @temp = @categoryIds;
		END
		IF CONVERT(int,@temp) <> 0
		BEGIN
			INSERT INTO @myList ([value]) VALUES(CONVERT(int,@temp));		
		END
		SET @n = @n + 2;
		SET @total = @total - 1;
	END
	SET @returnVal = (SELECT COUNT(1) FROM sony_news WHERE [categoryId] IN (SELECT value FROM @myList));
	SET @totalPage = (SELECT COUNT(1) FROM sony_news)
	IF @totalPage > 0
	BEGIN
		IF @totalPage <= @pageSize
		BEGIN
			SET @from = 0;
			SET @to = @from + @pageSize;
		END
		ELSE
		BEGIN
			SET @totalBlock = @totalPage / @pageSize;
			IF @totalBlock = 0
			BEGIN
				SET @from = 0;
				SET @to = @from + @pageSize;
			END
			ELSE
			BEGIN
				SET @totalBlock = @totalBlock + 1;
				IF @pageNum > @totalBlock
				BEGIN
					SET @pageNum = @totalBlock;
				END
				SET @from = @pageNum * @pageSize;
				SET @to = @from + @pageSize;
			END
		END
			
		--SET @sql = 
		--''WITH MyQuery AS (SELECT ROW_NUMBER() OVER (ORDER BY '' + @orderBy + '' '' + @direction + '' ) as num,* FROM sony_news 
		--WHERE '' + @condition + '')
		--SELECT * FROM MyQuery
		--WHERE MyQuery.[num] > '' + CONVERT(nvarchar,@from) + '' AND MyQuery.[num] <= '' + CONVERT(nvarchar,@to) + '';'';
		
		--EXEC (@sql);		
		IF @order = NULL OR @order = 1
			BEGIN
				WITH MyQuery AS (SELECT ROW_NUMBER() OVER (ORDER BY   @orderBy  ASC ) as num,* FROM sony_news 
				WHERE [categoryId] IN (SELECT value FROM @myList))
				SELECT * FROM MyQuery
				WHERE MyQuery.[num] > CONVERT(nvarchar,@from)  AND MyQuery.[num] <= CONVERT(nvarchar,@to) 
				ORDER BY MyQuery.[sortOrder] ASC
			END
		ELSE
			BEGIN
				WITH MyQuery AS (SELECT ROW_NUMBER() OVER (ORDER BY   @orderBy  DESC ) as num,* FROM sony_news 
				WHERE [categoryId] IN (SELECT value FROM @myList))
				SELECT * FROM MyQuery
				WHERE MyQuery.[num] > CONVERT(nvarchar,@from)  AND MyQuery.[num] <= CONVERT(nvarchar,@to) 
				ORDER BY MyQuery.[sortOrder] ASC
			END
		
	END
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_news]    Script Date: 12/19/2013 22:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_news]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sony_sp_add_news] 
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
   ,@isHot bit = NULL
   ,@sortOrder int = NULL
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
           ,[isHot]
           ,[sortOrder]
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
           ,@isHot
           ,@sortOrder
           ,GETDATE() 
           ,GETDATE() );
     SET @returnVal = (SELECT @@IDENTITY);
END' 
END
GO
