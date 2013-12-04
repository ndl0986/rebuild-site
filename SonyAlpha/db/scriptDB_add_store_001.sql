--USE [sony_rebuild_alpha_test]
--GO

/****** Object:  StoredProcedure [dbo].[sony_sp_get_owner_of_photo]    Script Date: 12/04/2013 23:10:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_owner_of_photo] 
	-- Add the parameters for the stored procedure here
	@photoId int,
	@returnVal varchar(50) = '' OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @returnVal = (SELECT TOP(1) [userupload] FROM sony_photo WHERE [id]=@photoId);
	--IF @returnVal = NULL
	--BEGIN
	--	SET @returnVal = '';
	--END
END

GO


