USE [sony_rebuild_alpha]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_sony_center]    Script Date: 11/23/2013 11:41:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[sony_sp_add_sony_center] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(300)
   ,@address nvarchar(500) = NULL
   ,@phone nvarchar(50) = NULL
   ,@fax nvarchar(50) = NULL
   ,@province nvarchar(50) = NULL
   ,@description nvarchar(max) = NULL
   ,@retailLevel bit = 0
   ,@centerImage varchar(500) = NULL
   ,@opentime nvarchar(50) = NULL
   ,@closetime nvarchar(50) = NULL
   ,@longitude nvarchar(20) = NULL
   ,@latitude nvarchar(20) = NULL
   ,@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP(1) * FROM sony_center WHERE [name]=@name)
	BEGIN
		INSERT INTO [sony_rebuild_alpha].[dbo].[sony_center]
           ([name]
           ,[address]
           ,[phone]
           ,[fax]
           ,[province]
           ,[description]
           ,[retailLevel]
           ,[centerImage]
           ,[opentime]
           ,[closetime]
           ,[longitude]
           ,[latitude]
           ,[created]
           ,[updated])
     VALUES
           (@name
           ,@address
           ,@phone
           ,@fax
           ,@province
           ,@description
           ,@retailLevel
           ,@centerImage
           ,@opentime
           ,@closetime
           ,@longitude
           ,@latitude
           ,GETDATE()
           ,GETDATE());
           SET @returnVal = (SELECT @@IDENTITY);
	END
END
