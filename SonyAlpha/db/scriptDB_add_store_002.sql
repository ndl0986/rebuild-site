--USE [sony_rebuild_alpha_test]
--GO

/****** Object:  StoredProcedure [dbo].[sony_sp_check_if_vote]    Script Date: 12/05/2013 23:29:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_check_if_vote] 
	-- Add the parameters for the stored procedure here
	@photoId int,
	@username varchar(50),
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP(1) * FROM sony_photo_vote WHERE [username]=@username 
	AND CHARINDEX(RTRIM(LTRIM(CONVERT(varchar(5),@photoId))),[photoIds]) > 0)
	BEGIN
		SET @returnVal = 1;
	END
END

GO


