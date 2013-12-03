USE [sony_rebuild_alpha_test]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_add_user_return_code]    Script Date: 12/03/2013 22:10:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		ndl0986
-- Create date: 2013/11/05 20:33:00
-- Description:	Store to add new user to db
--				Support web to add user when they regist as member
-- Return : return indentity <> 0 if add OK and return 0 if NOT OK
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_user_return_code]
	-- Add the parameters for the stored procedure here
	@username nvarchar (50),
	@password nvarchar (50),
	@fullname nvarchar (200),
	@status bit,
	@phone varchar(20),
	@email varchar(150),
	@productused nvarchar(200) = NULL,
	@indentity int OUTPUT,
	@errorcode varchar(3) OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @indentity = 0;
	SET @errorcode = '';
    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP (1) username FROM sony_user WHERE username=@username OR [email]=@email) AND RTRIM(LTRIM(@username)) <> ''
		BEGIN			
			DECLARE @defaultGroupId int;
			SET @defaultGroupId = (SELECT TOP(1) [id] FROM sony_user_group WHERE [issuper]=0);
			INSERT INTO sony_user ([username], [password], [fullname], [status], [registered], [updated], [groupId], [phone], [email], [productused])
			VALUES (@username, @password, @fullname, @status, GETDATE(), GETDATE(), @defaultGroupId, @phone, @email, @productused);
			SET @indentity = (SELECT @@IDENTITY)
		END
	ELSE
		BEGIN
			IF EXISTS (SELECT TOP(1) username FROM sony_user WHERE username=@username)
				BEGIN
					SET @errorcode = '901';
				END
			ELSE
				BEGIN
					IF EXISTS (SELECT TOP(1) username FROM sony_user WHERE [email]=@email)
						BEGIN
							SET @errorcode = '902';
						END
					ELSE
						BEGIN
							SET @errorcode = '900';
						END
				END
		END	
END



GO


