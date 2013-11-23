USE [sony_rebuild_alpha]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_delete_album_comment_by_id]    Script Date: 11/23/2013 17:21:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_album_comment_by_id]
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF EXISTS( SELECT * FROM sony_album_comment WHERE [id]=@id)
    BEGIN
		BEGIN TRANSACTION
		
		DELETE FROM sony_album_comment
		WHERE [id]=@id;
		
		IF @@ERROR <> 0
		BEGIN
			ROLLBACK
			RETURN						
		END	
		
		COMMIT
		SET @returnVal = 1;
    END
END



GO


