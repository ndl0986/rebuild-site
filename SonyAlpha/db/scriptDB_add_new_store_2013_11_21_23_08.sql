USE [sony_rebuild_alpha]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_category_child]    Script Date: 11/21/2013 23:06:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_category_child]
	-- Add the parameters for the stored procedure here
	@categoryId int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT * FROM sony_news_category WHERE [parentId]=@categoryId;
END
