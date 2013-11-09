USE [sony_rebuild_alpha]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_update_permission]    Script Date: 11/09/2013 14:30:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		ndl0986
-- Create date: 2013-11-08 23:31:00
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_permission] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(150), 
	@allowinsert bit,
	@allowupdate bit,
	@allowdelete bit,
	@updated datetime,
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP (1) name FROM sony_permission WHERE name=@name)
	BEGIN
		SET @updated = GETDATE();
		UPDATE sony_permission
		SET
			[allowupdate] = @allowupdate,
			[allowinsert] = @allowinsert,
			[allowdelete] = @allowdelete
		WHERE [name]=@name
		SET @returnVal = 1;
	END
END

GO

