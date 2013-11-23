USE [sony_rebuild_alpha]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_album]    Script Date: 11/23/2013 12:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[sony_sp_add_album] 
	-- Add the parameters for the stored procedure here
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
    IF NOT EXISTS (SELECT TOP(1) * FROM sony_album WHERE [fullname]=@fullname)
    BEGIN
		INSERT INTO sony_album 
		([fullname], [albumCreator], [albumImage], [viewCount], [albumType], [albumCover], [created], [updated])
		VALUES (@fullname, @albumCreator, @albumImage, @viewCount, @albumType, @albumCover, GETDATE(), GETDATE());
		SET @returnVal = (SELECT @@IDENTITY);
	END
END
