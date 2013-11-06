USE [sony_rebuild_alpha]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_search_user_by_username]    Script Date: 11/06/2013 23:45:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_search_user_by_username]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_search_user_by_username]
GO

USE [sony_rebuild_alpha]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_search_user_by_username]    Script Date: 11/06/2013 23:45:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		ndl0986
-- Create date: 2013/11/05 20:33:00
-- Description:	Store to search user by username
-- Return : return user information
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_user_by_username]
	-- Add the parameters for the stored procedure here
	@username nvarchar (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM sony_user WHERE [username]=@username;
END


GO


