USE [sony_rebuild_alpha]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_menu]    Script Date: 11/20/2013 22:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		ndl0986
-- Create date: 2013-11-06 20:10:00
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[sony_sp_update_menu]
	-- Add the parameters for the stored procedure here
	@name nvarchar(100),
	@isparent bit,
	@parentId int,
	@seoUrl nvarchar(500),
	@isadmin bit,
	@visible bit,
	@order int,
	@updated datetime,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
    IF EXISTS (SELECT TOP (1) * FROM sony_menu WHERE name=@name)
    BEGIN
		UPDATE [sony_rebuild_alpha].[dbo].[sony_menu]
		   SET [isparent] = @isparent
			  ,[parentid] = @parentId
			  ,[seoUrl] = @seoUrl
			  ,[isadmin] = @isadmin
			  ,[visible] = @visible
			  ,[order] = @order
			  ,[updated] = @updated
		 WHERE [name]=@name
		 SET @returnVal = (SELECT @@IDENTITY);
	END
END

