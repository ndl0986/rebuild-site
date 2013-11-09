USE [sony_rebuild_alpha]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_add_page_menu_permission]    Script Date: 11/09/2013 16:57:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_page_menu_permission] 
	-- Add the parameters for the stored procedure here
	@permissionGroup int, 
	@menuPageId int,
	@isPage bit,
	@created datetime,
	@updated datetime,
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT * FROM sony_page_menu_permission WHERE [permissionGroup]=@permissionGroup AND [menuPageId]=@menuPageId)
	BEGIN
		SET @created = GETDATE();
		SET @updated = GETDATE();
		IF @permissionGroup != 0 AND @menuPageId != 0
		BEGIN
			INSERT INTO sony_page_menu_permission ([permissionGroup], [menuPageId], [isPage], [created], [updated])
			VALUES (@permissionGroup, @menuPageId, @isPage, @created, @updated)
			SET @returnVal = (SELECT @@IDENTITY)
		END
	END
END

GO

