USE [sony_rebuild_alpha]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_get_current_max_id]    Script Date: 11/12/2013 22:38:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_current_max_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_current_max_id]
GO

USE [sony_rebuild_alpha]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_get_current_max_id]    Script Date: 11/12/2013 22:38:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_current_max_id] 
	-- Add the parameters for the stored procedure here
	@tableName nvarchar(128) = '', 
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @returnVal = (SELECT IDENT_CURRENT(@tableName))
END


GO

