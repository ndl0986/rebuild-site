USE [sony_rebuild_alpha_test]
GO
/****** Object:  Table [dbo].[sony_setting]    Script Date: 12/01/2013 21:26:27 ******/
SET IDENTITY_INSERT [dbo].[sony_setting] ON
INSERT [dbo].[sony_setting] ([id], [name], [value], [created], [updated]) VALUES (1, N'smtpHost', N'smtp.gmail.com', CAST(0x0000A27D00181E17 AS DateTime), CAST(0x0000A27D00181E17 AS DateTime))
INSERT [dbo].[sony_setting] ([id], [name], [value], [created], [updated]) VALUES (2, N'smtpPort', N'587', CAST(0x0000A27D001849A3 AS DateTime), CAST(0x0000A27D001A3361 AS DateTime))
INSERT [dbo].[sony_setting] ([id], [name], [value], [created], [updated]) VALUES (3, N'adminMail', N'', CAST(0x0000A27D001865E2 AS DateTime), CAST(0x0000A27D001865E2 AS DateTime))
INSERT [dbo].[sony_setting] ([id], [name], [value], [created], [updated]) VALUES (4, N'adminMailFrom', N'', CAST(0x0000A27D001B86E9 AS DateTime), CAST(0x0000A27D001B86E9 AS DateTime))
INSERT [dbo].[sony_setting] ([id], [name], [value], [created], [updated]) VALUES (5, N'adminMailTo', N'', CAST(0x0000A27D001B8E46 AS DateTime), CAST(0x0000A27D001B8E46 AS DateTime))
INSERT [dbo].[sony_setting] ([id], [name], [value], [created], [updated]) VALUES (6, N'footer', N'2', CAST(0x0000A27C0167E626 AS DateTime), CAST(0x0000A27C0167E626 AS DateTime))
INSERT [dbo].[sony_setting] ([id], [name], [value], [created], [updated]) VALUES (7, N'Homepage', N'1', CAST(0x0000A27D00180AAE AS DateTime), CAST(0x0000A287016102DD AS DateTime))
INSERT [dbo].[sony_setting] ([id], [name], [value], [created], [updated]) VALUES (8, N'defaultgroupid', N'2', CAST(0x0000A28000B27CA4 AS DateTime), CAST(0x0000A28000B27CA4 AS DateTime))
INSERT [dbo].[sony_setting] ([id], [name], [value], [created], [updated]) VALUES (9, N'adminMailPass', N'', CAST(0x0000A28000000000 AS DateTime), CAST(0x0000A28000000000 AS DateTime))
INSERT [dbo].[sony_setting] ([id], [name], [value], [created], [updated]) VALUES (10, N'menu_kythuat', N'5', CAST(0x0000A2870150BB55 AS DateTime), CAST(0x0000A2870150BB55 AS DateTime))
SET IDENTITY_INSERT [dbo].[sony_setting] OFF
/****** Object:  Table [dbo].[sony_page]    Script Date: 12/01/2013 21:26:27 ******/
SET IDENTITY_INSERT [dbo].[sony_page] ON
INSERT [dbo].[sony_page] ([id], [title], [longtitle], [pageContent], [isNews], [seoUrl], [status], [created], [updated], [creator], [updator]) VALUES (1, N'Home page', N'Trang chủ', N'<div class="gr_border_content">
<div class="banner_content_home">
<div class="img" onclick="location.href=''https://alpha.sony.com.vn/home/alpha_shop/''"><img src="https://alpha.sony.com.vn/static/uploads/images/1332588242_A4X3.png" alt="" class="png" /></div>
<div class="text"><a href="https://alpha.sony.com.vn/home/alpha_shop/"><img src="https://alpha.sony.com.vn/static/uploads/images/1333583304_9jfM.png" alt="" class="png" /></a></div>
</div>
<div class="banner_content_home">
<div class="img" onclick="location.href=''https://alpha.sony.com.vn/home/gallery/''"><img src="https://alpha.sony.com.vn/static/uploads/images/1333583436_EW1z.png" alt="" class="png" /></div>
<div class="text"><a href="https://alpha.sony.com.vn/home/gallery/"><img src="https://alpha.sony.com.vn/static/uploads/images/1333583497_Yr6w.png" alt="" class="png" /></a></div>
</div>
<div class="banner_content_home">
<div class="img" onclick="location.href=''https://alpha.sony.com.vn/home/tintuc/''"><img src="https://alpha.sony.com.vn/static/uploads/images/1332998474_n2Bt.png" alt="" class="png" /></div>
<div class="text"><a href="https://alpha.sony.com.vn/home/tintuc/"><img src="https://alpha.sony.com.vn/static/uploads/images/1333583590_Zlhl.png" alt="" class="png" /></a></div>
</div>
<div class="banner_content_home">
<div class="img" onclick="location.href=''https://alpha.sony.com.vn/home/ongkinh/''"><img src="https://alpha.sony.com.vn/static/uploads/images/1333583649_fZfZ.png" alt="" class="png" /></div>
<div class="text"><a href="https://alpha.sony.com.vn/home/ongkinh/"><img src="https://alpha.sony.com.vn/static/uploads/images/1333583678_ll86.png" alt="" class="png" /></a></div>
</div>
<div class="banner_content_home">
<div class="img" onclick="location.href=''http://www.sony.com.vn/productcategory/digital-slr''"><img src="https://alpha.sony.com.vn/static/uploads/images/1333708782_DWGm.png" alt="" class="png" /></div>
<div class="text"><a href="http://www.sony.com.vn/productcategory/digital-slr"><img src="https://alpha.sony.com.vn/static/uploads/images/1333708872_NnyA.png" alt="" class="png" /></a></div>
</div>
<!-- SiteCatalyst code version: H.10 09jul08

Copyright 1997-2007 Omniture, Inc. More info available at

http://www.omniture.com -->  <script language="JavaScript" src="https://www.sony.com.vn/microsite/script/microsite_s_code.js"></script>    <script language="JavaScript">

	  /* You may give each page an identifying name, server, and channel on the next lines. */

	  s.pageName = "ms:SonyAlpha:Home"; //Pagename

	  s.prop1 = "http://www.sony.com.vn"; //Host of the server

	  s.prop2 = "VN"; //country

	  s.prop3 = "vi";  //language

	  s.prop4 = "hp";

	  s.prop5 = "i";

	  s.prop41 = "SonyAlpha"; // Microsite Name

	  s.prop42 = "SonyAlpha:Home"; // Microsite Section

	  s.hier5 = "microsite|SonyAlpha|Home"; //hier5

/************* DO NOT ALTER ANYTHING BELOW THIS LINE ! **************/

	  var s_code = s.t();

	  if (s_code) document.write(s_code);

</script>  <script language="JavaScript">

	  if(navigator.appVersion.indexOf(''MSIE'')>=0)document.write(unescape(''%3C'')+''\!-''+''-'')

</script>  <!-- End SiteCatalyst code version: H.10 09jul08 --></div>', 0, N'/page/1_homepage.aspx', 0, CAST(0x0000A274000630AF AS DateTime), CAST(0x0000A2740140AC89 AS DateTime), N'admin', N'admin')
INSERT [dbo].[sony_page] ([id], [title], [longtitle], [pageContent], [isNews], [seoUrl], [status], [created], [updated], [creator], [updator]) VALUES (2, N'Footer', N'Footer', N'<div class="bottom_footer">
<div id="footer">
<div id="logo_banner">
<ul>
    <li class="height_logo"><a target="_blank" href="http://asia.playstation.com/vn/en"><img src="https://alpha.sony.com.vn/static/images/1319507927_YbKc.jpg" alt="" /></a></li>
    <li class="height_logo"><a target="_blank" href="http://www.sonypictures.net/"><img src="https://alpha.sony.com.vn/static/images/1319507915_5ADp.jpg" alt="" /></a></li>
    <li class="height_logo"><a target="_blank" href="http://www.axn-asia.com/"><img src="https://alpha.sony.com.vn/static/images/1319507906_FFyX.jpg" alt="" /></a></li>
    <li class="height_logo"><a target="_blank" href="http://www.sonymusic.com/"><img src="https://alpha.sony.com.vn/static/images/1319507895_87XL.jpg" alt="" /></a></li>
</ul>
</div>
<div id="footer_info">
<ul>
    <li>Điều khoản sử dụng |</li>
    <li>&nbsp;Quyền ri&ecirc;ng tư |</li>
    <li>&nbsp;Li&ecirc;n hệ |</li>
    <li style="width:380px;margin:-2px 0 0 2px;"><img src="https://alpha.sony.com.vn/static/images/icon_global.jpg" alt="" /></li>
    <li>2011 &reg; Bản quyền thuộc sở hữu c&ocirc;ng ty Sony Việt Nam.</li>
</ul>
</div>
</div>
</div>', 0, N'/page/2_footer.aspx', 0, CAST(0x0000A27401452EA3 AS DateTime), CAST(0x0000A27C017342BB AS DateTime), N'admin', N'admin')
INSERT [dbo].[sony_page] ([id], [title], [longtitle], [pageContent], [isNews], [seoUrl], [status], [created], [updated], [creator], [updator]) VALUES (3, N'Header', N'Header', N'<div class="head">
<div class="header-top">
<div class="header-top-left">
<div class="header-top-logo"><!----------Logo-------------></div>
<div class="header-top-divider">&nbsp;</div>
<div class="header-top-national">Việt Nam</div>
</div>
<div class="header-top-right">
<div class="header-top-right-top">
<div class="header-top-location">&nbsp;</div>
</div>
<div class="header-top-right-bottom" style="position:relative;">
<div id="register">Đăng k&yacute;</div>
<div id="login">| <span>Đăng nhập</span></div>
<div class="header-top-menu"><a href="http://www.sony.com.vn/support/productcategory/e+mount+camera" style="color: #FFF;">Hỗ trợ NEX</a>  |   					<a href="http://www.sony.com.vn/support/productcategory/dslr+camera" style="color: #FFF;">Hỗ trợ DSLR</a></div>
</div>
</div>
</div>
</div>', 0, N'/page/3_header.aspx', 0, CAST(0x0000A2740148A23D AS DateTime), CAST(0x0000A2740148C806 AS DateTime), N'admin', N'admin')
INSERT [dbo].[sony_page] ([id], [title], [longtitle], [pageContent], [isNews], [seoUrl], [status], [created], [updated], [creator], [updator]) VALUES (4, N'Thong tin san pham', N'Thông tin sản phẩm', N'<div class="gr_border_content">
<div class="banner_content_home">
<div class="img"><a target="_blank" href="http://www.sony.com.vn/productcategory/dslr-camera"> 		<img src="https://alpha.sony.com.vn/static/uploads/images/1333583908_Cpa6.png" alt="" class="png" /> 		</a></div>
<div class="text"><a target="_blank" href="http://www.sony.com.vn/productcategory/dslr-camera"><img src="https://alpha.sony.com.vn/static/uploads/images/1333583934_KHCb.png" alt="" class="png" /></a></div>
</div>
<div class="banner_content_home">
<div class="img"><a target="_blank" href="http://www.sony.com.vn/productcategory/e-mount-camera"> 		<img src="https://alpha.sony.com.vn/static/uploads/images/1333583967_GwRF.png" alt="" class="png" /> 		</a></div>
<div class="text" style="margin-top:12px;"><a target="_blank" href="http://www.sony.com.vn/productcategory/e-mount-camera"><img src="https://alpha.sony.com.vn/static/uploads/images/1333583989_zp9z.png" alt="" class="png" /></a></div>
</div>
<div class="banner_content_home">
<div class="img"><a target="_blank" href="http://www.sony.com.vn/productcategory/dslr-camera-lens"> 		<img src="https://alpha.sony.com.vn/static/uploads/images/1333155128_3ewL.png" alt="" class="png" /> 		</a></div>
<div class="text" style="margin-top:12px;"><a target="_blank" href="http://www.sony.com.vn/productcategory/dslr-camera-lens"><img src="https://alpha.sony.com.vn/static/uploads/images/1333584052_CpaF.png" alt="" class="png" /></a></div>
</div>
<div class="banner_content_home">
<div class="img"><a target="_blank" href="http://www.sony.com.vn/productcategory/e-mount-lens"> 		<img src="https://alpha.sony.com.vn/static/uploads/images/1333584082_k66F.png" alt="" class="png" /> 		</a></div>
<div class="text" style="margin-top:12px;"><a target="_blank" href="http://www.sony.com.vn/productcategory/e-mount-lens"><img src="https://alpha.sony.com.vn/static/uploads/images/1333584105_WCke.png" alt="" class="png" /></a></div>
</div>
<div class="banner_content_home">
<div class="img"><a target="_blank" href="http://alpha.sony.com.vn/home/ongkinh"> 		<img src="https://alpha.sony.com.vn/static/uploads/images/1333709467_N5zh.png" alt="" class="png" /> 		</a></div>
<div class="text" style="margin-top:12px;"><a target="_blank" href="http://alpha.sony.com.vn/home/ongkinh"><img src="https://alpha.sony.com.vn/static/uploads/images/1333786089_mZ1X.png" alt="" class="png" /></a></div>
</div>
</div>', 0, N'/page/4_thongtinsanpham.aspx', 0, CAST(0x0000A27401498F71 AS DateTime), CAST(0x0000A27D0149E4C4 AS DateTime), N'admin', N'admin')
INSERT [dbo].[sony_page] ([id], [title], [longtitle], [pageContent], [isNews], [seoUrl], [status], [created], [updated], [creator], [updator]) VALUES (5, N'MenuRight', N'Menu phải của trang kỹ thuật chụp ảnh', N'<div class="menu_kythuat">
<ul>
    <li><a href="/news/category/6_nhiepanhcanban.aspx?mId=7" alt="Nhiếp ảnh căn bản">Nhiếp ảnh căn bản</a></li>
    <li><a href="/news/category/8_ongkinh.aspx?mId=7" alt="Ống  k&iacute;nh">Ống  k&iacute;nh</a></li>
    <li><a href="/news/category/9_phukien.aspx?mId=7" alt="Phụ kiện">Phụ kiện</a></li>
    <li><a href="/faq.aspx?id=6&amp;mId=7" alt="FAQ">C&acirc;u hỏi thường gặp</a></li>
</ul>
</div>', 0, N'/page/5_menuright.aspx', 0, CAST(0x0000A27A017D2FEF AS DateTime), CAST(0x0000A287015D5EDE AS DateTime), N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[sony_page] OFF
