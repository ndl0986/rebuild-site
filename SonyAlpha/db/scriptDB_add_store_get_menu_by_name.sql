USE [sony_rebuild_alpha]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_get_menu_by_name]    Script Date: 11/06/2013 20:54:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		ndl0986
-- Create date: 2013-11-06 20:47:00
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_menu_by_name] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [id]
      ,[name]
      ,[isparent]
      ,[parentid]
      ,[seoUrl]
      ,[isadmin]
      ,[visible]
      ,[order]
      ,[created]
      ,[updated]
  FROM [sony_rebuild_alpha].[dbo].[sony_menu]
  WHERE [name] = @name
END

GO

