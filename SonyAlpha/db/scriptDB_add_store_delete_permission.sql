USE [sony_rebuild_alpha]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_delete_permission]    Script Date: 11/09/2013 22:15:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_permission] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(150),
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT * FROM sony_permission WHERE [name]=@name)
	BEGIN
		DELETE FROM sony_permission
		WHERE [name]=@name
		SET @returnVal = 1;
	END
END


GO

