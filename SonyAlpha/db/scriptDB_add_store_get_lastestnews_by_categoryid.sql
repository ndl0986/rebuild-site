USE [sony_rebuild_alpha_test]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_get_lastest_news]    Script Date: 11/30/2013 01:03:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_lastest_news_by_categoryid]
	-- Add the parameters for the stored procedure here
	@num int,
	@categoryId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT TOP(@num) * FROM sony_news WHERE published=1 AND [categoryId]=@categoryId ORDER BY id DESC;
END


GO


