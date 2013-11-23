USE [sony_rebuild_alpha]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_sony_center_by_id]    Script Date: 11/23/2013 12:22:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[sony_sp_get_sony_center_by_id] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT sc.*,sa.albumCover as SonyCenterCover FROM sony_center sc
	INNER JOIN sony_album sa
	ON sa.id = sc.centerImage
	WHERE sc.[id]=@id;
END
