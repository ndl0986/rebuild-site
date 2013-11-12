USE [sony_rebuild_alpha]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_menu_by_id]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_menu_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_menu_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_menu_by_name]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_menu_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_menu_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_id]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_page_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_page_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_num_order]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_page_by_num_order]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_page_by_num_order]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_num_order_size_col]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_page_by_num_order_size_col]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_page_by_num_order_size_col]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_title]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_page_by_title]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_page_by_title]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_by_id]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_permission_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_by_name]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_permission_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_group]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_of_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_permission_of_group]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_menu_or_page_by_id]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_of_menu_or_page_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_permission_of_menu_or_page_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_menu_or_page_by_name]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_of_menu_or_page_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_permission_of_menu_or_page_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_by_username]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_user_by_username]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_user_by_username]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_group_by_id]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_user_group_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_user_group_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_hide_menu]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_hide_menu]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_hide_menu]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_banner]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_banner]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner_photo]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_banner_photo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_banner_photo]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner_type]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_banner_type]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_banner_type]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_menu]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_menu]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_menu]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_page_by_id]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_page_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_page_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_page_by_title]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_page_by_title]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_page_by_title]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_permission]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_permission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_permission]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_user]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_group]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_user_group]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_banner]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_banner]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner_photo]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_banner_photo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_banner_photo]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner_type]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_banner_type]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_banner_type]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_menu]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_menu]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_menu]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_page]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_page]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_page]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_page_menu_permission]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_page_menu_permission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_page_menu_permission]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_permission]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_permission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_permission]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_permission_group]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_permission_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_permission_group]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_user]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_user]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_user_group]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_user_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_user_group]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_deactive_user]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_deactive_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_deactive_user]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_banner_photo_by_banner_id]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_banner_photo_by_banner_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_banner_photo_by_banner_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_banner_photo_by_banner_photo_id]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_banner_photo_by_banner_photo_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_banner_photo_by_banner_photo_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_page_menu_permission]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_page_menu_permission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_page_menu_permission]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_permission]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_permission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_permission]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_permission_group]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_permission_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_permission_group]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_banner]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_banner]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_banner]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_banner_type]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_banner_type]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_banner_type]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_menu]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_menu]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_menu]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_page]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_page]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_page]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_permission]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_permission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_permission]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_user]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_user]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_user_group]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_user_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_user_group]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_by_id]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_banner_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_banner_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_photo_by_banner_id]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_banner_photo_by_banner_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_banner_photo_by_banner_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_type_by_id]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_banner_type_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_banner_type_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_type_by_name]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_banner_type_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_banner_type_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_current_max_id]    Script Date: 11/12/2013 20:36:52 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_current_max_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_current_max_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_current_max_id]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_current_max_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_current_max_id] 
	-- Add the parameters for the stored procedure here
	@tableName nvarchar(128) = '''', 
	@returnVal int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @returnVal = (SELECT IDENT_CURRENT(@tableName))
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_type_by_name]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_banner_type_by_name]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		nld0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_banner_type_by_name]
	-- Add the parameters for the stored procedure here
	@name nvarchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM sony_banner_type WHERE [name]=@name
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_type_by_id]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_banner_type_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		nld0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_banner_type_by_id]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM sony_banner_type WHERE [id]=@id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_photo_by_banner_id]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_banner_photo_by_banner_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		nld0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_banner_photo_by_banner_id]
	-- Add the parameters for the stored procedure here	
	@bannerId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM sony_banner_photo WHERE [bannerId]=@bannerId
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_by_id]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_banner_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_banner_by_id]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT TOP (1) * FROM sony_banner WHERE [id]=@id;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_user_group]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_user_group]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 2013-11-07 22:35:00
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_user_group] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM sony_user_group
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_user]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_user]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 2013-11-07 22:23:00
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_user] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM sony_user
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_permission]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_permission]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 2013-11-09 14:34:00
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_permission] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM sony_permission
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_page]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_page]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_page] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM sony_page
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_menu]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_menu]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 2013-11-06 20:43:00
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_menu] 
	-- Add the parameters for the stored procedure here	
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
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_banner_type]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_banner_type]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		nld0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_banner_type]
	-- Add the parameters for the stored procedure here	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM sony_banner_type
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_banner]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_banner]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_banner] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM sony_banner
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_permission_group]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_permission_group]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_permission_group] 
	-- Add the parameters for the stored procedure here
	@groupId int = 0, 
	@permissionId int = 0,
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT @groupId, @permissionId FROM sony_permission_group WHERE [groupId]=@groupId AND [permissionId]=@permissionId)
	BEGIN
		DELETE FROM sony_permission_group
		WHERE [groupId]=@groupId AND [permissionId]=@permissionId
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_permission]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_permission]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_permission] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(150),
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT * FROM sony_permission WHERE [name]=@name)
	BEGIN
		DELETE FROM sony_permission
		WHERE [name]=@name
		SET @returnVal = 1;
	END
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_page_menu_permission]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_page_menu_permission]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_page_menu_permission] 
	-- Add the parameters for the stored procedure here
	@permissionGroup int, 
	@menuPageId int,
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP (1) * FROM sony_page_menu_permission WHERE [permissionGroup]=@permissionGroup AND [menuPageId]=@menuPageId)
	BEGIN
		DELETE FROM sony_page_menu_permission
		WHERE [permissionGroup]=@permissionGroup AND [menuPageId]=@menuPageId
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_banner_photo_by_banner_photo_id]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_banner_photo_by_banner_photo_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		nld0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_banner_photo_by_banner_photo_id]
	-- Add the parameters for the stored procedure here
	@bannerPhotoId int,
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP (1) * FROM sony_banner_photo WHERE [id]=@bannerPhotoId)
	BEGIN
		DELETE FROM sony_banner_photo
		WHERE [id]=@bannerPhotoId;
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_banner_photo_by_banner_id]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_banner_photo_by_banner_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		nld0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_banner_photo_by_banner_id]
	-- Add the parameters for the stored procedure here
	@bannerId int,
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP (1) * FROM sony_banner_photo WHERE [bannerId]=@bannerId)
	BEGIN
		DELETE FROM sony_banner_photo
		WHERE [bannerId]=@bannerId;
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_deactive_user]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_deactive_user]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 2013/11/05 20:33:00
-- Description:	Store to deactive user to db
--				Support web to update user when they change their information
-- Return : return indentity 1 if add OK and return 0 if NOT OK
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_deactive_user]
	-- Add the parameters for the stored procedure here
	@username nvarchar (50),
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP (1) username FROM sony_user WHERE username=@username)
	BEGIN
		UPDATE sony_user 
		SET 
			[status] = 0
		WHERE 
			[username] = @username
		SET @returnVal = 1;
	END
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_user_group]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_user_group]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


-- =============================================
-- Author:		ndl0986
-- Create date: 2013/11/05 20:33:00
-- Description:	Store to add user_group to db
-- Return : return indentity <> 0 if add OK and return 0 if NOT OK
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_user_group]
	-- Add the parameters for the stored procedure here
	@groupname nvarchar (50),
	@issuper bit,
	@created datetime,
	@updated datetime,
	@indentity int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @indentity = 0;
    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP (1) groupname FROM sony_user_group WHERE groupname=@groupname)
	BEGIN
		SET @created = GETDATE();
		IF @updated = NULL
		BEGIN
			SET @updated = GETDATE();
		END
		INSERT INTO sony_user_group ([groupname], [issuper], [created], [updated])
		VALUES (@groupname, @issuper, @created, @updated);
		SET @indentity = (SELECT @@IDENTITY)
	END
END



' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_user]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_user]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		ndl0986
-- Create date: 2013/11/05 20:33:00
-- Description:	Store to add new user to db
--				Support web to add user when they regist as member
-- Return : return indentity <> 0 if add OK and return 0 if NOT OK
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_user]
	-- Add the parameters for the stored procedure here
	@username nvarchar (50),
	@password nvarchar (50),
	@fullname nvarchar (200),
	@status bit,
	@registered datetime,
	@updated datetime,
	@indentity int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @indentity = 0;
    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP (1) username FROM sony_user WHERE username=@username)
	BEGIN
		SET @registered = GETDATE();
		IF @updated = NULL
		BEGIN
			SET @updated = GETDATE();
		END
		INSERT INTO sony_user ([username], [password], [fullname], [status], [registered], [updated])
		VALUES (@username, @password, @fullname, @status, @registered, @updated);
		SET @indentity = (SELECT @@IDENTITY)
	END
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_permission_group]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_permission_group]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_permission_group] 
	-- Add the parameters for the stored procedure here
	@groupId int,
	@permissionId int,
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
	IF NOT EXISTS (SELECT TOP (1) [id] FROM sony_permission_group WHERE [groupId]=@groupId AND [permissionId]=@permissionId)
	BEGIN
		SET @created = GETDATE();
		SET @updated = GETDATE();
		IF @groupId = NULL
		BEGIN 
			SET @groupId = 0;
		END
		IF @permissionId = NULL
		BEGIN 
			SET @permissionId = 0;
		END
		INSERT INTO sony_permission_group ([groupId], [permissionId], [created], [updated])
		VALUES (@groupId, @permissionId, @created, @updated)
		SET @returnVal = (SELECT @@IDENTITY)
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_permission]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_permission]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 2013-11-08 23:19:00
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_permission] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(150), 
	@allowinsert bit,
	@allowupdate bit,
	@allowdelete bit,
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
	IF NOT EXISTS (SELECT TOP (1) name FROM sony_permission WHERE name=@name)
	BEGIN
		SET @created = GETDATE();
		IF @updated = NULL
		BEGIN
			SET @updated = GETDATE();
		END	
		IF @allowinsert = NULL
		BEGIN
			SET @allowinsert = 0;
		END	
		IF @allowupdate = NULL
		BEGIN
			SET @allowupdate = 0;
		END	
		IF @allowdelete = NULL
		BEGIN
			SET @allowdelete = 0;
		END	
		INSERT INTO sony_permission ([name], [allowinsert], [allowupdate], [allowdelete], [created], [updated])
		VALUES (@name, @allowinsert, @allowupdate, @allowdelete, @created, @updated);
		SET @returnVal = (SELECT @@IDENTITY)
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_page_menu_permission]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_page_menu_permission]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_page_menu_permission] 
	-- Add the parameters for the stored procedure here
	@permissionGroup int, 
	@menuPageId int,
	@isPage bit,
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
	IF NOT EXISTS (SELECT * FROM sony_page_menu_permission WHERE [permissionGroup]=@permissionGroup AND [menuPageId]=@menuPageId)
	BEGIN
		SET @created = GETDATE();
		SET @updated = GETDATE();
		IF @permissionGroup != 0 AND @menuPageId != 0
		BEGIN
			INSERT INTO sony_page_menu_permission ([permissionGroup], [menuPageId], [isPage], [created], [updated])
			VALUES (@permissionGroup, @menuPageId, @isPage, @created, @updated)
			SET @returnVal = (SELECT @@IDENTITY)
		END
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_page]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_page]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_page] 
	-- Add the parameters for the stored procedure here
	@title nvarchar(300), 
	@longtitle nvarchar(500),
	@pageContent nvarchar(max),
	@isNews bit,
	@seoUrl nvarchar(500),
	@status bit,
	@creator nvarchar(50),
	@updator nvarchar(50),
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT * FROM sony_page WHERE [title]=@title)
	BEGIN
		DECLARE @created datetime = GETDATE();
		DECLARE @updated datetime = GETDATE();
		INSERT INTO sony_page ([title], [longtitle], [pageContent], [isNews], [seoUrl], [status], [created], [updated], [creator], [updator])
		VALUES (@title, @longtitle, @pageContent, @isNews, @seoUrl, @status, GETDATE(), GETDATE(), @creator, @updator)
		SET @returnVal = (SELECT @@IDENTITY)	
	END
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_menu]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_menu]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
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
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner_type]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_banner_type]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		nld0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_banner_type]
	-- Add the parameters for the stored procedure here
	@name nvarchar(200),
	@positionType int = 0,
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP (1) * FROM sony_banner_type WHERE [name]=@name)
	BEGIN
		INSERT INTO sony_banner_type ([name], [positionType], [created], [updated])
		VALUES (@name, @positionType, GETDATE(), GETDATE())
		SET @returnVal = (SELECT @@IDENTITY);
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner_photo]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_banner_photo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		nld0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_banner_photo] 
	-- Add the parameters for the stored procedure here
	@bannerId int, 
	@imageUrl nvarchar(500),
	@link2 nvarchar(500),
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP (1) * FROM sony_banner_photo WHERE [bannerId]=@bannerId AND [imageUrl]=@imageUrl)
	BEGIN
		INSERT INTO sony_banner_photo ([bannerId], [imageUrl], [link2], [created], [updated])
		VALUES (@bannerId, @imageUrl, @link2, GETDATE(), GETDATE());
		SET @returnVal = (SELECT @@IDENTITY);
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_banner]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_banner] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(300), 
	@visible bit,
	@bannerType int,
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP (1) * FROM sony_banner WHERE [name]=@name)
	BEGIN
		INSERT INTO sony_banner ([name], [visible], [bannerType], [created], [updated])
		VALUES (@name, @visible, @bannerType, GETDATE(), GETDATE());
		SET @returnVal = (SELECT @@IDENTITY)		
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_group]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user_group]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		ndl0986
-- Create date: 2013-11-07 22:38:00
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_user_group] 
	-- Add the parameters for the stored procedure here
	@id int,
	@groupname nvarchar(150),
	@issuper bit,
	@updated datetime,
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP (1) groupname FROM sony_user_group WHERE id=@id)
	BEGIN
		SET @updated = GETDATE();
		UPDATE sony_user_group
		SET 
			[groupname] = @groupname,
			[issuper] = @issuper,
			[updated] = @updated
		WHERE [id] = @id
		SET @returnVal = 1;
	END
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


-- =============================================
-- Author:		ndl0986
-- Create date: 2013/11/05 20:33:00
-- Description:	Store to update user to db
--				Support web to update user when they change their information
-- Return : return indentity 1 if add OK and return 0 if NOT OK
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_user]
	-- Add the parameters for the stored procedure here
	@username nvarchar (50),
	@password nvarchar (50),
	@fullname nvarchar (200),
	@status bit,
	@updated datetime,
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP (1) username FROM sony_user WHERE username=@username)
	BEGIN
		SET @updated = GETDATE();
		UPDATE sony_user 
		SET
			[password] = @password, 
			[fullname] = @fullname, 
			[status] = @status, 
			[updated] = @updated
		WHERE 
			[username] = @username
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_permission]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_permission]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 2013-11-08 23:31:00
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_permission] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(150), 
	@allowinsert bit,
	@allowupdate bit,
	@allowdelete bit,
	@updated datetime,
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP (1) name FROM sony_permission WHERE name=@name)
	BEGIN
		SET @updated = GETDATE();
		UPDATE sony_permission
		SET
			[allowupdate] = @allowupdate,
			[allowinsert] = @allowinsert,
			[allowdelete] = @allowdelete
		WHERE [name]=@name
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_page_by_title]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_page_by_title]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_page_by_title]
	-- Add the parameters for the stored procedure here
	
	@title nvarchar(300),
	@longtitle nvarchar(500),
	@pageContent nvarchar(max),
	@isNews bit,
	@seoUrl nvarchar(500),
	@status bit,
	@updator nvarchar(50),
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP (1) * FROM sony_page WHERE [title]=@title)
	BEGIN
		UPDATE sony_page
		SET 
			[longtitle] = @longtitle,
			[pageContent] = @pageContent,
			[isNews] = @isNews,
			[seoUrl] = @seoUrl,
			[status] = @status,
			[updated] = GETDATE(),
			[updator] = @updator
		WHERE [title]=@title
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_page_by_id]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_page_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_page_by_id] 
	-- Add the parameters for the stored procedure here
	@id int, 
	@title nvarchar(300),
	@longtitle nvarchar(500),
	@pageContent nvarchar(max),
	@isNews bit,
	@seoUrl nvarchar(500),
	@status bit,
	@updator nvarchar(50),
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP (1) * FROM sony_page WHERE [id]=@id)
	BEGIN
		UPDATE sony_page
		SET 
			[title] = @title,
			[longtitle] = @longtitle,
			[pageContent] = @pageContent,
			[isNews] = @isNews,
			[seoUrl] = @seoUrl,
			[status] = @status,
			[updated] = GETDATE(),
			[updator] = @updator
		WHERE [id]=@id
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_menu]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_menu]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 2013-11-06 20:10:00
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_menu]
	-- Add the parameters for the stored procedure here
	@name nvarchar(100),
	@isparent bit,
	@parentId int,
	@seoUrl nvarchar(500),
	@isadmin bit,
	@visible bit,
	@order int,
	@updated datetime,
	@returnVal int OUTPUT
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
		 SET @returnVal = (SELECT @@IDENTITY)
	END
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner_type]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_banner_type]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		nld0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_banner_type]
	-- Add the parameters for the stored procedure here	
	@id int,
	@name nvarchar(200),
	@positionType int = 0,
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT * FROM sony_banner_type WHERE [id]=@id)
	BEGIN
		UPDATE sony_banner_type
		SET 
			[name] = @name,
			[positionType] = @positionType,
			[updated] = GETDATE()
		WHERE [id]=@id
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner_photo]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_banner_photo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		nld0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_banner_photo]
	-- Add the parameters for the stored procedure here
	@bannerPhotoId int,
	@bannerId int,
	@imageUrl nvarchar(500),
	@link2 nvarchar(500),
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP (1) * FROM sony_banner_photo WHERE [id]=@bannerPhotoId)
	BEGIN
		UPDATE sony_banner_photo
		SET 
			[bannerId] = @bannerId,
			[imageUrl] = @imageUrl,
			[link2] = @link2,
			[updated] = GETDATE()
		WHERE [id]=@bannerPhotoId
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_banner]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_banner] 
	-- Add the parameters for the stored procedure here
	@id int,
	@name nvarchar(300), 
	@visible bit,
	@bannerType int,
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP (1) * FROM sony_banner WHERE [id]=@id)
	BEGIN
		UPDATE sony_banner
		SET
			[name] = @name,
			[visible] = @visible,
			[bannerType] = @bannerType,
			[updated] = GETDATE()
		WHERE [id]=@id
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_hide_menu]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_hide_menu]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 2013-11-06 20:14:00
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_hide_menu] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(100),
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP (1) * FROM sony_menu WHERE [name]=@name)
	BEGIN
		UPDATE sony_menu
		SET 
			[updated] = GETDATE(),
			[visible] = 0
		WHERE [name]=@name
		SET @returnVal = 1
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_group_by_id]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_user_group_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 2013-11-07 22:55:00
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_user_group_by_id] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM sony_user_group WHERE id=@id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_by_username]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_user_by_username]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 2013/11/05 20:33:00
-- Description:	Store to search user by username
-- Return : return user information
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_user_by_username]
	-- Add the parameters for the stored procedure here
	@username nvarchar (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM sony_user WHERE [username]=@username;
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_menu_or_page_by_name]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_of_menu_or_page_by_name]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_permission_of_menu_or_page_by_name]
	-- Add the parameters for the stored procedure here
	@name nvarchar(150), 
	@ispage bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    -- case check by menu''s name
	IF @ispage = 1
	BEGIN
		DECLARE @pageId int = 0;
		SET @pageId = (SELECT [id] FROM sony_page WHERE [title]=@name)
		IF @pageId <> 0
		BEGIN
			DECLARE @permissionGroupId int = 0;
			SET @permissionGroupId = (SELECT [permissionGroup] FROM sony_page_menu_permission WHERE menuPageId=@pageId AND [isPage]=1)
			IF @permissionGroupId <> 0
			BEGIN
				SELECT sp.* FROM sony_permission sp
				INNER JOIN sony_permission_group spg ON spg.permissionId = sp.id
				WHERE spg.id = @permissionGroupId
			END
		END
	END
	ELSE
	BEGIN
		DECLARE @menuId int = 0;
		SET @menuId = (SELECT [id] FROM sony_menu WHERE [name]=@name)
		IF @menuId <> 0
		BEGIN
			SET @permissionGroupId = (SELECT [permissionGroup] FROM sony_page_menu_permission WHERE menuPageId=@pageId AND [isPage]=0)
			IF @permissionGroupId <> 0
			BEGIN
				SELECT sp.* FROM sony_permission sp
				INNER JOIN sony_permission_group spg ON spg.permissionId = sp.id
				WHERE spg.id = @permissionGroupId
			END
		END
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_menu_or_page_by_id]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_of_menu_or_page_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_permission_of_menu_or_page_by_id]
	-- Add the parameters for the stored procedure here
	@id int = 0, 
	@ispage bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    -- case check by menu''s name
	IF @ispage = 1
	BEGIN
		DECLARE @pageId int = 0;
		SET @pageId = @id
		IF @pageId <> 0
		BEGIN
			DECLARE @permissionGroupId int = 0;
			SET @permissionGroupId = (SELECT [permissionGroup] FROM sony_page_menu_permission WHERE menuPageId=@pageId AND [isPage]=1)
			IF @permissionGroupId <> 0
			BEGIN
				SELECT sp.* FROM sony_permission sp
				INNER JOIN sony_permission_group spg ON spg.permissionId = sp.id
				WHERE spg.id = @permissionGroupId
			END
		END
	END
	ELSE
	BEGIN
		DECLARE @menuId int = 0;
		SET @menuId = @id
		IF @menuId <> 0
		BEGIN
			SET @permissionGroupId = (SELECT [permissionGroup] FROM sony_page_menu_permission WHERE menuPageId=@pageId AND [isPage]=0)
			IF @permissionGroupId <> 0
			BEGIN
				SELECT sp.* FROM sony_permission sp
				INNER JOIN sony_permission_group spg ON spg.permissionId = sp.id
				WHERE spg.id = @permissionGroupId
			END
		END
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_group]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_of_group]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_permission_of_group] 
	-- Add the parameters for the stored procedure here
	@groupId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT sp.* FROM sony_permission_group spg 
	INNER JOIN sony_permission sp
	ON spg.permissionId = sp.id 
	WHERE spg.id = @groupId
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_by_name]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_by_name]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_permission_by_name] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(150)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM sony_permission WHERE [name]=@name
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_by_id]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_permission_by_id] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM sony_permission WHERE [id]=@id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_title]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_page_by_title]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_page_by_title]
	-- Add the parameters for the stored procedure here
	@title nvarchar(300)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TOP (1) * FROM sony_page WHERE [title]=@title
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_num_order_size_col]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_page_by_num_order_size_col]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_page_by_num_order_size_col]
	-- Add the parameters for the stored procedure here
	@pageNum int = 0,
	@order int = 0,
	@pageSize int = 20,
	@orderBy nvarchar(50) = ''id''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @direction nvarchar(4);
	DECLARE @totalPage int = 0;
	DECLARE @from int = 0;
	DECLARE @to int = @from + @pageSize;
	DECLARE @totalBlock int = 1;
	DECLARE @sql nvarchar(max) = '''';
	
    -- Insert statements for procedure here
    IF @order = 1
    BEGIN
		SET @direction = ''ASC'';
    END
    ELSE
    BEGIN
		SET @direction = ''DESC'';
    END
	SET @totalPage = (SELECT COUNT(1) FROM sony_page)
	IF @totalPage > 0
	BEGIN
		IF @totalPage <= @pageSize
		BEGIN
			SET @from = 0;
			SET @to = @from + @pageSize;
		END
		ELSE
		BEGIN
			SET @totalBlock = @totalPage / @pageSize;
			IF @totalBlock = 0
			BEGIN
				SET @from = 0;
				SET @to = @from + @pageSize;
			END
			ELSE
			BEGIN
				SET @totalBlock = @totalBlock + 1;
				IF @pageNum > @totalBlock
				BEGIN
					SET @pageNum = @totalBlock;
				END
				SET @from = @pageNum * @pageSize;
				SET @to = @from + @pageSize;
			END
		END
		
		SET @sql = ''WITH MyQuery AS (SELECT ROW_NUMBER() OVER (ORDER BY ['' + @orderBy + ''] '' + @direction + '' ) as num,* FROM sony_page)
		SELECT * FROM MyQuery
		WHERE MyQuery.[num] > '' + CONVERT(nvarchar,@from) + '' AND MyQuery.[num] <= '' + CONVERT(nvarchar,@to) + '';'';
		
		EXEC (@sql);
	END
END



' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_num_order]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_page_by_num_order]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_page_by_num_order]
	-- Add the parameters for the stored procedure here
	@pageNum int = 0,
	@order int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @orderBy nvarchar(50) = ''id'';
	DECLARE @direction nvarchar(4);
	DECLARE @totalPage int = 0;
	DECLARE @pageSize int = 20;
	DECLARE @from int = 0;
	DECLARE @to int = @from + @pageSize;
	DECLARE @totalBlock int = 1;
	DECLARE @sql nvarchar(max) = '''';
	
    -- Insert statements for procedure here
    IF @order = 1
    BEGIN
		SET @direction = ''ASC'';
    END
    ELSE
    BEGIN
		SET @direction = ''DESC'';
    END
	SET @totalPage = (SELECT COUNT(1) FROM sony_page)
	IF @totalPage > 0
	BEGIN
		IF @totalPage <= @pageSize
		BEGIN
			SET @from = 0;
			SET @to = @from + @pageSize;
		END
		ELSE
		BEGIN
			SET @totalBlock = @totalPage / @pageSize;
			IF @totalBlock = 0
			BEGIN
				SET @from = 0;
				SET @to = @from + @pageSize;
			END
			ELSE
			BEGIN
				SET @totalBlock = @totalBlock + 1;
				IF @pageNum > @totalBlock
				BEGIN
					SET @pageNum = @totalBlock;
				END
				SET @from = @pageNum * @pageSize;
				SET @to = @from + @pageSize;
			END
		END
		
		SET @sql = ''WITH MyQuery AS (SELECT ROW_NUMBER() OVER (ORDER BY ['' + @orderBy + ''] '' + @direction + '' ) as num,* FROM sony_page)
		SELECT * FROM MyQuery
		WHERE MyQuery.[num] > '' + CONVERT(nvarchar,@from) + '' AND MyQuery.[num] <= '' + CONVERT(nvarchar,@to) + '';'';
		
		EXEC (@sql);
	END
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_id]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_page_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_page_by_id] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TOP (1) * FROM sony_page WHERE [id]=@id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_menu_by_name]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_menu_by_name]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
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
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_menu_by_id]    Script Date: 11/12/2013 20:36:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_menu_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 2013-11-06 20:45:00
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_menu_by_id] 
	-- Add the parameters for the stored procedure here
	@id	int
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
  WHERE [id] = @id
END
' 
END
GO
