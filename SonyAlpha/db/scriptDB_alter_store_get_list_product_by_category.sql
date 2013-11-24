USE [sony_rebuild_alpha]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_product_by_category]    Script Date: 11/24/2013 20:49:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[sony_sp_get_all_product_by_category] 
	-- Add the parameters for the stored procedure here
	@categoryId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT sp.*,sa.albumCover AS ProductCover FROM sony_product sp
	LEFT JOIN sony_album sa 
	ON sa.id = sp.albumId
	WHERE sp.[categoryId]=@categoryId;
END

