USE [sony_rebuild_alpha]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_add_permission]    Script Date: 11/08/2013 23:29:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		ndl0986
-- Create date: 2013-11-08 23:19:00
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_permission] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(150), 
	@allowinsert bit,
	@allowupdate bit,
	@allowdelete bit,
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
	IF NOT EXISTS (SELECT TOP (1) name FROM sony_permission WHERE name=@name)
	BEGIN
		SET @created = GETDATE();
		IF @updated = NULL
		BEGIN
			SET @updated = GETDATE();
		END	
		IF @allowinsert = NULL
		BEGIN
			SET @allowinsert = 0;
		END	
		IF @allowupdate = NULL
		BEGIN
			SET @allowupdate = 0;
		END	
		IF @allowdelete = NULL
		BEGIN
			SET @allowdelete = 0;
		END	
		INSERT INTO sony_permission ([name], [allowinsert], [allowupdate], [allowdelete], [created], [updated])
		VALUES (@name, @allowinsert, @allowupdate, @allowdelete, @created, @updated);
		SET @returnVal = (SELECT @@IDENTITY)
	END
END

GO

