USE [sony_rebuild_alpha]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_group]    Script Date: 11/09/2013 23:36:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_permission_of_group] 
	-- Add the parameters for the stored procedure here
	@groupId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT sp.* FROM sony_permission_group spg 
	INNER JOIN sony_permission sp
	ON spg.permissionId = sp.id 
	WHERE spg.id = @groupId
END


GO

