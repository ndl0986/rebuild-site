USE [sony_rebuild_alpha]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_album]    Script Date: 11/23/2013 12:12:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[sony_sp_update_album] 
	-- Add the parameters for the stored procedure here
	@id int,
	@fullname nvarchar(500), 
	@albumCreator nvarchar(50) = 'admin',
	@albumImage nvarchar(500),
	@viewCount int = 0,
	@albumType int = NULL,
	@albumCover nvarchar(500) = NULL,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF EXISTS (SELECT TOP(1) * FROM sony_album WHERE [id]=@id)
    BEGIN
		UPDATE sony_album 
		SET
			[fullname] = @fullname, 
			[albumCreator] = @albumCreator, 
			[albumImage] = @albumImage, 
			[viewCount] = @viewCount, 
			[albumType] = @albumType,
			[albumCover] = @albumCover,
			[updated] = GETDATE()
		WHERE [id]=@id
		SET @returnVal = 1;
	END
END
