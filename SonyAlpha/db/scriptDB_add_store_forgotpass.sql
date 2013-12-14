--USE [sony_rebuild_alpha_test]
--GO

/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_password_to_random]    Script Date: 12/14/2013 14:10:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[sony_sp_update_user_password_to_random] 
	-- Add the parameters for the stored procedure here
	@email nvarchar(50), 
	@randompass nvarchar(200),
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP(1) * FROM sony_user WHERE [email]=@email)
	BEGIN
		UPDATE sony_user
		SET 
			[password]=@randompass
		WHERE [email]=@email;
		SET @returnVal = 1;
	END
	ELSE
	BEGIN
		SET @returnVal = 2;
	END
END


GO


