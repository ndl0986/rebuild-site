USE [sony_rebuild_alpha]
GO

/****** Object:  StoredProcedure [dbo].[sony_sp_add_menu]    Script Date: 11/06/2013 20:11:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		ndl0986
-- Create date: 2013-11-06 19:51:00
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_menu] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(100),
	@isparent bit,
	@parentId int,
	@seoUrl nvarchar(500),
	@isadmin bit,
	@visible bit,
	@order int,
	@created datetime,
	@updated datetime,
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP (1) * FROM sony_menu WHERE [name]=@name)
	BEGIN
		SET @created = GETDATE();
		IF @updated = NULL
		BEGIN
			SET @updated = GETDATE();
		END
		IF @isparent = NULL
		BEGIN
			SET @isparent = 0;
		END
		IF @parentId = NULL
		BEGIN
			SET @parentId = 0;
		END
		IF @isadmin = NULL
		BEGIN
			SET @isadmin = 0;
		END
		IF @visible = NULL
		BEGIN
			SET @visible = 0;
		END
		IF @order = NULL
		BEGIN
			SET @order = 0;
		END
		INSERT INTO [sony_rebuild_alpha].[dbo].[sony_menu]
           ([name]
           ,[isparent]
           ,[parentid]
           ,[seoUrl]
           ,[isadmin]
           ,[visible]
           ,[order]
           ,[created]
           ,[updated])
		VALUES
           (@name
           ,@isparent
           ,@parentId
           ,@seoUrl
           ,@isadmin
           ,@visible
           ,@order
           ,@created
           ,@updated)
        SET @returnVal = (SELECT @@IDENTITY)
	END
END

GO

