--USE [sony_rebuild_alpha_test]
--GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_user]    Script Date: 12/15/2013 14:37:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_user]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_user_return_code]    Script Date: 12/15/2013 14:37:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_user_return_code]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_user_return_code]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user]    Script Date: 12/15/2013 14:37:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_user]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_full]    Script Date: 12/15/2013 14:37:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user_full]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_user_full]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_full]    Script Date: 12/15/2013 14:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user_full]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



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
	@avatar varchar(500),
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
			[productused] = @productused,
			[avartar] = @avatar
		WHERE 
			[username] = @username
		SET @returnVal = 1;
	END
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user]    Script Date: 12/15/2013 14:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


-- =============================================
-- Author:		ndl0986
-- Create date: 2013/11/05 20:33:00
-- Description:	Store to update user to db
--				Support web to update user when they change their information
-- Return : return indentity 1 if add OK and return 0 if NOT OK
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_user]
	-- Add the parameters for the stored procedure here
	@username nvarchar (50),
	@fullname nvarchar (200),
	@status bit,
	@groupid int,
	@phone varchar(20),
	@email varchar(150),
	@avatar varchar(500) = NULL,
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
			[avartar] = @avatar
		WHERE 
			[username] = @username
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_user_return_code]    Script Date: 12/15/2013 14:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_user_return_code]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


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
	@avatar varchar(500),
	@indentity int OUTPUT,
	@errorcode varchar(3) OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @indentity = 0;
	SET @errorcode = '''';
    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP (1) username FROM sony_user WHERE username=@username OR [email]=@email) AND RTRIM(LTRIM(@username)) <> ''''
		BEGIN			
			DECLARE @defaultGroupId int;
			SET @defaultGroupId = (SELECT TOP(1) [id] FROM sony_user_group WHERE [issuper]=0);
			INSERT INTO sony_user ([username], [password], [fullname], [status], [registered], [updated]
				, [groupId], [phone], [email], [productused], [avartar])
			VALUES (@username, @password, @fullname, @status, GETDATE(), GETDATE()
				, @defaultGroupId, @phone, @email, @productused, @avatar);
			SET @indentity = (SELECT @@IDENTITY)
		END
	ELSE
		BEGIN
			IF EXISTS (SELECT TOP(1) username FROM sony_user WHERE username=@username)
				BEGIN
					SET @errorcode = ''901'';
				END
			ELSE
				BEGIN
					IF EXISTS (SELECT TOP(1) username FROM sony_user WHERE [email]=@email)
						BEGIN
							SET @errorcode = ''902'';
						END
					ELSE
						BEGIN
							SET @errorcode = ''900'';
						END
				END
		END	
END



' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_user]    Script Date: 12/15/2013 14:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_user]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		ndl0986
-- Create date: 2013/11/05 20:33:00
-- Description:	Store to add new user to db
--				Support web to add user when they regist as member
-- Return : return indentity <> 0 if add OK and return 0 if NOT OK
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_user]
	-- Add the parameters for the stored procedure here
	@username nvarchar (50),
	@password nvarchar (50),
	@fullname nvarchar (200),
	@status bit,
	@phone varchar(20),
	@email varchar(150),
	@productused nvarchar(200) = NULL,
	@avatar varchar(500),
	@indentity int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @indentity = 0;
    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP (1) username FROM sony_user WHERE username=@username OR [email]=@email) AND RTRIM(LTRIM(@username)) <> ''''
	BEGIN
		
		DECLARE @defaultGroupId int;
		SET @defaultGroupId = (SELECT TOP(1) [id] FROM sony_user_group WHERE [issuper]=0);
		INSERT INTO sony_user ([username], [password], [fullname], [status], [registered], [updated]
			, [groupId], [phone], [email], [productused], [avartar])
		VALUES (@username, @password, @fullname, @status, GETDATE(), GETDATE()
			, @defaultGroupId, @phone, @email, @productused, @avatar);
		SET @indentity = (SELECT @@IDENTITY)
	END
END


' 
END
GO
