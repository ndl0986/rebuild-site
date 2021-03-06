--USE [sony_rebuild_alpha_test]
--GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_action_log]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_action_log]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_action_log]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_album]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_album]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_album]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_album_comment]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_album_comment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_album_comment]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_banner]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_banner]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner_photo]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_banner_photo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_banner_photo]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner_type]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_banner_type]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_banner_type]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_faq]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_faq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_faq]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_menu]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_menu]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_menu]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_news]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_news]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_news]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_news_category]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_news_category]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_news_category]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_page]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_page]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_page]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_page_menu_permission]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_page_menu_permission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_page_menu_permission]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_permission]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_permission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_permission]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_permission_group]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_permission_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_permission_group]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_photo]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_photo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_photo]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_product]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_product]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_product]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_product_category]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_product_category]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_product_category]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_province]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_province]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_province]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_setting]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_setting]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_setting]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_sony_center]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_sony_center]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_sony_center]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_user]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_user]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_user_group]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_user_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_add_user_group]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_deactive_user]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_deactive_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_deactive_user]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_album_by_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_album_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_album_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_album_by_name]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_album_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_album_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_album_comment_by_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_album_comment_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_album_comment_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_banner_by_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_banner_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_banner_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_banner_photo_by_banner_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_banner_photo_by_banner_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_banner_photo_by_banner_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_banner_photo_by_banner_photo_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_banner_photo_by_banner_photo_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_banner_photo_by_banner_photo_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_faq_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_faq_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_faq_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_menu_by_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_menu_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_menu_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_news_by_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_news_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_news_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_news_category_by_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_news_category_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_news_category_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_page_by_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_page_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_page_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_page_menu_permission]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_page_menu_permission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_page_menu_permission]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_pagebanner_by_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_pagebanner_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_pagebanner_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_permission]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_permission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_permission]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_permission_group]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_permission_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_permission_group]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_photo_by_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_photo_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_photo_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_product_by_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_product_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_product_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_product_category_by_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_product_category_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_product_category_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_province_by_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_province_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_province_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_setting_by_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_setting_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_setting_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_sony_center_by_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_sony_center_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_sony_center_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_user_by_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_user_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_delete_user_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_album_by_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_album_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_album_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_album_by_name]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_album_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_album_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_album_list_photo]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_album_list_photo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_album_list_photo]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_album_photo]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_album_photo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_album_photo]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_album_view_count]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_album_view_count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_album_view_count]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_album]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_album]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album_for_center]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_album_for_center]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_album_for_center]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album_for_product_category]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_album_for_product_category]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_album_for_product_category]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album_normal]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_album_normal]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_album_normal]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album_photo_comment_by_album_id_and_photo_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_album_photo_comment_by_album_id_and_photo_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_album_photo_comment_by_album_id_and_photo_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album_photo_comment_by_photo_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_album_photo_comment_by_photo_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_album_photo_comment_by_photo_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_banner]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_banner]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_banner]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_banner_type]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_banner_type]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_banner_type]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_category]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_category]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_category]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_category_same_parent]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_category_same_parent]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_category_same_parent]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_faq]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_faq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_faq]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_menu]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_menu]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_menu]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_menu_by_parent]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_menu_by_parent]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_menu_by_parent]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_news]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_news]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_news]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_news_by_category_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_news_by_category_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_news_by_category_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_news_by_list_category_id]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_news_by_list_category_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_news_by_list_category_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_news_with_pagenum_pagesize]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_news_with_pagenum_pagesize]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_news_with_pagenum_pagesize]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_page]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_page]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_page]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_page_banner]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_page_banner]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_page_banner]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_permission]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_permission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_permission]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_photo]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_photo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_photo]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_photo_by_username]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_photo_by_username]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_photo_by_username]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_photo_by_username_albumid]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_photo_by_username_albumid]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_photo_by_username_albumid]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_product]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_product]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_product]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_product_by_category]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_product_by_category]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_product_by_category]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_product_category]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_product_category]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_product_category]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_product_category_child]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_product_category_child]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_product_category_child]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_province]    Script Date: 12/01/2013 00:14:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_province]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_province]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_province_by_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_province_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_province_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_province_by_name]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_province_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_province_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_root_menu]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_root_menu]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_root_menu]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_setting]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_setting]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_setting]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_sony_center]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_sony_center]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_sony_center]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_user]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_user]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_user_by_username]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_user_by_username]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_user_by_username]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_user_group]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_user_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_all_user_group]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_by_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_banner_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_banner_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_id_by_page_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_banner_id_by_page_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_banner_id_by_page_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_photo_by_banner_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_banner_photo_by_banner_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_banner_photo_by_banner_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_type_by_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_banner_type_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_banner_type_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_type_by_name]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_banner_type_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_banner_type_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_category_child]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_category_child]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_category_child]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_list_banner_by_page_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_list_banner_by_page_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_list_banner_by_page_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_list_banner_id_by_page_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_list_banner_id_by_page_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_list_banner_id_by_page_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_menu_by_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_menu_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_menu_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_menu_by_name]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_menu_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_menu_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_news_by_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_news_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_news_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_news_category_by_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_news_category_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_news_category_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_page_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_page_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_num_order]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_page_by_num_order]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_page_by_num_order]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_num_order_size_col]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_page_by_num_order_size_col]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_page_by_num_order_size_col]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_title]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_page_by_title]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_page_by_title]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_pagebanner_by_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_pagebanner_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_pagebanner_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_by_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_permission_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_by_name]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_permission_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_group]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_of_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_permission_of_group]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_menu_or_page_by_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_of_menu_or_page_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_permission_of_menu_or_page_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_menu_or_page_by_name]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_permission_of_menu_or_page_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_permission_of_menu_or_page_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_photo_by_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_photo_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_photo_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_photo_like_count]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_photo_like_count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_photo_like_count]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_photo_of_product]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_photo_of_product]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_photo_of_product]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_photo_view_count]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_photo_view_count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_photo_view_count]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_photo_vote_count]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_photo_vote_count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_photo_vote_count]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_product_by_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_product_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_product_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_product_category_by_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_product_category_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_product_category_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_setting_by_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_setting_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_setting_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_setting_by_name]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_setting_by_name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_setting_by_name]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_sony_center_by_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_sony_center_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_sony_center_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_by_email]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_user_by_email]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_user_by_email]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_by_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_user_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_user_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_by_username]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_user_by_username]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_user_by_username]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_group_by_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_user_group_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_user_group_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_hide_menu]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_hide_menu]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_hide_menu]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_increase_album_view_count]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_increase_album_view_count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_increase_album_view_count]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_increase_photo_like_count]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_increase_photo_like_count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_increase_photo_like_count]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_increase_photo_view_count]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_increase_photo_view_count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_increase_photo_view_count]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_increase_photo_vote_count]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_increase_photo_vote_count]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_increase_photo_vote_count]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_set_banner_to_page]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_set_banner_to_page]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_set_banner_to_page]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_set_photo_to_product]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_set_photo_to_product]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_set_photo_to_product]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_album]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_album]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_album]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_album_add_album_image]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_album_add_album_image]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_album_add_album_image]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_album_add_one_photo]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_album_add_one_photo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_album_add_one_photo]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_album_comment]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_album_comment]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_album_comment]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_banner]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_banner]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner_photo]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_banner_photo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_banner_photo]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner_type]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_banner_type]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_banner_type]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_faq]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_faq]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_faq]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_menu]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_menu]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_menu]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_news]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_news]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_news]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_news_category]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_news_category]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_news_category]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_page_by_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_page_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_page_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_page_by_title]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_page_by_title]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_page_by_title]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_permission]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_permission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_permission]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_photo]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_photo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_photo]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_product]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_product]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_product]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_product_category]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_product_category]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_product_category]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_province]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_province]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_province]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_setting]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_setting]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_setting]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_sony_center]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_sony_center]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_sony_center]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_user]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_full]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user_full]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_user_full]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_fullname_status]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user_fullname_status]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_user_fullname_status]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_group]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user_group]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_user_group]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_pass]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user_pass]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_user_pass]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_password_to_default]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user_password_to_default]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_update_user_password_to_default]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_faq_by_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_faq_by_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_faq_by_id]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_lastest_news]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_lastest_news]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_lastest_news]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_lastest_news_by_categoryid]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_lastest_news_by_categoryid]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_lastest_news_by_categoryid]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_lastest_news_with_fields]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_lastest_news_with_fields]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_lastest_news_with_fields]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_current_max_id]    Script Date: 12/01/2013 00:14:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_current_max_id]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sony_sp_get_current_max_id]
GO
/****** Object:  Table [dbo].[sony_faq]    Script Date: 12/01/2013 00:14:28 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_faq]') AND type in (N'U'))
DROP TABLE [dbo].[sony_faq]
GO
/****** Object:  Table [dbo].[sony_faq]    Script Date: 12/01/2013 00:14:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_faq]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sony_faq](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question] [nvarchar](2000) NOT NULL,
	[answer] [nvarchar](max) NULL,
 CONSTRAINT [PK_sony_faq] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_current_max_id]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_lastest_news_with_fields]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_lastest_news_with_fields]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'




-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_lastest_news_with_fields]
	-- Add the parameters for the stored procedure here
	@num int = 0,
	@fields varchar(500)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE @sql nvarchar(max) = '''';
	
    -- Insert statements for procedure here
 
		
	SET @sql = 
	''
		SELECT TOP('' + CONVERT(varchar,@num) + '') '' + @fields + '' FROM sony_news ORDER BY [id] DESC
	'';
		
		EXEC (@sql);
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_lastest_news_by_categoryid]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_lastest_news_by_categoryid]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_lastest_news_by_categoryid]
	-- Add the parameters for the stored procedure here
	@num int,
	@categoryId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT TOP(@num) * FROM sony_news WHERE published=1 AND [categoryId]=@categoryId ORDER BY id DESC;
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_lastest_news]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_lastest_news]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_lastest_news]
	-- Add the parameters for the stored procedure here
	@num int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT TOP(@num) * FROM sony_news WHERE published=1 ORDER BY id DESC;
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_faq_by_id]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_faq_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_faq_by_id]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT * FROM sony_faq WHERE id=@id;
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_password_to_default]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user_password_to_default]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[sony_sp_update_user_password_to_default] 
	-- Add the parameters for the stored procedure here
	@username nvarchar(50), 
	@defaultpass nvarchar(200),
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP(1) * FROM sony_user WHERE [username]=@username)
	BEGIN
		UPDATE sony_user
		SET 
			[password]=@defaultpass
		WHERE [username]=@username;
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_pass]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user_pass]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



-- =============================================
-- Author:		ndl0986
-- Create date: 2013/11/05 20:33:00
-- Description:	Store to update user to db
--				Support web to update user when they change their information
-- Return : return indentity 1 if add OK and return 0 if NOT OK
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_user_pass]
	-- Add the parameters for the stored procedure here
	@username nvarchar (50),
	@password varchar (200),
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
			[password] = @password,
			[updated] = GETDATE()
		WHERE 
			[username] = @username
		SET @returnVal = 1;
	END
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_group]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_fullname_status]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user_fullname_status]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_user_fullname_status] 
	-- Add the parameters for the stored procedure here
	@username nvarchar(50), 
	@fullname nvarchar(200),
	@status bit,
	@groupId int = NULL,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP(1) * FROM sony_user WHERE [username]=@username)
	BEGIN
		IF @groupId = NULL
		BEGIN
			SET @groupId = 0;
		END
		UPDATE sony_user
		SET 
			[fullname]=@fullname,
			[status]=@status,
			[groupId]=@groupId
		WHERE [username]=@username;
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_full]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_user_full]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



-- =============================================
-- Author:		ndl0986
-- Create date: 2013/11/05 20:33:00
-- Description:	Store to update user to db
--				Support web to update user when they change their information
-- Return : return indentity 1 if add OK and return 0 if NOT OK
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_user_full]
	-- Add the parameters for the stored procedure here
	@username nvarchar (50),
	@password varchar(200),
	@fullname nvarchar (200),
	@status bit,
	@groupid int,
	@phone varchar(20),
	@email varchar(150),
	@productused varchar(200),
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
			[fullname] = @fullname, 
			[status] = @status, 
			[updated] = GETDATE(),
			[groupId] = @groupid,
			[phone] = @phone,
			[email] = @email,
			[password] = @password,
			[productused] = @productused
		WHERE 
			[username] = @username
		SET @returnVal = 1;
	END
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user]    Script Date: 12/01/2013 00:14:30 ******/
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
	@fullname nvarchar (200),
	@status bit,
	@groupid int,
	@phone varchar(20),
	@email varchar(150),
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
			[fullname] = @fullname, 
			[status] = @status, 
			[updated] = GETDATE(),
			[groupId] = @groupid,
			[phone] = @phone,
			[email] = @email
		WHERE 
			[username] = @username
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_sony_center]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_sony_center]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_sony_center] 
	-- Add the parameters for the stored procedure here
	@id int
	,@name nvarchar(300)
   ,@address nvarchar(500) = NULL
   ,@phone nvarchar(50) = NULL
   ,@fax nvarchar(50) = NULL
   ,@province nvarchar(50) = NULL
   ,@description nvarchar(max) = NULL
   ,@retailLevel int = 0
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
	IF EXISTS (SELECT TOP(1) * FROM sony_center WHERE [id]=@id)
	BEGIN
		UPDATE [sony_center]
   SET [name] = @name
      ,[address] = @address
      ,[phone] = @phone
      ,[fax] = @fax
      ,[province] = @province
      ,[description] = @description
      ,[retailLevel] = @retailLevel
      ,[centerImage] = @centerImage
      ,[opentime] = @opentime
      ,[closetime] = @closetime
      ,[longitude] = @longitude
      ,[latitude] = @latitude
      ,[updated] = GETDATE()
 WHERE [id]=@id;
           SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_setting]    Script Date: 12/01/2013 00:14:30 ******/
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
	@id int,
	@name varchar(50) = '''', 
	@value varchar(150) = '''',
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP(1) * FROM sony_setting WHERE [id]=@id)
	BEGIN
		UPDATE sony_setting
		SET
			[value] = @value,
			[updated] = GETDATE()
		WHERE [id]=@id
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_province]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_province]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_province] 
	-- Add the parameters for the stored procedure here
	@id int,
	@province nvarchar(200),
	@provinceOrder int = NULL,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF EXISTS (SELECT TOP(1) * FROM sony_province WHERE [id]=@id) AND NOT EXISTS (SELECT TOP(1) * FROM sony_province WHERE [province]=@province AND [provinceOrder]=@provinceOrder)
	BEGIN
		UPDATE sony_province 
		SET 
			[province] = @province, 
			[provinceOrder] = @provinceOrder
		WHERE [id]=@id;
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_product_category]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_product_category]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_product_category] 
	-- Add the parameters for the stored procedure here
	@id int,
	@name nvarchar(200),
	@albumId int = NULL,
	@parentId int = 0,
	@description nvarchar(max) = '''',
	@seoUrl nvarchar(500) = '''',
	@coverphoto varchar(500),
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP(1) * FROM sony_product_category WHERE [id]=@id)
	BEGIN
		IF @albumId = NULL
		BEGIN
			SET @albumId = 0;
		END
		UPDATE sony_product_category 
		SET 
			[name] = @name, 
			[albumId] = @albumId, 
			[parentId] = @parentId, 
			[description] = @description, 
			[seoUrl] = @seoUrl, 
			[coverphoto] = @coverphoto,
			[updated] = GETDATE()
		WHERE [id]=@id;
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_product]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_product]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_product] 
	-- Add the parameters for the stored procedure here
	@id int
	,@name nvarchar(150) 
   ,@productType int 
   ,@categoryId int 
   ,@imageUrl nvarchar(max) 
   ,@shortDesc nvarchar(300) 
   ,@description text 
   ,@status bit 
   ,@fStop nvarchar(55) 
   ,@fMax nvarchar(55) 
   ,@fMin nvarchar(55) 
   ,@lensDetails nvarchar(150) 
   ,@numOfPiece int 
   ,@minDistance nvarchar(150) 
   ,@maxDistance nvarchar(150) 
   ,@lensDiameter nvarchar(150) 
   ,@price varchar(20)
   ,@albumId int
   ,@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP(1) * FROM sony_product WHERE [id]=@id)
	BEGIN
		UPDATE [sony_product]
		   SET [name] = @name
			  ,[productType] = @productType
			  ,[categoryId] = @categoryId
			  ,[imageUrl] = @imageUrl
			  ,[shortDesc] = @shortDesc
			  ,[description] = @description 
			  ,[status] = @status
			  ,[fStop] = @fStop
			  ,[fMax] = @fMax
			  ,[fMin] = @fMin
			  ,[lensDetails] = @lensDetails 
			  ,[numOfPiece] = @numOfPiece 
			  ,[minDistance] = @minDistance 
			  ,[maxDistance] = @maxDistance
			  ,[lensDiameter] = @lensDiameter 
			  ,[price] = @price
			  ,[albumId] = @albumId
			  ,[updated] = GETDATE() 
		 WHERE [id]=@id;
			SET @returnVal = 1;
	END
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_photo]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_photo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_photo] 
	-- Add the parameters for the stored procedure here
	@id int,
	@title nvarchar(150),
	@filename nvarchar(150),
	@description nvarchar(500),
	@redirectUrl nvarchar(500),
	@status bit,
   @cameraName nvarchar(150),
   @cameraModel nvarchar(150),
   @fStop nvarchar(55),
   @exposureTime nvarchar(55),
   @iso nvarchar(55),
   @exposureBlas nvarchar(55),
   @focalLengh nvarchar(55),
   @maxAperture nvarchar(55),
   @materingMode nvarchar(55),
   @subjectDistance nvarchar(55),
   @flashMode nvarchar(55),
   @flashEnergy nvarchar(55),
   @viewCount int,
   @voteCount int,
   @likeCount int,
   @userupload varchar(50),
   @returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP(1) * FROM sony_photo WHERE [id]=@id)
	BEGIN
		UPDATE [sony_photo]
	   SET [title] = @title
		  ,[filename] = @filename
		  ,[description] = @description
		  ,[redirectUrl] = @redirectUrl
		  ,[status] = @status
		  ,[cameraName] = @cameraName
		  ,[cameraModel] = @cameraModel
		  ,[fStop] = @fStop
		  ,[exposureTime] = @exposureTime
		  ,[iso] = @iso
		  ,[exposureBlas] = @exposureBlas
		  ,[focalLengh] = @focalLengh
		  ,[maxAperture] = @maxAperture
		  ,[materingMode] = @materingMode
		  ,[subjectDistance] = @subjectDistance
		  ,[flashMode] = @flashMode
		  ,[flashEnergy] = @flashEnergy
		  ,[viewCount] = @viewCount
		  ,[voteCount] = @voteCount
		  ,[likeCount] = @likeCount
		  ,[userupload] = @userupload
		  ,[updated] = GETDATE()
		WHERE [id]=@id
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_permission]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_update_page_by_title]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_update_page_by_id]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_update_news_category]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_news_category]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_news_category]
	-- Add the parameters for the stored procedure here
	@id int,
	@name nvarchar(200) = '''',
	@seoUrl nvarchar(500) = '''',
	@imageUrl nvarchar(500) = '''',
	@parentId int = NULL,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF EXISTS (SELECT * FROM sony_news_category WHERE [id]=@id)
    BEGIN
		IF @parentId = NULL
		BEGIN
			SET @parentId = 0;
		END
		UPDATE sony_news_category 
		SET
			[name]= @name,
			[seoUrl]= @seoUrl,
			[imageUrl]= @imageUrl,
			[parentId]= @parentId,
			[updated] = GETDATE()
		WHERE [id]=@id;
		SET @returnVal = 1;
    END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_news]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_news]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_news] 
	-- Add the parameters for the stored procedure here
	@id int
	,@title nvarchar(500) 
   ,@seoUrl nvarchar(500) 
   ,@detail nvarchar(max) 
   ,@description nvarchar(500) = NULL
   ,@categoryId int 
   ,@published bit 
   ,@metaTag nvarchar(500) 
   ,@metaTitle nvarchar(500) 
   ,@metaKeyword nvarchar(500) 
   ,@viewCount int 
   ,@likeCount int 
   ,@newsImage varchar(500) 
   ,@relatedNewsIds varchar(500) 
   ,@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF EXISTS (SELECT TOP(1) * FROM sony_news WHERE [id]=@id)
    BEGIN
		UPDATE [sony_news]
		   SET [title] = @title
			  ,[seoUrl] = @seoUrl
			  ,[detail] = @detail
			  ,[categoryId] = @categoryId
			  ,[published] = @published
			  ,[metaTag] = @metaTag
			  ,[metaTitle] = @metaTitle
			  ,[metaKeyword] = @metaKeyword
			  ,[viewCount] = @viewCount
			  ,[likeCount] = @likeCount
			  ,[newsImage] = @newsImage
			  ,[relatedNewsIds] = @relatedNewsIds
			  ,[description] = @description
			  ,[updated] = GETDATE()
		 WHERE [id]=@id
    END
	
     SET @returnVal = 1;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_menu]    Script Date: 12/01/2013 00:14:30 ******/
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
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
    IF EXISTS (SELECT TOP (1) * FROM sony_menu WHERE name=@name)
    BEGIN
		UPDATE [sony_menu]
		   SET [isparent] = @isparent
			  ,[parentid] = @parentId
			  ,[seoUrl] = @seoUrl
			  ,[isadmin] = @isadmin
			  ,[visible] = @visible
			  ,[order] = @order
			  ,[updated] = @updated
		 WHERE [name]=@name
		 SET @returnVal = 1;
	END
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_faq]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_faq]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_faq] 
	-- Add the parameters for the stored procedure here
	@id int,
	@question nvarchar(2000) = '''', 
	@answer nvarchar(max) = '''',
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP(1) * FROM sony_faq WHERE id=@id)
	BEGIN
		UPDATE sony_faq 
			SET
				[question]=@question
				,[answer]=@answer
		WHERE id=@id;
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner_type]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner_photo]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_banner_photo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
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
	@sortOrder int = 0,
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
			[sortOrder] = @sortOrder,
			[updated] = GETDATE()
		WHERE [id]=@bannerPhotoId
		SET @returnVal = 1;
	END
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_update_album_comment]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_album_comment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_album_comment] 
	-- Add the parameters for the stored procedure here
	@id int,
	@comment nvarchar(max),
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF EXISTS (SELECT TOP(1) * FROM sony_album_comment WHERE [id]=@id)
    BEGIN
		UPDATE sony_album_comment
		SET
			[comment] = @comment
		WHERE [id]=@id
		SET @returnVal = 1;
	END
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_album_add_one_photo]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_album_add_one_photo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_album_add_one_photo] 
	-- Add the parameters for the stored procedure here
	@albumId int = 0,
	@photoId int = 0,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP(1) * FROM sony_album WHERE [id]=@albumId)
	BEGIN
		UPDATE sony_album
		SET
			[albumImage] = 
			CASE LTRIM(RTRIM([albumImage]))
			WHEN ''NULL'' THEN RTRIM(LTRIM(STR(@photoId)))
			WHEN '''' THEN RTRIM(LTRIM(STR(@photoId)))			
			ELSE LTRIM(RTRIM([albumImage])) + '','' + RTRIM(LTRIM(STR(@photoId)))
			END,
			[updated]=GETDATE()
		WHERE [id]=@albumId
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_album_add_album_image]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_update_album_add_album_image]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_album_add_album_image] 
	-- Add the parameters for the stored procedure here
	@albumId int = 0,
	@albumImage nvarchar(max),
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP(1) * FROM sony_album WHERE [id]=@albumId)
	BEGIN
		UPDATE sony_album
		SET
			[albumImage]=@albumImage,
			[updated]=GETDATE()
		WHERE [id]=@albumId
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_album]    Script Date: 12/01/2013 00:14:30 ******/
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
	@albumType int = NULL,
	@albumCover nvarchar(500) = NULL,
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
			[albumType] = @albumType,
			[albumCover] = @albumCover,
			[updated] = GETDATE()
		WHERE [id]=@id
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_set_photo_to_product]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_set_photo_to_product]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_set_photo_to_product] 
	-- Add the parameters for the stored procedure here
	@productId int = 0, 
	@imageUrls nvarchar(max) = '''',
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF NOT EXISTS (SELECT TOP (1) * FROM sony_product_images WHERE [productId]=@productId)
    BEGIN
		INSERT INTO sony_product_images ([productId], [imageUrls], [created], [updated])
		VALUES (@productId, @imageUrls, GETDATE(), GETDATE());
		SET @returnVal = (SELECT @@IDENTITY);
	END
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_set_banner_to_page]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_set_banner_to_page]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_set_banner_to_page] 
	-- Add the parameters for the stored procedure here
	@pageId int = 0, 
	@bannerId int = 0,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP(1) * FROM sony_page_banner WHERE [pageId]=@pageId AND [bannerId]=@bannerId)
	BEGIN
		INSERT INTO sony_page_banner ([pageId], [bannerId], [created], [updated])
		VALUES (@pageId, @bannerId, GETDATE(), GETDATE());
		SET @returnVal = (SELECT @@IDENTITY);
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_increase_photo_vote_count]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_increase_photo_vote_count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_increase_photo_vote_count]
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF EXISTS (SELECT TOP(1) * FROM sony_photo WHERE [id]=@id)
	BEGIN
		UPDATE sony_photo
		SET
			[voteCount] = [voteCount] + 1,
			[updated] = GETDATE()
		WHERE [id]=@id;
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_increase_photo_view_count]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_increase_photo_view_count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_increase_photo_view_count]
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF EXISTS (SELECT TOP(1) * FROM sony_photo WHERE [id]=@id)
	BEGIN
		UPDATE sony_photo
		SET
			[viewCount] = [viewCount] + 1,
			[updated] = GETDATE()
		WHERE [id]=@id;
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_increase_photo_like_count]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_increase_photo_like_count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_increase_photo_like_count]
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF EXISTS (SELECT TOP(1) * FROM sony_photo WHERE [id]=@id)
	BEGIN
		UPDATE sony_photo
		SET
			[likeCount] = [likeCount] + 1,
			[updated] = GETDATE()
		WHERE [id]=@id;
		SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_increase_album_view_count]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_increase_album_view_count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_increase_album_view_count] 
	-- Add the parameters for the stored procedure here
	@albumId int = 0,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF EXISTS (SELECT TOP(1) * FROM sony_album WHERE [id]=@albumId)
    BEGIN
		UPDATE sony_album
		SET
			[viewCount] = [viewCount] + 1,
			[updated] = GETDATE()
		WHERE [id]=@albumId
		SET @returnVal = 1;
    END
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_hide_menu]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_group_by_id]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_by_username]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_by_id]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_user_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_user_by_id] 
	-- Add the parameters for the stored procedure here
	@id int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TOP(1) * FROM sony_user WHERE [id]=@id;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_by_email]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_user_by_email]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		ndl0986
-- Create date: 2013/11/05 20:33:00
-- Description:	Store to search user by email
-- Return : return user information
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_user_by_email]
	-- Add the parameters for the stored procedure here
	@email nvarchar (150)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT * FROM sony_user WHERE [email]=@email;
END



' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_sony_center_by_id]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_sony_center_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_sony_center_by_id] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT sc.*,sa.albumCover as SonyCenterCover, sp.province as ProvinceName FROM sony_center sc
	LEFT JOIN sony_album sa
	ON sa.id = sc.centerImage
	LEFT JOIN sony_province sp
	ON sc.province = sp.id
	WHERE sc.[id]=@id;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_setting_by_name]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_setting_by_id]    Script Date: 12/01/2013 00:14:30 ******/
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
    SELECT TOP(1) * FROM sony_setting WHERE [id]=@id;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_product_category_by_id]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_product_category_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_product_category_by_id] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM sony_product_category WHERE [id]=@id;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_product_by_id]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_product_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_product_by_id] 
	-- Add the parameters for the stored procedure here
	@productId int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT sp.*,sa.albumCover AS ProductCover FROM sony_product sp
	LEFT JOIN sony_album sa 
	ON sa.id = sp.albumId
	WHERE sp.[id]=@productId;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_photo_vote_count]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_photo_vote_count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_photo_vote_count]
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @returnVal = (SELECT [voteCount] FROM sony_photo WHERE [id]=@id);
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_photo_view_count]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_photo_view_count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_photo_view_count]
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @returnVal = (SELECT [viewCount] FROM sony_photo WHERE [id]=@id);
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_photo_of_product]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_photo_of_product]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_photo_of_product] 
	-- Add the parameters for the stored procedure here
	@productId int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM sony_product_images WHERE [productId]=@productId;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_photo_like_count]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_photo_like_count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_photo_like_count]
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @returnVal = (SELECT [likeCount] FROM sony_photo WHERE [id]=@id);
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_photo_by_id]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_photo_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_photo_by_id]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM sony_photo WHERE [id]=@id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_menu_or_page_by_name]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_menu_or_page_by_id]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_group]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_by_name]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_by_id]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_pagebanner_by_id]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_pagebanner_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sony_sp_get_pagebanner_by_id] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TOP (1) * FROM sony_page_banner WHERE [id]=@id
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_title]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_num_order_size_col]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_num_order]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_id]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_news_category_by_id]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_news_category_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_news_category_by_id]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT * FROM sony_news_category WHERE [id]=@id;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_news_by_id]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_news_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_news_by_id]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT * FROM sony_news WHERE [id]=@id;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_menu_by_name]    Script Date: 12/01/2013 00:14:30 ******/
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
  FROM [sony_menu]
  WHERE [name] = @name
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_menu_by_id]    Script Date: 12/01/2013 00:14:30 ******/
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
  FROM [sony_menu] 
  WHERE [id] = @id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_list_banner_id_by_page_id]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_list_banner_id_by_page_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_list_banner_id_by_page_id] 
	-- Add the parameters for the stored procedure here
	@pageId int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [id] FROM sony_page_banner WHERE [pageId]=@pageId;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_list_banner_by_page_id]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_list_banner_by_page_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_list_banner_by_page_id] 
	-- Add the parameters for the stored procedure here
	@pageId int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--SELECT * FROM sony_page_banner WHERE [pageId]=@pageId;
	SELECT sb.* FROM sony_banner sb 
	INNER JOIN sony_page_banner spb ON spb.bannerId = sb.id
	WHERE spb.pageId = @pageId
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_category_child]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_category_child]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_category_child]
	-- Add the parameters for the stored procedure here
	@categoryId int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT * FROM sony_news_category WHERE [parentId]=@categoryId;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_type_by_name]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_type_by_id]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_photo_by_banner_id]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_id_by_page_id]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_banner_id_by_page_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_banner_id_by_page_id] 
	-- Add the parameters for the stored procedure here
	@pageId int = 0,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @returnVal = (SELECT [bannerId] FROM sony_page_banner WHERE [pageId]=@pageId);
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_by_id]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_user_group]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_user_by_username]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_user_by_username]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		ndl0986
-- Create date: 2013/11/05 20:33:00
-- Description:	Store to search user by username
-- Return : return user information
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_user_by_username]
	-- Add the parameters for the stored procedure here
	@username nvarchar (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT su.* FROM sony_user su
	INNER JOIN sony_user_group sug ON su.groupId = sug.id
	WHERE su.[username] LIKE ''%'' + @username + ''%'' AND sug.issuper <> 1 AND su.[status] = 1;
END



' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_user]    Script Date: 12/01/2013 00:14:30 ******/
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
	SELECT su.*,sug.groupname as groupname FROM sony_user su 
	LEFT JOIN sony_user_group sug ON su.groupId = sug.id
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_sony_center]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_sony_center]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_sony_center] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT sc.*,sa.albumCover AS SonyCenterCover, sp.province as ProvinceName FROM sony_center sc
	LEFT JOIN sony_album sa 
	ON sa.id = sc.centerImage
	LEFT JOIN sony_province sp
	ON sc.province = sp.id;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_setting]    Script Date: 12/01/2013 00:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_root_menu]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_root_menu]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[sony_sp_get_all_root_menu] 
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
  FROM [sony_menu] 
  WHERE parentid = 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_province_by_name]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_province_by_name]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_province_by_name]
	-- Add the parameters for the stored procedure here
	@province nvarchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
		SELECT * FROM sony_province WHERE [province] LIKE @province;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_province_by_id]    Script Date: 12/01/2013 00:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_province_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_province_by_id]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
		SELECT * FROM sony_province WHERE [id]=@id;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_province]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_province]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_province]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
		SELECT * FROM sony_province;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_product_category_child]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_product_category_child]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_product_category_child] 
	-- Add the parameters for the stored procedure here
	@productCategoryId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM sony_product_category WHERE parentId=@productCategoryId;
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_product_category]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_product_category]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_product_category] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM sony_product_category;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_product_by_category]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_product_by_category]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_product_by_category] 
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

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_product]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_product]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_product] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT sp.*,sa.albumCover AS ProductCover FROM sony_product sp
	LEFT JOIN sony_album sa 
	ON sa.id = sp.albumId;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_photo_by_username_albumid]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_photo_by_username_albumid]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_photo_by_username_albumid] 
	-- Add the parameters for the stored procedure here
	@userupload varchar(50),
	@albumid int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    DECLARE @sql nvarchar(max);
    DECLARE @listIds varchar(500);
    
    SET @listIds = (SELECT albumImage FROM sony_album WHERE [id]=@albumid);
    IF RTRIM(LTRIM(@listIds)) <> ''''
    BEGIN
		SET @sql = ''
			SELECT * FROM sony_photo WHERE [userupload]='' + @userupload + '' AND [id] IN ('' + @listIds + '');
		'';		
		EXEC (@sql)
	END
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_photo_by_username]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_photo_by_username]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_photo_by_username] 
	-- Add the parameters for the stored procedure here
	@userupload varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM sony_photo WHERE [userupload]=@userupload;
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_photo]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_photo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_photo] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM sony_photo
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_permission]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_page_banner]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_page_banner]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:  ndl0986
-- Create date: 
-- Description: 
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_page_banner] 
 -- Add the parameters for the stored procedure here
AS
BEGIN
 -- SET NOCOUNT ON added to prevent extra result sets from
 -- interfering with SELECT statements.
 SET NOCOUNT ON;

    -- Insert statements for procedure here
 SELECT * FROM sony_page_banner
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_page]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_news_with_pagenum_pagesize]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_news_with_pagenum_pagesize]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_news_with_pagenum_pagesize]
	-- Add the parameters for the stored procedure here
	@pageNum int = 0,
	@order int = NULL,
	@pageSize int = 20,
	@orderBy nvarchar(50) = NULL
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
    IF @order = NULL OR @order = 1
		BEGIN
			SET @direction = ''ASC'';
		END
    ELSE
		BEGIN
			SET @direction = ''DESC'';	
		END
	
	IF @orderBy = NULL
	BEGIN
		SET @orderBy = ''id'';
	END
	SET @totalPage = (SELECT COUNT(1) FROM sony_news)
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
		
		SET @sql = ''WITH MyQuery AS (SELECT ROW_NUMBER() OVER (ORDER BY ['' + @orderBy + ''] '' + @direction + '' ) as num,* FROM sony_news)
		SELECT * FROM MyQuery
		WHERE MyQuery.[num] > '' + CONVERT(nvarchar,@from) + '' AND MyQuery.[num] <= '' + CONVERT(nvarchar,@to) + '';'';
		
		EXEC (@sql);
	END
END




' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_news_by_list_category_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_news_by_list_category_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_news_by_list_category_id]
	-- Add the parameters for the stored procedure here
	@categoryIds varchar(500),
	@pageNum int = NULL,
	@pageSize int  = NULL,
	@order int = NULL,
	@orderBy nvarchar(50),
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    DECLARE @direction nvarchar(4);
	DECLARE @totalPage int = 0;
	DECLARE @from int = 0;
	DECLARE @to int = @from + @pageSize;
	DECLARE @totalBlock int = 1;
	DECLARE @sql nvarchar(max);
	DECLARE @condition nvarchar(500) = '' 1=1 '';
	
	
	IF @order = NULL OR @order = 1
		BEGIN
			SET @direction = ''ASC'';
		END
    ELSE
		BEGIN
			SET @direction = ''DESC'';	
		END
	
	IF @orderBy = NULL
	BEGIN
		SET @orderBy = ''[id]'';
	END
	
	-- remove unexpected 
	IF LEN(@categoryIds) = 1 AND @categoryIds = '',''
	BEGIN
		SET @categoryIds = ''0'';
	END
	SET @categoryIds = REPLACE(@categoryIds, '',,'','''');
	
	SET @condition = @condition + '' AND categoryId IN ('' + @categoryIds + '')'';
	
	DECLARE @myList AS TABLE (value int);
	DECLARE @total int = LEN(@categoryIds);
	DECLARE @temp int;
	DECLARE @n int = 1;
	WHILE @total > 0
	BEGIN
		IF CHARINDEX('','', @categoryIds, 1) > 0
		BEGIN
			SET @temp = (SELECT SUBSTRING(@categoryIds , @n, CHARINDEX( '','', @categoryIds, 1 ) - 1 ));
		END
		ELSE
		BEGIN
			SET @temp = @categoryIds;
		END
		IF CONVERT(int,@temp) <> 0
		BEGIN
			INSERT INTO @myList ([value]) VALUES(CONVERT(int,@temp));		
		END
		SET @n = @n + 2;
		SET @total = @total - 1;
	END
	SET @returnVal = (SELECT COUNT(1) FROM sony_news WHERE [categoryId] IN (SELECT value FROM @myList));
	SET @totalPage = (SELECT COUNT(1) FROM sony_news)
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
			
		--SET @sql = 
		--''WITH MyQuery AS (SELECT ROW_NUMBER() OVER (ORDER BY '' + @orderBy + '' '' + @direction + '' ) as num,* FROM sony_news 
		--WHERE '' + @condition + '')
		--SELECT * FROM MyQuery
		--WHERE MyQuery.[num] > '' + CONVERT(nvarchar,@from) + '' AND MyQuery.[num] <= '' + CONVERT(nvarchar,@to) + '';'';
		
		--EXEC (@sql);		
		IF @order = NULL OR @order = 1
			BEGIN
				WITH MyQuery AS (SELECT ROW_NUMBER() OVER (ORDER BY   @orderBy  ASC ) as num,* FROM sony_news 
				WHERE [categoryId] IN (SELECT value FROM @myList))
				SELECT * FROM MyQuery
				WHERE MyQuery.[num] > CONVERT(nvarchar,@from)  AND MyQuery.[num] <= CONVERT(nvarchar,@to) 
			END
		ELSE
			BEGIN
				WITH MyQuery AS (SELECT ROW_NUMBER() OVER (ORDER BY   @orderBy  DESC ) as num,* FROM sony_news 
				WHERE [categoryId] IN (SELECT value FROM @myList))
				SELECT * FROM MyQuery
				WHERE MyQuery.[num] > CONVERT(nvarchar,@from)  AND MyQuery.[num] <= CONVERT(nvarchar,@to) 
			END
		
	END
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_news_by_category_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_news_by_category_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_news_by_category_id]
	-- Add the parameters for the stored procedure here
	@categoryId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT * FROM sony_news WHERE [categoryId]=@categoryId;
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_news]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_news]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_news]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT * FROM sony_news;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_menu_by_parent]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_menu_by_parent]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 2013-11-06 20:45:00
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_menu_by_parent] 
	-- Add the parameters for the stored procedure here
	@parentId	int
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
  FROM [sony_menu] 
  WHERE [parentid] = @parentId
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_menu]    Script Date: 12/01/2013 00:14:29 ******/
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
	FROM [sony_menu]
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_faq]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_faq]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_faq]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT * FROM sony_faq;
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_category_same_parent]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_category_same_parent]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_category_same_parent] 
	-- Add the parameters for the stored procedure here
	@parentId int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM sony_news_category WHERE [parentId]=@parentId;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_category]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_category]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_category]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT * FROM sony_news_category;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_banner_type]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_banner]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album_photo_comment_by_photo_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_album_photo_comment_by_photo_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_album_photo_comment_by_photo_id] 
	-- Add the parameters for the stored procedure here
	@photoId int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM sony_album_comment
	WHERE [photoId]=@photoId;
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album_photo_comment_by_album_id_and_photo_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_album_photo_comment_by_album_id_and_photo_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_album_photo_comment_by_album_id_and_photo_id] 
	-- Add the parameters for the stored procedure here
	@albumId int = 0,
	@photoId int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM sony_album_comment
	WHERE [albumId]=@albumId AND [photoId]=@photoId;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album_normal]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_album_normal]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_album_normal]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT *,TotalPhoto = CASE LEN([albumImage])								
								WHEN NULL THEN 0
								ELSE (LEN([albumImage])-LEN(REPLACE([albumImage],'','',''''))) + 1
						   END FROM sony_album WHERE [albumType]=0;
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album_for_product_category]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_album_for_product_category]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_album_for_product_category]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT * FROM sony_album WHERE [albumType]=2;
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album_for_center]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_all_album_for_center]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_all_album_for_center]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT * FROM sony_album WHERE [albumType]=1;
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album]    Script Date: 12/01/2013 00:14:29 ******/
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
    SELECT *,TotalPhoto = CASE LEN([albumImage])								
								WHEN NULL THEN 0
								ELSE (LEN([albumImage])-LEN(REPLACE([albumImage],'','',''''))) + 1
						   END FROM sony_album;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_album_view_count]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_album_view_count]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_album_view_count] 
	-- Add the parameters for the stored procedure here
	@albumId int = 0,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @returnVal = (SELECT [viewCount] FROM sony_album WHERE [id]=@albumId);
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_album_photo]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_album_photo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_album_photo]
	-- Add the parameters for the stored procedure here
	@albumId int,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SET @returnVal = (SELECT (LEN([albumImage])-LEN(REPLACE([albumImage],'','',''''))) + 1 FROM sony_album WHERE [id]=@albumId);
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_album_list_photo]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_get_album_list_photo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_album_list_photo] 
	-- Add the parameters for the stored procedure here
	@listPhotoIds nvarchar(max) = '''',
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
		DECLARE @sql nvarchar(max);
		SET @sql = ''
			SELECT * FROM sony_photo 
			WHERE [id] IN ('' + @listPhotoIds + '')'';
		
		EXEC (@sql);
		
		SET @returnVal = (SELECT COUNT(1) FROM sony_photo 
		WHERE CHARINDEX(CONVERT(varchar,[id]),@listPhotoIds) > 0);
	
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_album_by_name]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_get_album_by_id]    Script Date: 12/01/2013 00:14:29 ******/
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
    SELECT *, TotalPhoto = CASE LEN([albumImage])								
								WHEN NULL THEN 0
								ELSE (LEN([albumImage])-LEN(REPLACE([albumImage],'','',''''))) + 1
						   END
		FROM sony_album WHERE [id]=@id;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_user_by_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_user_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_user_by_id] 
	-- Add the parameters for the stored procedure here
	@id int = 0,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    BEGIN TRANSACTION
	DELETE FROM sony_user WHERE [id]=@id;
	IF @@ERROR <> 0
	BEGIN
		ROLLBACK
		RETURN
	END
	COMMIT
	SET @returnVal = 1;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_sony_center_by_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_sony_center_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_sony_center_by_id] 
	-- Add the parameters for the stored procedure here
	@id int
   ,@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRANSACTION
    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP(1) * FROM sony_center WHERE [id]=@id)
	BEGIN
	DELETE FROM sony_center
	 WHERE [id]=@id;
	 IF @@ERROR <> 0
	 BEGIN
		ROLLBACK
		RETURN
	 END
	 COMMIT
     SET @returnVal = 1;
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_setting_by_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_setting_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_setting_by_id]
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRANSACTION
    -- Insert statements for procedure here
    DELETE FROM sony_setting
    WHERE [id]=@id;    
    IF @@ERROR <> 0
    BEGIN
		ROLLBACK
		RETURN
    END
    
    COMMIT
    SET @returnVal = 1;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_province_by_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_province_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_province_by_id] 
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
		BEGIN TRANSACTION
		DELETE FROM sony_province
		WHERE [id]=@id;
		IF @@ERROR <> 0
		BEGIN
			ROLLBACK
			RETURN
		END
		COMMIT
		SET @returnVal = 1;
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_product_category_by_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_product_category_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_product_category_by_id]
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRANSACTION
    -- Insert statements for procedure here
    DELETE FROM sony_product_category
    WHERE [id]=@id;    
    IF @@ERROR <> 0
    BEGIN
		ROLLBACK
		RETURN
    END
    
    UPDATE sony_product_category
    SET 
		[parentId] = 0
    WHERE [parentId]=@id;    
    IF @@ERROR <> 0
    BEGIN
		ROLLBACK
		RETURN
    END
    COMMIT
    SET @returnVal = 1;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_product_by_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_product_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_product_by_id]
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRANSACTION
    -- Insert statements for procedure here
    DELETE FROM sony_product
    WHERE [id]=@id;    
    IF @@ERROR <> 0
    BEGIN
		ROLLBACK
		RETURN
    END
    
    DELETE FROM sony_product_images
    WHERE [productId]=@id;    
    IF @@ERROR <> 0
    BEGIN
		ROLLBACK
		RETURN
    END
    COMMIT
    SET @returnVal = 1;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_photo_by_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_photo_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_photo_by_id]
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRANSACTION
    -- Insert statements for procedure here
    DELETE FROM sony_photo
    WHERE [id]=@id;    
    IF @@ERROR <> 0
    BEGIN
		ROLLBACK
		RETURN
    END
    
    COMMIT
    SET @returnVal = 1;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_permission_group]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_permission]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_pagebanner_by_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_pagebanner_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sony_sp_delete_pagebanner_by_id]
	-- Add the parameters for the stored procedure here
	@id int, 
	@returnVal int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @returnVal = 0;
    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP (1) * FROM sony_page_banner WHERE [id]=@id)
	BEGIN
		DELETE FROM sony_page_banner
		WHERE [id]=@id
		SET @returnVal = 1;
	END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_page_menu_permission]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_page_by_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_page_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_page_by_id]
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRANSACTION
    -- Insert statements for procedure here
    DELETE FROM sony_page
    WHERE [id]=@id;    
    IF @@ERROR <> 0
    BEGIN
		ROLLBACK
		RETURN
    END
    
    DELETE FROM sony_page_menu_permission
    WHERE [menuPageId]=@id AND [isPage]=1;    
    IF @@ERROR <> 0
    BEGIN
		ROLLBACK
		RETURN
    END
    
    DELETE FROM sony_page_banner
    WHERE [pageId]=@id;
    IF @@ERROR <> 0
    BEGIN
		ROLLBACK
		RETURN
    END
    
    COMMIT
    SET @returnVal = 1;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_news_category_by_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_news_category_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_news_category_by_id]
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    BEGIN TRANSACTION
    
    DELETE FROM sony_news_category WHERE [id]=@id;
    IF @@ERROR <> 0
    BEGIN
		ROLLBACK
		RETURN
    END
    COMMIT
    SET @returnVal = 1;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_news_by_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_news_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_news_by_id]
	-- Add the parameters for the stored procedure here
	@id int
   ,@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF EXISTS (SELECT TOP(1) * FROM sony_news WHERE [id]=@id)
    BEGIN
		DELETE FROM sony_news
		 WHERE [id]=@id;
		 IF @@ERROR <> 0
		 BEGIN
			ROLLBACK
			RETURN
		 END
    END
	
     SET @returnVal = 1;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_menu_by_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_menu_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_menu_by_id]
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRANSACTION
    -- Insert statements for procedure here
    DELETE FROM sony_menu
    WHERE [id]=@id;    
    IF @@ERROR <> 0
    BEGIN
		ROLLBACK
		RETURN
    END
    
    DELETE FROM sony_page_menu_permission
    WHERE [menuPageId]=@id AND [isPage]=0;    
    IF @@ERROR <> 0
    BEGIN
		ROLLBACK
		RETURN
    END
    
    COMMIT
    SET @returnVal = 1;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_faq_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_faq_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_faq_id]
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRANSACTION
    -- Insert statements for procedure here
    DELETE FROM sony_faq
    WHERE [id]=@id;    
    IF @@ERROR <> 0
    BEGIN
		ROLLBACK
		RETURN
    END    
    
    COMMIT
    SET @returnVal = 1;
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_banner_photo_by_banner_photo_id]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_banner_photo_by_banner_id]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_banner_by_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_banner_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_banner_by_id]
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN TRANSACTION
    -- Insert statements for procedure here
    DELETE FROM sony_banner
    WHERE [id]=@id;    
    IF @@ERROR <> 0
    BEGIN
		ROLLBACK
		RETURN
    END
    
    DELETE FROM sony_banner_photo
    WHERE [bannerId]=@id;    
    IF @@ERROR <> 0
    BEGIN
		ROLLBACK
		RETURN
    END
    
    DELEte FROM sony_page_banner
    WHERE [bannerId]=@id;
    IF @@ERROR <> 0
    BEGIN
		ROLLBACK
		RETURN
    END
    
    COMMIT
    SET @returnVal = 1;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_album_comment_by_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_album_comment_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_album_comment_by_id]
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF EXISTS( SELECT * FROM sony_album_comment WHERE [id]=@id)
    BEGIN
		BEGIN TRANSACTION
		
		DELETE FROM sony_album_comment
		WHERE [id]=@id;
		
		IF @@ERROR <> 0
		BEGIN
			ROLLBACK
			RETURN						
		END	
		
		COMMIT
		SET @returnVal = 1;
    END
END



' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_album_by_name]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_album_by_id]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_delete_album_by_id]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_delete_album_by_id]
	-- Add the parameters for the stored procedure here
	@id int,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF EXISTS( SELECT * FROM sony_album WHERE [id]=@id)
    BEGIN
		BEGIN TRANSACTION
		
		DELETE FROM sony_album
		WHERE [id]=@id;
		
		IF @@ERROR <> 0
		BEGIN
			ROLLBACK
			RETURN						
		END
		
		DELETE FROM sony_album_comment
		WHERE [albumId]=@id;
		
		IF @@ERROR <> 0
		BEGIN
			ROLLBACK
			RETURN
		END
		COMMIT
		SET @returnVal = 1;
    END
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_deactive_user]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_user_group]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_user]    Script Date: 12/01/2013 00:14:29 ******/
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
	@phone varchar(20),
	@email varchar(150),
	@productused nvarchar(200) = NULL,
	@indentity int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @indentity = 0;
    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP (1) username FROM sony_user WHERE username=@username OR [email]=@email) AND RTRIM(LTRIM(@username)) <> ''''
	BEGIN
		
		DECLARE @defaultGroupId int;
		SET @defaultGroupId = (SELECT TOP(1) [id] FROM sony_user_group WHERE [issuper]=0);
		INSERT INTO sony_user ([username], [password], [fullname], [status], [registered], [updated], [groupId], [phone], [email], [productused])
		VALUES (@username, @password, @fullname, @status, GETDATE(), GETDATE(), @defaultGroupId, @phone, @email, @productused);
		SET @indentity = (SELECT @@IDENTITY)
	END
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_sony_center]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_sony_center]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_sony_center] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(300)
   ,@address nvarchar(500) = NULL
   ,@phone nvarchar(50) = NULL
   ,@fax nvarchar(50) = NULL
   ,@province nvarchar(50) = NULL
   ,@description nvarchar(max) = NULL
   ,@retailLevel int = 0
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
		INSERT INTO [sony_center]
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
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_setting]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_province]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_province]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_province] 
	-- Add the parameters for the stored procedure here
	@province nvarchar(200),
	@provinceOrder int = NULL,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF NOT EXISTS (SELECT TOP(1) * FROM sony_province WHERE [province]=@province)
	BEGIN
		INSERT INTO sony_province ([province], [provinceOrder])
		VALUES (@province, @provinceOrder);
		SET @returnVal = (SELECT @@IDENTITY);
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_product_category]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_product_category]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_product_category] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(200),
	@parentId int = 0,
	@description nvarchar(max) = '''',
	@seoUrl nvarchar(500) = '''',
	@albumId int = NULL,
	@coverphoto varchar(500),
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP(1) * FROM sony_product_category WHERE [name]=@name)
	BEGIN
		IF @albumId = NULL
		BEGIN
			SET @albumId =0;
		END
		INSERT INTO sony_product_category ([name], [albumId], [parentId], [description], [seoUrl], [coverphoto], [created], [updated])
		VALUES (@name, @albumId, @parentId, @description, @seoUrl, @coverphoto, GETDATE(), GETDATE());
		SET @returnVal = (SELECT @@IDENTITY);
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_product]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_product]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_product] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(150) 
   ,@productType int 
   ,@categoryId int 
   ,@imageUrl nvarchar(max) 
   ,@shortDesc nvarchar(300) 
   ,@description text 
   ,@status bit 
   ,@fStop nvarchar(55) 
   ,@fMax nvarchar(55) 
   ,@fMin nvarchar(55) 
   ,@lensDetails nvarchar(150) 
   ,@numOfPiece int 
   ,@minDistance nvarchar(150) 
   ,@maxDistance nvarchar(150) 
   ,@lensDiameter nvarchar(150) 
   ,@price varchar(20)
   ,@albumId int
   ,@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP(1) * FROM sony_product WHERE [name]=@name)
	BEGIN
		INSERT INTO [sony_product]
           ([name]
           ,[productType]
           ,[categoryId]
           ,[imageUrl]
           ,[shortDesc]
           ,[description]
           ,[status]
           ,[fStop]
           ,[fMax]
           ,[fMin]
           ,[lensDetails]
           ,[numOfPiece]
           ,[minDistance]
           ,[maxDistance]
           ,[lensDiameter]
           ,[price]
           ,[albumId]
           ,[created]
           ,[updated])
     VALUES
           (@name
           ,@productType
           ,@categoryId 
           ,@imageUrl
           ,@shortDesc
           ,@description
           ,@status
           ,@fStop
           ,@fMax
           ,@fMin
           ,@lensDetails
           ,@numOfPiece
           ,@minDistance
           ,@maxDistance
           ,@lensDiameter
           ,@price
           ,@albumId
           ,GETDATE()
           ,GETDATE());
        IF @@ERROR <> 0
        BEGIN
			ROLLBACK
			RETURN
        END
        SELECT @returnVal = (SELECT @@IDENTITY);
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_photo]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_photo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_photo] 
	-- Add the parameters for the stored procedure here
	@title nvarchar(150),
	@filename nvarchar(150),
	@description nvarchar(500) = NULL,
	@redirectUrl nvarchar(500) = NULL,
	@status bit = NULL,
   @cameraName nvarchar(150)  = NULL,
   @cameraModel nvarchar(150)  = NULL,
   @fStop nvarchar(55)  = NULL,
   @exposureTime nvarchar(55)  = NULL,
   @iso nvarchar(55)  = NULL,
   @exposureBlas nvarchar(55)  = NULL,
   @focalLengh nvarchar(55)  = NULL,
   @maxAperture nvarchar(55)  = NULL,
   @materingMode nvarchar(55)  = NULL,
   @subjectDistance nvarchar(55)  = NULL,
   @flashMode nvarchar(55)  = NULL,
   @flashEnergy nvarchar(55)  = NULL,
   @viewCount int  = NULL,
   @voteCount int = NULL,
   @likeCount int = NULL,
   @userupload varchar(50),
   @returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP(1) * FROM sony_photo WHERE [title]=@title)
	BEGIN
		IF @status = NULL
		BEGIN
			SET @status = 1;
		END
		IF @viewCount = NULL
		BEGIN
			SET @viewCount = 0;
		END
		IF @voteCount = NULL
		BEGIN
			SET @voteCount = 0;
		END
		IF @likeCount = NULL
		BEGIN
			SET @likeCount = 0;
		END
		INSERT INTO [sony_photo]
           ([title]
           ,[filename]
           ,[description]
           ,[redirectUrl]
           ,[status]
           ,[cameraName]
           ,[cameraModel]
           ,[fStop]
           ,[exposureTime]
           ,[iso]
           ,[exposureBlas]
           ,[focalLengh]
           ,[maxAperture]
           ,[materingMode]
           ,[subjectDistance]
           ,[flashMode]
           ,[flashEnergy]
           ,[viewCount]
           ,[voteCount]
           ,[likeCount]
           ,[created]
           ,[updated]
           ,[userupload])
     VALUES
           (@title,
           @filename,
           @description,
           @redirectUrl,
           @status,
           @cameraName,
           @cameraModel,
           @fStop,
           @exposureTime,
           @iso,
           @exposureBlas,
           @focalLengh,
           @maxAperture,
           @materingMode,
           @subjectDistance,
           @flashMode,
           @flashEnergy,
           @viewCount,
           @voteCount,
           @likeCount,
           GETDATE(),
           GETDATE(),
           @userupload)
      SET @returnVal = (SELECT @@IDENTITY);
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_permission_group]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_permission]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_page_menu_permission]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_page]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_news_category]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_news_category]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_news_category]
	-- Add the parameters for the stored procedure here
	@name nvarchar(200) = '''',
	@seoUrl nvarchar(500) = '''',
	@imageUrl nvarchar(500) = '''',
	@parentId int = NULL,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF NOT EXISTS (SELECT * FROM sony_news_category WHERE [name]=@name)
    BEGIN
		IF @parentId = NULL
		BEGIN
			SET @parentId = 0;
		END
		INSERT INTO sony_news_category ([parentId], [name], [seoUrl], [imageUrl], [created], [updated])
		VALUES (@parentId, @name, @seoUrl, @imageUrl, GETDATE(), GETDATE());
		SET @returnVal = (SELECT @@IDENTITY);
    END
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_news]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_news]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sony_sp_add_news] 
	-- Add the parameters for the stored procedure here
	@title nvarchar(500) 
   ,@seoUrl nvarchar(500) = NULL
   ,@detail nvarchar(max) = NULL
   ,@description nvarchar(500) = NULL
   ,@categoryId int 
   ,@published bit 
   ,@metaTag nvarchar(500) = NULL
   ,@metaTitle nvarchar(500) = NULL
   ,@metaKeyword nvarchar(500) = NULL
   ,@viewCount int = 0
   ,@likeCount int = 0
   ,@newsImage varchar(500) = NULL
   ,@relatedNewsIds varchar(500) = NULL
   ,@returnVal int =0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [sony_news]
           ([title]
           ,[seoUrl]
           ,[detail]
           ,[description]
           ,[categoryId]
           ,[published]
           ,[metaTag]
           ,[metaTitle]
           ,[metaKeyword]
           ,[viewCount]
           ,[likeCount]
           ,[newsImage]
           ,[relatedNewsIds]
           ,[created]
           ,[updated])
     VALUES
           (@title
           ,@seoUrl
           ,@detail
           ,@description
           ,@categoryId
           ,@published
           ,@metaTag 
           ,@metaTitle
           ,@metaKeyword 
           ,@viewCount 
           ,@likeCount 
           ,@newsImage 
           ,@relatedNewsIds 
           ,GETDATE() 
           ,GETDATE() );
     SET @returnVal = (SELECT @@IDENTITY);
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_menu]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_menu]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sony_sp_add_menu] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(100),
	@isparent bit = true,
	@parentId int = 0,
	@seoUrl nvarchar(500),
	@isadmin bit = false,
	@visible bit = true,
	@order int = 0,
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
		INSERT INTO [sony_menu]
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
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_faq]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_faq]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_faq] 
	-- Add the parameters for the stored procedure here
	@question nvarchar(2000) = '''', 
	@answer nvarchar(max) = '''',
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP(1) * FROM sony_faq WHERE [question]=@question)
	BEGIN
		INSERT INTO sony_faq ([question], [answer])
		VALUES (@question, @answer);
		SET @returnVal = (SELECT @@IDENTITY);
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner_type]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner_photo]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_banner_photo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		nld0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_banner_photo] 
	-- Add the parameters for the stored procedure here
	@bannerId int, 
	@imageUrl nvarchar(500),
	@link2 nvarchar(500),
	@sortOrder int = 0,
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
		INSERT INTO sony_banner_photo ([bannerId], [imageUrl], [link2], [sortOrder], [created], [updated])
		VALUES (@bannerId, @imageUrl, @link2, @sortOrder, GETDATE(), GETDATE());
		SET @returnVal = (SELECT @@IDENTITY);
	END
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner]    Script Date: 12/01/2013 00:14:29 ******/
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
/****** Object:  StoredProcedure [dbo].[sony_sp_add_album_comment]    Script Date: 12/01/2013 00:14:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sony_sp_add_album_comment]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_album_comment] 
	-- Add the parameters for the stored procedure here
	@username nvarchar(50),
	@albumId int = 0,
	@photoId int = 0,
	@status bit = 1,
	@comment nvarchar(max) = '''',
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO sony_album_comment ([username], [albumId], [photoId], [status], [comment], [created])
	VALUES (@username, @albumId, @photoId, @status, @comment, GETDATE());
	SET @returnVal = (SELECT @@IDENTITY);
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_album]    Script Date: 12/01/2013 00:14:29 ******/
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
	@albumType int = NULL,
	@albumCover nvarchar(500) = NULL,
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    IF NOT EXISTS (SELECT TOP(1) * FROM sony_album WHERE [fullname]=@fullname)
    BEGIN
		INSERT INTO sony_album 
		([fullname], [albumCreator], [albumImage], [viewCount], [albumType], [albumCover], [created], [updated])
		VALUES (@fullname, @albumCreator, @albumImage, @viewCount, @albumType, @albumCover, GETDATE(), GETDATE());
		SET @returnVal = (SELECT @@IDENTITY);
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_action_log]    Script Date: 12/01/2013 00:14:29 ******/
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
