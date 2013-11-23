USE [sony_rebuild_alpha]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_update_album]    Script Date: 11/23/2013 17:28:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_album_comment] 
	-- Add the parameters for the stored procedure here
	@id int,
	@comment nvarchar(max),
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF EXISTS (SELECT TOP(1) * FROM sony_album_comment WHERE [id]=@id)
    BEGIN
		UPDATE sony_album_comment
		SET
			[comment] = @comment
		WHERE [id]=@id
		SET @returnVal = 1;
	END
END

GO


