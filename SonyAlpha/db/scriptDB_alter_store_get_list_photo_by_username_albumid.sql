USE [sony_rebuild_alpha_test]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_photo_by_username_albumid]    Script Date: 11/26/2013 21:14:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[sony_sp_get_all_photo_by_username_albumid] 
	-- Add the parameters for the stored procedure here
	@userupload varchar(50),
	@albumid int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    DECLARE @sql nvarchar(max);
    DECLARE @listIds varchar(500);
    
    SET @listIds = (SELECT albumImage FROM sony_album WHERE [id]=@albumid);
    IF RTRIM(LTRIM(@listIds)) <> ''
    BEGIN
		SET @sql = '
			SELECT * FROM sony_photo WHERE [userupload]=' + @userupload + ' AND [id] IN (' + @listIds + ');
		';		
		EXEC (@sql)
	END
END


