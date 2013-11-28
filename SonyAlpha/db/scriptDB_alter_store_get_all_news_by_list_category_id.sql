--USE [sony_rebuild_alpha_test]
--GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_news_by_list_category_id]    Script Date: 11/29/2013 00:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[sony_sp_get_all_news_by_list_category_id]
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
	DECLARE @condition nvarchar(500) = ' 1=1 ';
	
	
	IF @order = NULL OR @order = 1
		BEGIN
			SET @direction = 'ASC';
		END
    ELSE
		BEGIN
			SET @direction = 'DESC';	
		END
	
	IF @orderBy = NULL
	BEGIN
		SET @orderBy = '[id]';
	END
	
	-- remove unexpected 
	IF LEN(@categoryIds) = 1 AND @categoryIds = ','
	BEGIN
		SET @categoryIds = '0';
	END
	SET @categoryIds = REPLACE(@categoryIds, ',,','');
	
	SET @condition = @condition + ' AND categoryId IN (' + @categoryIds + ')';
	
	DECLARE @myList AS TABLE (value int);
	DECLARE @total int = LEN(@categoryIds);
	DECLARE @temp int;
	DECLARE @n int = 1;
	WHILE @total > 0
	BEGIN
		IF CHARINDEX(',', @categoryIds, 1) > 0
		BEGIN
			SET @temp = (SELECT SUBSTRING(@categoryIds , @n, CHARINDEX( ',', @categoryIds, 1 ) - 1 ));
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
			
		SET @sql = 
		'WITH MyQuery AS (SELECT ROW_NUMBER() OVER (ORDER BY ' + @orderBy + ' ' + @direction + ' ) as num,* FROM sony_news 
		WHERE ' + @condition + ')
		SELECT * FROM MyQuery
		WHERE MyQuery.[num] > ' + CONVERT(nvarchar,@from) + ' AND MyQuery.[num] <= ' + CONVERT(nvarchar,@to) + ';';
		
		EXEC (@sql);		
	END
END


