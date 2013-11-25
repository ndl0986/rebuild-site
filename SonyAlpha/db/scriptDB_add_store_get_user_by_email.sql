USE [sony_rebuild_alpha_test]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_by_email]    Script Date: 11/25/2013 19:45:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		ndl0986
-- Create date: 2013/11/05 20:33:00
-- Description:	Store to search user by email
-- Return : return user information
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_user_by_email]
	-- Add the parameters for the stored procedure here
	@email nvarchar (150)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM sony_user WHERE [email]=@email;
END



GO


