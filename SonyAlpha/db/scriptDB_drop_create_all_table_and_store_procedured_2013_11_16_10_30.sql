USE [sony_rebuild_alpha]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_action_log]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_action_log]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_action_log]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_album]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_album]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_album]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_banner]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_banner]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner_photo]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_banner_photo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_banner_photo]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner_type]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_banner_type]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_banner_type]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_menu]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_menu]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_menu]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_page]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_page]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_page]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_page_menu_permission]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_page_menu_permission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_page_menu_permission]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_permission]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_permission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_permission]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_permission_group]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_permission_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_permission_group]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_setting]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_setting]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_setting]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_user]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_user]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_user_group]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_user_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_user_group]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_deactive_user]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_deactive_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_deactive_user]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_album_by_id]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_album_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_album_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_album_by_name]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_album_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_album_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_banner_photo_by_banner_id]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_banner_photo_by_banner_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_banner_photo_by_banner_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_banner_photo_by_banner_photo_id]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_banner_photo_by_banner_photo_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_banner_photo_by_banner_photo_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_page_menu_permission]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_page_menu_permission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_page_menu_permission]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_permission]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_permission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_permission]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_permission_group]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_permission_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_permission_group]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_album_by_id]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_album_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_album_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_album_by_name]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_album_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_album_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_album]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_album]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_banner]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_banner]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_banner]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_banner_type]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_banner_type]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_banner_type]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_menu]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_menu]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_menu]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_page]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_page]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_page]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_permission]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_permission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_permission]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_setting]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_setting]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_setting]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_user]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_user]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_user_group]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_user_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_user_group]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_by_id]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_banner_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_banner_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_photo_by_banner_id]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_banner_photo_by_banner_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_banner_photo_by_banner_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_type_by_id]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_banner_type_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_banner_type_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_type_by_name]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_banner_type_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_banner_type_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_menu_by_id]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_menu_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_menu_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_menu_by_name]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_menu_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_menu_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_id]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_page_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_page_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_num_order]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_page_by_num_order]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_page_by_num_order]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_num_order_size_col]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_page_by_num_order_size_col]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_page_by_num_order_size_col]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_title]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_page_by_title]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_page_by_title]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_by_id]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_permission_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_by_name]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_permission_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_group]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_of_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_permission_of_group]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_menu_or_page_by_id]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_of_menu_or_page_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_permission_of_menu_or_page_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_menu_or_page_by_name]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_of_menu_or_page_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_permission_of_menu_or_page_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_setting_by_id]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_setting_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_setting_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_setting_by_name]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_setting_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_setting_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_by_username]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_user_by_username]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_user_by_username]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_group_by_id]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_user_group_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_user_group_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_hide_menu]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_hide_menu]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_hide_menu]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_album]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_album]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_album]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_banner]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_banner]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner_photo]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_banner_photo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_banner_photo]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner_type]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_banner_type]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_banner_type]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_menu]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_menu]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_menu]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_page_by_id]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_page_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_page_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_page_by_title]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_page_by_title]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_page_by_title]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_permission]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_permission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_permission]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_setting]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_setting]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_setting]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_user]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_group]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_user_group]
GO
/****** Object:  Table [dbo].[sony_user]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_user_status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_user] DROP CONSTRAINT [DF_sony_user_status]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_user__group__47FBA9D6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_user] DROP CONSTRAINT [DF__sony_user__group__47FBA9D6]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_user]') AND type in (N'U'))
DROP TABLE [dbo].[sony_user]
GO
/****** Object:  Table [dbo].[sony_user_group]    Script Date: 11/16/2013 10:31:16 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_user_group_issuper]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_user_group] DROP CONSTRAINT [DF_sony_user_group_issuper]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_user_group]') AND type in (N'U'))
DROP TABLE [dbo].[sony_user_group]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_current_max_id]    Script Date: 11/16/2013 10:31:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_current_max_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_current_max_id]
GO
/****** Object:  Table [dbo].[sony_action_log]    Script Date: 11/16/2013 10:31:14 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_action_log_username]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_action_log] DROP CONSTRAINT [DF_sony_action_log_username]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_action_log]') AND type in (N'U'))
DROP TABLE [dbo].[sony_action_log]
GO
/****** Object:  Table [dbo].[sony_album]    Script Date: 11/16/2013 10:31:14 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_albu__album__25A691D2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_album] DROP CONSTRAINT [DF__sony_albu__album__25A691D2]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_albu__viewC__269AB60B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_album] DROP CONSTRAINT [DF__sony_albu__viewC__269AB60B]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_album]') AND type in (N'U'))
DROP TABLE [dbo].[sony_album]
GO
/****** Object:  Table [dbo].[sony_album_comment]    Script Date: 11/16/2013 10:31:14 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_album_comment_status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_album_comment] DROP CONSTRAINT [DF_sony_album_comment_status]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_album_comment]') AND type in (N'U'))
DROP TABLE [dbo].[sony_album_comment]
GO
/****** Object:  Table [dbo].[sony_album_photo]    Script Date: 11/16/2013 10:31:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_album_photo]') AND type in (N'U'))
DROP TABLE [dbo].[sony_album_photo]
GO
/****** Object:  Table [dbo].[sony_banner]    Script Date: 11/16/2013 10:31:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_banner]') AND type in (N'U'))
DROP TABLE [dbo].[sony_banner]
GO
/****** Object:  Table [dbo].[sony_banner_photo]    Script Date: 11/16/2013 10:31:14 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_bann__sortO__284DF453]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_banner_photo] DROP CONSTRAINT [DF__sony_bann__sortO__284DF453]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_banner_photo]') AND type in (N'U'))
DROP TABLE [dbo].[sony_banner_photo]
GO
/****** Object:  Table [dbo].[sony_banner_type]    Script Date: 11/16/2013 10:31:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_banner_type]') AND type in (N'U'))
DROP TABLE [dbo].[sony_banner_type]
GO
/****** Object:  Table [dbo].[sony_category]    Script Date: 11/16/2013 10:31:14 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_cate__avata__10AB74EC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_category] DROP CONSTRAINT [DF__sony_cate__avata__10AB74EC]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_category]') AND type in (N'U'))
DROP TABLE [dbo].[sony_category]
GO
/****** Object:  Table [dbo].[sony_category_album]    Script Date: 11/16/2013 10:31:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_category_album]') AND type in (N'U'))
DROP TABLE [dbo].[sony_category_album]
GO
/****** Object:  Table [dbo].[sony_category_news]    Script Date: 11/16/2013 10:31:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_category_news]') AND type in (N'U'))
DROP TABLE [dbo].[sony_category_news]
GO
/****** Object:  Table [dbo].[sony_category_type]    Script Date: 11/16/2013 10:31:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_category_type]') AND type in (N'U'))
DROP TABLE [dbo].[sony_category_type]
GO
/****** Object:  Table [dbo].[sony_center]    Script Date: 11/16/2013 10:31:15 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_center_retailLevel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_center] DROP CONSTRAINT [DF_sony_center_retailLevel]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_center]') AND type in (N'U'))
DROP TABLE [dbo].[sony_center]
GO
/****** Object:  Table [dbo].[sony_file]    Script Date: 11/16/2013 10:31:15 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_files_status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_file] DROP CONSTRAINT [DF_sony_files_status]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_file]') AND type in (N'U'))
DROP TABLE [dbo].[sony_file]
GO
/****** Object:  Table [dbo].[sony_menu]    Script Date: 11/16/2013 10:31:15 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_menu_isparent]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_menu] DROP CONSTRAINT [DF_sony_menu_isparent]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_menu_parentid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_menu] DROP CONSTRAINT [DF_sony_menu_parentid]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_menu_isadmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_menu] DROP CONSTRAINT [DF_sony_menu_isadmin]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_menu_visible]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_menu] DROP CONSTRAINT [DF_sony_menu_visible]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_menu__order__025D5595]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_menu] DROP CONSTRAINT [DF__sony_menu__order__025D5595]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_menu]') AND type in (N'U'))
DROP TABLE [dbo].[sony_menu]
GO
/****** Object:  Table [dbo].[sony_news]    Script Date: 11/16/2013 10:31:15 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_news__viewC__2C538F61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_news] DROP CONSTRAINT [DF__sony_news__viewC__2C538F61]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_news__likeC__2D47B39A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_news] DROP CONSTRAINT [DF__sony_news__likeC__2D47B39A]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news]') AND type in (N'U'))
DROP TABLE [dbo].[sony_news]
GO
/****** Object:  Table [dbo].[sony_news_page]    Script Date: 11/16/2013 10:31:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news_page]') AND type in (N'U'))
DROP TABLE [dbo].[sony_news_page]
GO
/****** Object:  Table [dbo].[sony_news_related]    Script Date: 11/16/2013 10:31:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news_related]') AND type in (N'U'))
DROP TABLE [dbo].[sony_news_related]
GO
/****** Object:  Table [dbo].[sony_news_type]    Script Date: 11/16/2013 10:31:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news_type]') AND type in (N'U'))
DROP TABLE [dbo].[sony_news_type]
GO
/****** Object:  Table [dbo].[sony_page]    Script Date: 11/16/2013 10:31:15 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_page_creator]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_page] DROP CONSTRAINT [DF_sony_page_creator]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_page_updator]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_page] DROP CONSTRAINT [DF_sony_page_updator]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_page]') AND type in (N'U'))
DROP TABLE [dbo].[sony_page]
GO
/****** Object:  Table [dbo].[sony_page_banner]    Script Date: 11/16/2013 10:31:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_page_banner]') AND type in (N'U'))
DROP TABLE [dbo].[sony_page_banner]
GO
/****** Object:  Table [dbo].[sony_page_menu_permission]    Script Date: 11/16/2013 10:31:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_page_menu_permission]') AND type in (N'U'))
DROP TABLE [dbo].[sony_page_menu_permission]
GO
/****** Object:  Table [dbo].[sony_permission]    Script Date: 11/16/2013 10:31:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_permission]') AND type in (N'U'))
DROP TABLE [dbo].[sony_permission]
GO
/****** Object:  Table [dbo].[sony_permission_group]    Script Date: 11/16/2013 10:31:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_permission_group]') AND type in (N'U'))
DROP TABLE [dbo].[sony_permission_group]
GO
/****** Object:  Table [dbo].[sony_photo]    Script Date: 11/16/2013 10:31:15 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_phot__statu__67A95F59]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_photo] DROP CONSTRAINT [DF__sony_phot__statu__67A95F59]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_phot__viewC__689D8392]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_photo] DROP CONSTRAINT [DF__sony_phot__viewC__689D8392]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_phot__voteC__6991A7CB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_photo] DROP CONSTRAINT [DF__sony_phot__voteC__6991A7CB]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__sony_phot__likeC__6A85CC04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_photo] DROP CONSTRAINT [DF__sony_phot__likeC__6A85CC04]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_photo]') AND type in (N'U'))
DROP TABLE [dbo].[sony_photo]
GO
/****** Object:  Table [dbo].[sony_product]    Script Date: 11/16/2013 10:31:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_product]') AND type in (N'U'))
DROP TABLE [dbo].[sony_product]
GO
/****** Object:  Table [dbo].[sony_product_category]    Script Date: 11/16/2013 10:31:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_product_category]') AND type in (N'U'))
DROP TABLE [dbo].[sony_product_category]
GO
/****** Object:  Table [dbo].[sony_product_type]    Script Date: 11/16/2013 10:31:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_product_type]') AND type in (N'U'))
DROP TABLE [dbo].[sony_product_type]
GO
/****** Object:  Table [dbo].[sony_province]    Script Date: 11/16/2013 10:31:15 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_sony_province_provinceOrder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[sony_province] DROP CONSTRAINT [DF_sony_province_provinceOrder]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_province]') AND type in (N'U'))
DROP TABLE [dbo].[sony_province]
GO
/****** Object:  Table [dbo].[sony_setting]    Script Date: 11/16/2013 10:31:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_setting]') AND type in (N'U'))
DROP TABLE [dbo].[sony_setting]
GO
/****** Object:  Table [dbo].[sony_setting]    Script Date: 11/16/2013 10:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_setting]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_setting](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [varchar](150) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_setting] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sony_province]    Script Date: 11/16/2013 10:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_province]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_province](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[province] [nvarchar](200) NOT NULL,
	[provinceOrder] [int] NOT NULL CONSTRAINT [DF_sony_province_provinceOrder]  DEFAULT ((0)),
 CONSTRAINT [PK_sony_province] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_product_type]    Script Date: 11/16/2013 10:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_product_type]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_product_type](
	[id] [int] NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_product_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_product_category]    Script Date: 11/16/2013 10:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_product_category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_product_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[longname] [nvarchar](500) NULL,
	[avatar] [int] NULL,
	[redirectUrl] [nvarchar](500) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_product_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_product]    Script Date: 11/16/2013 10:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[productType] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[photoId] [int] NOT NULL,
	[shortDesc] [nvarchar](300) NULL,
	[description] [text] NULL,
	[status] [bit] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_photo]    Script Date: 11/16/2013 10:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_photo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](150) NOT NULL,
	[filename] [nvarchar](150) NOT NULL,
	[description] [nvarchar](500) NULL,
	[redirectUrl] [nvarchar](500) NULL,
	[status] [bit] NOT NULL DEFAULT ((0)),
	[cameraName] [nvarchar](150) NULL,
	[cameraModel] [nvarchar](150) NULL,
	[fStop] [nvarchar](55) NULL,
	[exposureTime] [nvarchar](55) NULL,
	[iso] [nvarchar](55) NULL,
	[exposureBlas] [nvarchar](55) NULL,
	[focalLengh] [nvarchar](55) NULL,
	[maxAperture] [nvarchar](55) NULL,
	[materingMode] [nvarchar](55) NULL,
	[subjectDistance] [nvarchar](55) NULL,
	[flashMode] [nvarchar](55) NULL,
	[flashEnergy] [nvarchar](55) NULL,
	[viewCount] [int] NOT NULL DEFAULT ((0)),
	[voteCount] [int] NOT NULL DEFAULT ((0)),
	[likeCount] [int] NOT NULL DEFAULT ((0)),
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_photo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_permission_group]    Script Date: 11/16/2013 10:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_permission_group]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_permission_group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[groupId] [int] NOT NULL,
	[permissionId] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_permission_group] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_permission]    Script Date: 11/16/2013 10:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_permission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[allowinsert] [bit] NOT NULL,
	[allowupdate] [bit] NOT NULL,
	[allowdelete] [bit] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_permission] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_page_menu_permission]    Script Date: 11/16/2013 10:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_page_menu_permission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_page_menu_permission](
	[id] [int] NOT NULL,
	[permissionGroup] [int] NOT NULL,
	[menuPageId] [int] NOT NULL,
	[isPage] [bit] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_page_menu_permission] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_page_banner]    Script Date: 11/16/2013 10:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_page_banner]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_page_banner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pageId] [int] NOT NULL,
	[bannerId] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_page_banner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_page]    Script Date: 11/16/2013 10:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_page]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_page](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](300) NULL,
	[longtitle] [nvarchar](500) NOT NULL,
	[pageContent] [nvarchar](max) NULL,
	[isNews] [bit] NOT NULL,
	[seoUrl] [nvarchar](500) NULL,
	[status] [bit] NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
	[creator] [nvarchar](50) NOT NULL CONSTRAINT [DF_sony_page_creator]  DEFAULT (N'admin'),
	[updator] [nvarchar](50) NOT NULL CONSTRAINT [DF_sony_page_updator]  DEFAULT (N'admin'),
 CONSTRAINT [PK_sony_page] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_news_type]    Script Date: 11/16/2013 10:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news_type]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_news_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_new_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_news_related]    Script Date: 11/16/2013 10:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news_related]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_news_related](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[newsId] [int] NOT NULL,
	[relatedIds] [nvarchar](200) NULL,
 CONSTRAINT [PK_sony_news_related] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_news_page]    Script Date: 11/16/2013 10:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news_page]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_news_page](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[newsId] [int] NOT NULL,
	[pageId] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_news_page] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_news]    Script Date: 11/16/2013 10:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_news]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_news](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](500) NOT NULL,
	[shortTitle] [nvarchar](300) NULL,
	[redirectUrl] [nvarchar](500) NULL,
	[shortDesc] [nvarchar](500) NOT NULL,
	[detail] [nvarchar](max) NULL,
	[categoryId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[metaTag] [nvarchar](500) NULL,
	[metaTitle] [nvarchar](500) NULL,
	[metaKeyword] [nvarchar](500) NULL,
	[viewCount] [int] NOT NULL DEFAULT ((0)),
	[likeCount] [int] NOT NULL DEFAULT ((0)),
	[newsImage] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_new] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_menu]    Script Date: 11/16/2013 10:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_menu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[isparent] [bit] NOT NULL CONSTRAINT [DF_sony_menu_isparent]  DEFAULT ((1)),
	[parentid] [int] NOT NULL CONSTRAINT [DF_sony_menu_parentid]  DEFAULT ((0)),
	[seoUrl] [nvarchar](500) NULL,
	[isadmin] [bit] NOT NULL CONSTRAINT [DF_sony_menu_isadmin]  DEFAULT ((1)),
	[visible] [bit] NOT NULL CONSTRAINT [DF_sony_menu_visible]  DEFAULT ((1)),
	[order] [int] NOT NULL DEFAULT ((1)),
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_file]    Script Date: 11/16/2013 10:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_file]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_file](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[filename] [nvarchar](150) NOT NULL,
	[fullPath] [nvarchar](500) NOT NULL,
	[filetype] [int] NOT NULL,
	[status] [bit] NOT NULL CONSTRAINT [DF_sony_files_status]  DEFAULT ((0)),
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_files] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_center]    Script Date: 11/16/2013 10:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_center]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_center](
	[it] [int] NOT NULL,
	[name] [nvarchar](300) NOT NULL,
	[address] [nvarchar](500) NULL,
	[phone] [nvarchar](50) NULL,
	[fax] [nvarchar](50) NULL,
	[province] [nvarchar](50) NULL,
	[description] [text] NULL,
	[retailLevel] [int] NOT NULL CONSTRAINT [DF_sony_center_retailLevel]  DEFAULT ((0)),
	[avatar] [int] NULL,
	[opentime] [nvarchar](50) NULL,
	[closetime] [nvarchar](50) NULL,
	[longitude] [nvarchar](20) NULL,
	[latitude] [nvarchar](20) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_center] PRIMARY KEY CLUSTERED 
(
	[it] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_category_type]    Script Date: 11/16/2013 10:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_category_type]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_category_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_category_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_category_news]    Script Date: 11/16/2013 10:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_category_news]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_category_news](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoryId] [int] NOT NULL,
	[newsListIds] [nvarchar](1000) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_category_news] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_category_album]    Script Date: 11/16/2013 10:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_category_album]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_category_album](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoryId] [int] NOT NULL,
	[albumId] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_category_album] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_category]    Script Date: 11/16/2013 10:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[seoUrl] [nvarchar](500) NULL,
	[avatar] [int] NOT NULL DEFAULT ((0)),
	[categoryType] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_banner_type]    Script Date: 11/16/2013 10:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_banner_type]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_banner_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[positionType] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_banner_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_banner_photo]    Script Date: 11/16/2013 10:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_banner_photo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_banner_photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bannerId] [int] NOT NULL,
	[imageUrl] [nvarchar](500) NULL,
	[link2] [nvarchar](500) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
	[sortOrder] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_sony_banner_photo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_banner]    Script Date: 11/16/2013 10:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_banner]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_banner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](300) NOT NULL,
	[visible] [bit] NOT NULL,
	[bannerType] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_banner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_album_photo]    Script Date: 11/16/2013 10:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_album_photo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_album_photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[albumId] [int] NOT NULL,
	[photoId] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_album_photo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_album_comment]    Script Date: 11/16/2013 10:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_album_comment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_album_comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[albumId] [int] NOT NULL,
	[photoId] [int] NOT NULL,
	[status] [bit] NOT NULL CONSTRAINT [DF_sony_album_comment_status]  DEFAULT ((0)),
	[comment] [text] NULL,
	[created] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_album_comment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_album]    Script Date: 11/16/2013 10:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_album]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_album](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](500) NOT NULL,
	[albumCreator] [nvarchar](50) NOT NULL DEFAULT ('admin'),
	[albumImage] [nvarchar](500) NULL,
	[viewCount] [int] NOT NULL DEFAULT ((0)),
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_album] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_action_log]    Script Date: 11/16/2013 10:31:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_action_log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_action_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL CONSTRAINT [DF_sony_action_log_username]  DEFAULT (N'admin'),
	[description] [nvarchar](max) NOT NULL,
	[created] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_action_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_current_max_id]    Script Date: 11/16/2013 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_current_max_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_current_max_id] 
	-- Add the parameters for the stored procedure here
	@tableName nvarchar(128) = '''', 
	@returnVal int = 0 OUTPUT
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
/****** Object:  Table [dbo].[sony_user_group]    Script Date: 11/16/2013 10:31:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_user_group]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_user_group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[groupname] [nvarchar](150) NOT NULL,
	[issuper] [bit] NOT NULL CONSTRAINT [DF_sony_user_group_issuper]  DEFAULT ((0)),
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_user_group] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[sony_user]    Script Date: 11/16/2013 10:31:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_user]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](200) NOT NULL,
	[fullname] [nvarchar](200) NULL,
	[status] [bit] NOT NULL CONSTRAINT [DF_sony_user_status]  DEFAULT ((0)),
	[groupId] [int] NOT NULL DEFAULT ((0)),
	[registered] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_group]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_update_setting]    Script Date: 11/16/2013 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_setting]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_setting] 
	-- Add the parameters for the stored procedure here
	@name varchar(50) = '''', 
	@value varchar(150) = '''',
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP(1) * FROM sony_setting WHERE [name]=@name)
	BEGIN
		UPDATE sony_setting
		SET
			[value] = @value,
			[updated] = GETDATE()
		WHERE [name]=@name
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_permission]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_update_page_by_title]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_update_page_by_id]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_update_menu]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner_type]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner_photo]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_update_album]    Script Date: 11/16/2013 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_album]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_album] 
	-- Add the parameters for the stored procedure here
	@id int,
	@fullname nvarchar(500), 
	@albumCreator nvarchar(50) = ''admin'',
	@albumImage nvarchar(500),
	@viewCount int = 0,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF EXISTS (SELECT TOP(1) * FROM sony_album WHERE [id]=@id)
    BEGIN
		UPDATE sony_album 
		SET
			[fullname] = @fullname, 
			[albumCreator] = @albumCreator, 
			[albumImage] = @albumImage, 
			[viewCount] = @viewCount, 
			[updated] = GETDATE()
		WHERE [id]=@id
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_hide_menu]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_group_by_id]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_by_username]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_setting_by_name]    Script Date: 11/16/2013 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_setting_by_name]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_setting_by_name]
	-- Add the parameters for the stored procedure here
	@name varchar(50) = ''''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT TOP(1) [value] FROM sony_setting WHERE [name]=@name;
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_setting_by_id]    Script Date: 11/16/2013 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_setting_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_setting_by_id]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT TOP(1) [value] FROM sony_setting WHERE [id]=@id;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_menu_or_page_by_name]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_menu_or_page_by_id]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_group]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_by_name]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_by_id]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_title]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_num_order_size_col]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_num_order]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_id]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_menu_by_name]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_menu_by_id]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_type_by_name]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_type_by_id]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_photo_by_banner_id]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_by_id]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_user_group]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_user]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_setting]    Script Date: 11/16/2013 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_setting]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_setting] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT * FROM sony_setting;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_permission]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_page]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_menu]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_banner_type]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_banner]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album]    Script Date: 11/16/2013 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_album]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_album]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT * FROM sony_album;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_album_by_name]    Script Date: 11/16/2013 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_album_by_name]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_album_by_name]
	-- Add the parameters for the stored procedure here
	@name nvarchar(500)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT * FROM sony_album WHERE [fullname]=@name;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_album_by_id]    Script Date: 11/16/2013 10:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_album_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_album_by_id]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT * FROM sony_album WHERE [id]=@id;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_permission_group]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_permission]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_page_menu_permission]    Script Date: 11/16/2013 10:31:17 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_banner_photo_by_banner_photo_id]    Script Date: 11/16/2013 10:31:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_banner_photo_by_banner_id]    Script Date: 11/16/2013 10:31:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_album_by_name]    Script Date: 11/16/2013 10:31:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_album_by_name]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_album_by_name]
	-- Add the parameters for the stored procedure here
	@name nvarchar(500)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    DELETE FROM sony_album
    WHERE [fullname]=@name;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_album_by_id]    Script Date: 11/16/2013 10:31:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_album_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_album_by_id]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    DELETE FROM sony_album
    WHERE [id]=@id;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_deactive_user]    Script Date: 11/16/2013 10:31:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_user_group]    Script Date: 11/16/2013 10:31:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_user]    Script Date: 11/16/2013 10:31:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_setting]    Script Date: 11/16/2013 10:31:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_setting]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_setting] 
	-- Add the parameters for the stored procedure here
	@name varchar(50) = '''', 
	@value varchar(150) = '''',
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP(1) * FROM sony_setting WHERE [name]=@name)
	BEGIN
		INSERT INTO sony_setting ([name], [value], [created], [updated])
		VALUES (@name, @value, GETDATE(), GETDATE());
		SET @returnVal = (SELECT @@IDENTITY);
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_permission_group]    Script Date: 11/16/2013 10:31:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_permission]    Script Date: 11/16/2013 10:31:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_page_menu_permission]    Script Date: 11/16/2013 10:31:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_page]    Script Date: 11/16/2013 10:31:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_menu]    Script Date: 11/16/2013 10:31:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner_type]    Script Date: 11/16/2013 10:31:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner_photo]    Script Date: 11/16/2013 10:31:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner]    Script Date: 11/16/2013 10:31:16 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_album]    Script Date: 11/16/2013 10:31:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_album]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_album] 
	-- Add the parameters for the stored procedure here
	@fullname nvarchar(500), 
	@albumCreator nvarchar(50) = ''admin'',
	@albumImage nvarchar(500),
	@viewCount int = 0,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF NOT EXISTS (SELECT TOP(1) * FROM sony_album WHERE [fullname]=@fullname)
    BEGIN
		INSERT INTO sony_album ([fullname], [albumCreator], [albumImage], [viewCount], [created], [updated])
		VALUES (@fullname, @albumCreator, @albumImage, @viewCount, GETDATE(), GETDATE());
		SET @returnVal = (SELECT @@IDENTITY);
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_action_log]    Script Date: 11/16/2013 10:31:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_action_log]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_action_log] 
	-- Add the parameters for the stored procedure here
	@username nvarchar(50) = ''admin'', 
	@description nvarchar(max) = ''''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO sony_action_log ([username], [description], [created])
	VALUES (@username, @description, GETDATE());
END
' 
END
GO
