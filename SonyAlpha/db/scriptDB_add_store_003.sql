--USE [sony_rebuild_alpha_test]
--GO

/****** Object:  StoredProcedure [dbo].[sony_sp_increase_news_view_count]    Script Date: 12/06/2013 00:02:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_increase_news_view_count]
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF EXISTS (SELECT TOP(1) * FROM sony_news WHERE [id]=@id)
	BEGIN
		UPDATE sony_news
		SET
			[viewCount] = [viewCount] + 1,
			[updated] = GETDATE()
		WHERE [id]=@id;
		SET @returnVal = 1;
	END
END

GO


