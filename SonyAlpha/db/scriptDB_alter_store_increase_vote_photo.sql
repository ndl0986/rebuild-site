--USE [sony_rebuild_alpha_test]
--GO
/****** Object:  StoredProcedure [dbo].[sony_sp_increase_photo_vote_count]    Script Date: 12/04/2013 22:51:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[sony_sp_increase_photo_vote_count]
	-- Add the parameters for the stored procedure here
	@id int,
	@username varchar(50),
	@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF NOT EXISTS (SELECT * FROM sony_photo_vote WHERE username=@username AND CHARINDEX(RTRIM(LTRIM(CONVERT(varchar(3),@id))),[photoIds]) > 0)
    BEGIN
		IF EXISTS (SELECT TOP(1) * FROM sony_photo WHERE [id]=@id)
		BEGIN
			UPDATE sony_photo
			SET
				[voteCount] = [voteCount] + 1,
				[updated] = GETDATE()
			WHERE [id]=@id;
			
			IF NOT EXISTS (SELECT * FROM sony_photo_vote WHERE username=@username)
				BEGIN
					INSERT INTO [sony_photo_vote] (username, photoIds)
					VALUES (@username, @id);
				END
			ELSE
				BEGIN
					UPDATE [sony_photo_vote]
					SET 
						[photoIds] = RTRIM(LTRIM([photoIds] + ',' + CONVERT(varchar,@id)))
					WHERE username=@username;
				END
			SET @returnVal = 1;
		END
	END
END
