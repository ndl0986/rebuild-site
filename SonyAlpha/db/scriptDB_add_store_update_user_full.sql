USE [sony_rebuild_alpha_test]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_full]    Script Date: 11/27/2013 00:11:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		ndl0986
-- Create date: 2013/11/05 20:33:00
-- Description:	Store to update user to db
--				Support web to update user when they change their information
-- Return : return indentity 1 if add OK and return 0 if NOT OK
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_user_full]
	-- Add the parameters for the stored procedure here
	@username nvarchar (50),
	@password varchar(200),
	@fullname nvarchar (200),
	@status bit,
	@groupid int,
	@phone varchar(20),
	@email varchar(150),
	@productused varchar(200),
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP (1) username FROM sony_user WHERE username=@username)
	BEGIN
		UPDATE sony_user 
		SET
			[fullname] = @fullname, 
			[status] = @status, 
			[updated] = GETDATE(),
			[groupId] = @groupid,
			[phone] = @phone,
			[email] = @email,
			[password] = @password,
			[productused] = @productused
		WHERE 
			[username] = @username
		SET @returnVal = 1;
	END
END

GO


