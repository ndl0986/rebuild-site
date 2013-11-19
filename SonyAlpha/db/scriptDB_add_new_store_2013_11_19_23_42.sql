USE [sony_rebuild_alpha]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_news_with_pagenum_pagesize]    Script Date: 11/19/2013 23:34:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_news_with_pagenum_pagesize]
	-- Add the parameters for the stored procedure here
	@pageNum int = 0,
	@order int = NULL,
	@pageSize int = 20,
	@orderBy nvarchar(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @direction nvarchar(4);
	DECLARE @totalPage int = 0;
	DECLARE @from int = 0;
	DECLARE @to int = @from + @pageSize;
	DECLARE @totalBlock int = 1;
	DECLARE @sql nvarchar(max) = '';
	
    -- Insert statements for procedure here
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
		SET @orderBy = 'id';
	END
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
		
		SET @sql = 'WITH MyQuery AS (SELECT ROW_NUMBER() OVER (ORDER BY [' + @orderBy + '] ' + @direction + ' ) as num,* FROM sony_news)
		SELECT * FROM MyQuery
		WHERE MyQuery.[num] > ' + CONVERT(nvarchar,@from) + ' AND MyQuery.[num] <= ' + CONVERT(nvarchar,@to) + ';';
		
		EXEC (@sql);
	END
END




GO


