USE [sony_rebuild_alpha]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_setting]    Script Date: 11/13/2013 00:27:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_setting]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_setting]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_setting]    Script Date: 11/13/2013 00:27:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_setting]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_setting]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_setting_by_id]    Script Date: 11/13/2013 00:27:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_setting_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_setting_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_setting_by_name]    Script Date: 11/13/2013 00:27:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_setting_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_setting_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_setting]    Script Date: 11/13/2013 00:27:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_setting]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_setting]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_setting]    Script Date: 11/13/2013 00:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_setting]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_setting] 
	-- Add the parameters for the stored procedure here
	@name varchar(50) = '''', 
	@value varchar(150) = '''',
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP(1) * FROM sony_setting WHERE [name]=@name)
	BEGIN
		UPDATE sony_setting
		SET
			[value] = @value,
			[updated] = GETDATE()
		WHERE [name]=@name
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_setting_by_name]    Script Date: 11/13/2013 00:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_setting_by_name]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_setting_by_name]
	-- Add the parameters for the stored procedure here
	@name varchar(50) = ''''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT TOP(1) [value] FROM sony_setting WHERE [name]=@name;
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_setting_by_id]    Script Date: 11/13/2013 00:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_setting_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_setting_by_id]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT TOP(1) [value] FROM sony_setting WHERE [id]=@id;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_setting]    Script Date: 11/13/2013 00:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_setting]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_setting] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT * FROM sony_setting;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_setting]    Script Date: 11/13/2013 00:27:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_setting]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_setting] 
	-- Add the parameters for the stored procedure here
	@name varchar(50) = '''', 
	@value varchar(150) = '''',
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP(1) * FROM sony_setting WHERE [name]=@name)
	BEGIN
		INSERT INTO sony_setting ([name], [value], [created], [updated])
		VALUES (@name, @value, GETDATE(), GETDATE());
		SET @returnVal = (SELECT @@IDENTITY);
	END
END
' 
END
GO
