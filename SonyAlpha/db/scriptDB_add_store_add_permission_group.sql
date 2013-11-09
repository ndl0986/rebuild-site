USE [sony_rebuild_alpha]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_add_permission_group]    Script Date: 11/09/2013 15:23:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_permission_group] 
	-- Add the parameters for the stored procedure here
	@groupId int,
	@permissionId int,
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
	IF NOT EXISTS (SELECT TOP (1) [id] FROM sony_permission_group WHERE [groupId]=@groupId AND [permissionId]=@permissionId)
	BEGIN
		SET @created = GETDATE();
		SET @updated = GETDATE();
		IF @groupId = NULL
		BEGIN 
			SET @groupId = 0;
		END
		IF @permissionId = NULL
		BEGIN 
			SET @permissionId = 0;
		END
		INSERT INTO sony_permission_group ([groupId], [permissionId], [created], [updated])
		VALUES (@groupId, @permissionId, @created, @updated)
		SET @returnVal = (SELECT @@IDENTITY)
	END
END

GO

