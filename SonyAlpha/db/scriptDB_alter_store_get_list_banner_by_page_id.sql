USE [sony_rebuild_alpha]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_list_banner_by_page_id]    Script Date: 11/21/2013 00:08:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[sony_sp_get_list_banner_by_page_id] 
	-- Add the parameters for the stored procedure here
	@pageId int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--SELECT * FROM sony_page_banner WHERE [pageId]=@pageId;
	SELECT sb.* FROM sony_banner sb 
	INNER JOIN sony_page_banner spb ON spb.bannerId = sb.id
	WHERE spb.pageId = @pageId
END
