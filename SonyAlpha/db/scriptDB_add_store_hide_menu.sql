USE [sony_rebuild_alpha]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_hide_menu]    Script Date: 11/06/2013 20:25:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		ndl0986
-- Create date: 2013-11-06 20:14:00
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_hide_menu] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(100),
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP (1) * FROM sony_menu WHERE [name]=@name)
	BEGIN
		UPDATE sony_menu
		SET 
			[updated] = GETDATE(),
			[visible] = 0
		WHERE [name]=@name
		SET @returnVal = 1
	END
END

GO

