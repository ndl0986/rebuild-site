--USE [sony_rebuild_alpha_test]
--GO

/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_sony_center_by_province]    Script Date: 12/04/2013 21:10:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_sony_center_by_province] 
	-- Add the parameters for the stored procedure here
	@provinceId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT sc.*,sa.albumCover AS SonyCenterCover, sp.province as ProvinceName FROM sony_center sc
	LEFT JOIN sony_album sa 
	ON sa.id = sc.centerImage
	LEFT JOIN sony_province sp
	ON sc.province = sp.id
	WHERE sp.[id] = @provinceId
END

GO


