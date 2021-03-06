USE [sony_rebuild_alpha_test]
GO
/****** Object:  Table [dbo].[sony_setting]    Script Date: 12/01/2013 22:45:40 ******/
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
/****** Object:  Table [dbo].[sony_page]    Script Date: 12/01/2013 22:45:40 ******/
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
/****** Object:  Table [dbo].[sony_faq]    Script Date: 12/01/2013 22:45:40 ******/
SET IDENTITY_INSERT [dbo].[sony_faq] ON
INSERT [dbo].[sony_faq] ([id], [question], [answer]) VALUES (1, N'Máy của Tôi chỉ có 1 ngôn ngữ duy nhất là tiếng Nhật, Tôi có thể thay đổi ngôn ngữ hay cài đặt firmware để chuyển qua tiếng Anh?', N'<p>&nbsp;<span style="font-family: Tahoma;">Với những m&aacute;y chỉ c&oacute; ng&ocirc;n ngữ tiếng Nhật, đ&acirc;y l&agrave; m&aacute;y chỉ d&agrave;nh ri&ecirc;ng cho nội địa nước Nhật n&ecirc;n kh&ocirc;ng thể chuyển đổi sang ng&ocirc;n ngữ kh&aacute;c bằng c&aacute;c phương thức n&acirc;ng cấp firmware hay can thiệp v&agrave;o phần cứng. V&agrave; khi c&oacute; firmware mới để n&acirc;ng cấp, với những m&aacute;y tiếng Nhật chỉ sử dụng firmware tiếng Nhật để n&acirc;ng cấp.</span></p>')
INSERT [dbo].[sony_faq] ([id], [question], [answer]) VALUES (2, N'Tôi muốn sử dụng ống kính của Hãng khác với NEX được không?', N'<p><span style="font-family: Tahoma;">Do thiết kế ng&agrave;m của NEX, khoảng c&aacute;ch từ ng&agrave;m ống k&iacute;nh đến bộ cảm biến ảnh của NEX được xem l&agrave; ngắn nhất so với c&aacute;c d&ograve;ng m&aacute;y ảnh DSLR. Ch&iacute;nh v&igrave; thế, Bạn c&oacute; thể sử dụng c&aacute;c Ống k&iacute;nh ng&agrave;m A của Alpha, ống k&iacute;nh Minolta, Canon, Nikon... v&agrave; kể cả Leica th&ocirc;ng qua ng&agrave;m chuyển đổi.</span></p>')
INSERT [dbo].[sony_faq] ([id], [question], [answer]) VALUES (3, N'Flash đi kèm theo NEX có tần suất thấp (GN 7), Tôi muốn có flash mạnh hơn thì nên mua loại nào?', N'<div style="margin: 0px; padding: 0px; outline: none 0px; font-family: Tahoma; text-align: justify;">Hiện nay, flash d&agrave;nh cho d&ograve;ng m&aacute;y NEX (trừ NEX-7) b&aacute;n rời chỉ c&oacute; 1 loại l&agrave; HVL-F20s, c&oacute; tần suất GN 20, mạnh hơn gần 3 lần so với flash đ&aacute;nh k&egrave;m theo m&aacute;y. Mức đ&aacute;nh xa tối đa khi sử dụng khẩu độ 3.5, ISO 100 l&agrave;: 5.7m (vui l&ograve;ng tham khảo &quot;Flash căn bản&quot; để hiểu th&ecirc;m c&aacute;ch t&iacute;nh khoảng c&aacute;ch flash).</div>
<div style="margin: 0px; padding: 0px; outline: none 0px; font-family: Tahoma; text-align: justify;">&nbsp; &nbsp;Với d&ograve;ng m&aacute;y NEX-7, do kết cấu ch&acirc;n đế gắn flash giống với d&ograve;ng m&aacute;y A-Mount của Sony Alpha n&ecirc;n c&oacute; thể sử dụng c&aacute;c loại flash của A-Mount như HVL-F20AM; HVL-F36AM; HVL-F42AM; HVL-F56AM; HVL-F43AM v&agrave; HVL-F58AM.</div>')
INSERT [dbo].[sony_faq] ([id], [question], [answer]) VALUES (4, N'Tôi đang sử dụng ống kính 16mm với NEX. Do nhu cầu, Tôi muốn chụp góc rộng hơn. Vậy Tôi nên mua thêm phụ kiện gì?', N'<div style="margin: 0px; padding: 0px; outline: none 0px; font-family: Tahoma; text-align: justify;">
<div style="margin: 0px; padding: 0px; outline: none 0px;"><span style="margin: 0px; padding: 0px; outline: none 0px; font-weight: bold;">Để c&oacute; thể chụp ảnh g&oacute;c rộng hơn th&ocirc;ng thường với lens 16mm, Bạn c&oacute; thể mua th&ecirc;m 1 trong 2 loại Converter sau:</span></div>
<div style="margin: 0px; padding: 0px; outline: none 0px;"><span class="Apple-tab-span" style="margin: 0px; padding: 0px; outline: none 0px; white-space: pre;"> </span>- Ultra Wide Converter (VCL-ECU1): Khi gắn v&agrave;o lens 16mm, ti&ecirc;u cự của ống k&iacute;nh sẽ rộng tới 12mm</div>
<div style="margin: 0px; padding: 0px; outline: none 0px;"><span class="Apple-tab-span" style="margin: 0px; padding: 0px; outline: none 0px; white-space: pre;"> </span>- Fisheye Converter (VCL-ECF1): Khi gắn lens 16mm, ti&ecirc;u cự ống k&iacute;nh sẽ rộng tới v&agrave; c&oacute; hiệu ứng cong như &quot;Mắt C&aacute;&quot;.</div>
<div style="margin: 0px; padding: 0px; outline: none 0px; text-align: center;">&nbsp;</div>
<div style="margin: 0px; padding: 0px; outline: none 0px; text-align: center;"><img src="https://alpha.sony.com.vn/static/uploads/editor/123.png" alt="" width="550" border="0" style="margin: 0px; padding: 0px; outline: none 0px;" /></div>
</div>')
INSERT [dbo].[sony_faq] ([id], [question], [answer]) VALUES (5, N'Trong ống kính Tôi có 1 hạt bụi, vậy có nên mang lên bảo hành để vệ sinh?', N'<p><span style="font-family: Tahoma; text-align: justify;">Mỗi ống k&iacute;nh của Sony khi xuất xưởng đều được kiểm tra kỹ lưỡng về c&acirc;n bằng n&eacute;t bằng hệ thống c&acirc;n bằng tối t&acirc;n nhằm đảm bảo chất lượng h&igrave;nh ảnh tốt nhất cho kh&aacute;ch h&agrave;ng. Trong qu&aacute; tr&igrave;nh sử dụng, việc lọt bụi v&agrave;o ống k&iacute;nh l&agrave; điều ho&agrave;n to&agrave;n c&oacute; thể xảy ra. Việc th&aacute;o lắp ống k&iacute;nh để lau ch&ugrave;i bụi sẽ dẫn đến khả năng bụi lọt v&agrave;o nhiều hơn sau đ&oacute;. Cho n&ecirc;n, với 1 hạt bụi trong ống k&iacute;nh của Bạn kh&ocirc;ng, n&oacute; kh&ocirc;ng l&agrave;m ảnh hưởng đến chất lượng ảnh khi chụp th&igrave; kh&ocirc;ng n&ecirc;n th&aacute;o ra để vệ sinh. H&atilde;y tiếp tục sử dụng ống k&iacute;nh đ&oacute; cho đến khi c&oacute; qu&aacute; nhiều bụi hoặc ảnh hưởng đến chất lượng ảnh, l&uacute;c đ&oacute; h&atilde;y mang đến trung t&acirc;m để vệ sinh.</span></p>
<div><span style="font-family: Tahoma; text-align: justify;"><br />
</span></div>')
INSERT [dbo].[sony_faq] ([id], [question], [answer]) VALUES (6, N'Máy ảnh của Tôi khi ngắm chụp thì bình thường nhưng khi ra ảnh thì có 1 vài chấm đen trên ảnh. Tôi cũng thử chụp nhiều góc độ khác nhau với nhiều ống kính khác nhau, vị trí các chấm đen đó đều giống nhau. Có phải máy ảnh của Tôi bị dơ bộ cảm biến?', N'<p><span style="font-family: Tahoma; text-align: justify;">Theo như m&ocirc; tả của Bạn, khả năng bị dơ bộ cảm biến l&agrave; cao nhất. Bạn c&oacute; thể mang m&aacute;y đến trung t&acirc;m bảo h&agrave;nh để nh&acirc;n vi&ecirc;n gi&uacute;p Bạn vệ sinh lại cảm biến.</span></p>')
INSERT [dbo].[sony_faq] ([id], [question], [answer]) VALUES (7, N'Tôi đang sử dụng NEX, tại sao Tôi không thể chụp hình được khi sử dụng ống kính của Hãng khác?', N'<div style="margin: 0px; padding: 0px; outline: none 0px; font-family: Tahoma; text-align: justify;">C&agrave;i đặt mặc định của NEX khi mới xuất xưởng th&igrave; ch&uacute;ng ta kh&ocirc;ng thể bấm chụp khi kh&ocirc;ng gắn ống k&iacute;nh. Việc sử dụng ống k&iacute;nh của h&atilde;ng kh&aacute;c th&ocirc;ng qua ng&agrave;m chuyển đổi, NEX sẽ kh&ocirc;ng nhận diện được &nbsp;ống k&iacute;nh v&agrave; cho rằng chưa c&oacute; ống k&iacute;nh. Để k&iacute;ch hoạt, Bạn thực hiện theo bước sau: Menu -&gt; Set Up -&gt; Release w/o lens: Enable.</div>
<div style="margin: 0px; padding: 0px; outline: none 0px; font-family: Tahoma; text-align: justify;">Lưu &yacute;: Với những ống k&iacute;nh kh&ocirc;ng phải của Sony, Bạn kh&ocirc;ng thể lấy n&eacute;t tự động được v&agrave; th&ocirc;ng số khẩu độ sẽ kh&ocirc;ng x&aacute;c định được (F--). Vui l&ograve;ng tham khảo &quot;T&ocirc;i muốn sử dụng ống k&iacute;nh của H&atilde;ng kh&aacute;c với NEX được kh&ocirc;ng?&quot; để hiểu th&ecirc;m.</div>')
INSERT [dbo].[sony_faq] ([id], [question], [answer]) VALUES (8, N'Tôi đang sử dụng NEX-3/NEX-5/SLT-A33, Tôi muốn chụp ảnh có những hiệu ứng màu sắc như Sony đang quảng cáo nhưng không tìm thấy các hiệu ứng đó trong máy trong khi máy ảnh của Bạn tôi lại có. Tại sao lại có sự khác biệt đó?', N'<div style="margin: 0px; padding: 0px; outline: none 0px; font-family: Tahoma; text-align: justify;">
<div style="margin: 0px; padding: 0px; outline: none 0px;">C&oacute; thể l&agrave; do bạn chưa n&acirc;ng cấp firmware l&ecirc;n mới nhất. Để kiểm tra phi&ecirc;n bản firmware, Bạn thực hiện theo c&aacute;c bước sau: Menu -&gt; Set Up -&gt; Version (trong phần Main Setting). Nếu version của Bạn chưa phải l&agrave; phi&ecirc;n bản mới nhất th&igrave; Bạn n&ecirc;n n&acirc;ng cấp qua đường dẫn dưới đ&acirc;y:</div>
<div style="margin: 0px; padding: 0px; outline: none 0px;"><span class="Apple-tab-span" style="margin: 0px; padding: 0px; outline: none 0px; white-space: pre;"> </span>+ SLT-A33 (version 2): http://www.sony-asia.com/support/download/458700/product/slt-a33l</div>
<div style="margin: 0px; padding: 0px; outline: none 0px;"><span class="Apple-tab-span" style="margin: 0px; padding: 0px; outline: none 0px; white-space: pre;"> </span>+ NEX-3 (Version 5): &nbsp; &nbsp;http://www.sony-asia.com/support/download/480898</div>
<div style="margin: 0px; padding: 0px; outline: none 0px;"><span class="Apple-tab-span" style="margin: 0px; padding: 0px; outline: none 0px; white-space: pre;"> </span>+ NEX-5 (Version 5): &nbsp; &nbsp;http://www.sony-asia.com/support/download/480910</div>
<div style="margin: 0px; padding: 0px; outline: none 0px;">&nbsp; &nbsp; Sau khi n&acirc;ng cấp firmware l&ecirc;n phi&ecirc;n bản mới nhất, trong phần shoot mode (NEX-3/NEX-5) hoặc SCN (SLT-A33) của m&aacute;y ảnh sẽ c&oacute; biểu tượng . Bạn h&atilde;y kh&aacute;m ph&aacute; biểu tượng đ&oacute; ^^</div>
</div>')
INSERT [dbo].[sony_faq] ([id], [question], [answer]) VALUES (9, N'Trong máy của Tôi có 2 chế độ Color Space là sRGB và AdobeRGB, Tôi nên sử dụng loại nào?', N'<div style="margin: 0px; padding: 0px; outline: none 0px; font-family: Tahoma; text-align: justify;">
<div style="margin: 0px; padding: 0px; outline: none 0px;">
<div style="margin: 0px; padding: 0px; outline: none 0px;">T&ugrave;y v&agrave;o mục đ&iacute;ch sử dụng m&agrave; chọn 1 trong 2 loại sau:</div>
<div style="margin: 0px; padding: 0px; outline: none 0px;">&nbsp; &nbsp; &nbsp;- sRGB: đa phần những tiệm rửa ảnh ở VN đều sử dụng chuẩn sRGB. Nếu Bạn c&oacute; nhu cầu in ảnh m&agrave; kh&ocirc;ng qua việc xử l&yacute; ảnh th&igrave; n&ecirc;n d&ugrave;ng sRGB.</div>
<div style="margin: 0px; padding: 0px; outline: none 0px;">&nbsp; &nbsp; &nbsp;- AdobeRGB: d&agrave;nh cho những ai c&oacute; đam m&ecirc; xử l&yacute; ảnh. Việc xử l&yacute; c&aacute;c t&ocirc;ng m&agrave;u như xanh (Green) v&agrave; đỏ (RED) sẽ dễ d&agrave;ng hơn do c&oacute; d&atilde;i m&agrave;u sắc rộng.</div>
</div>
</div>')
INSERT [dbo].[sony_faq] ([id], [question], [answer]) VALUES (10, N'Tôi thích chụp ảnh phơi sáng nhưng tại sao mỗi lần tôi chụp xong, máy bị đứng rất lâu rồi mới có thể chụp tiếp tấm thứ 2?', N'<div style="margin: 0px; padding: 0px; outline: none 0px; font-family: Tahoma; text-align: justify;">
<div style="margin: 0px; padding: 0px; outline: none 0px;">
<div style="margin: 0px; padding: 0px; outline: none 0px;">Theo như m&ocirc; tả của Bạn, việc đứng m&aacute;y rất l&acirc;u rồi mới c&oacute; thể chụp tiếp ch&iacute;nh l&agrave; qu&aacute; tr&igrave;nh khử nhiễu h&igrave;nh ảnh v&agrave; lưu dữ liệu v&agrave;o thẻ nhớ. Qu&aacute; tr&igrave;nh n&agrave;y sẽ tự động k&iacute;ch hoạt khi thời gian m&agrave;n trập mở (tốc độ m&agrave;n trập) d&agrave;i hơn 1 gi&acirc;y với nhiệm vụ khử nhiễu ph&aacute;t sinh khi sử dụng ISO cao trong qu&aacute; tr&igrave;nh phơi s&aacute;ng. Để gỡ bỏ qu&aacute; tr&igrave;nh n&agrave;y, bạn thực hiện theo những bước sau: Menu -&gt; Long Exposure NR -&gt; OFF.</div>
</div>
</div>')
INSERT [dbo].[sony_faq] ([id], [question], [answer]) VALUES (11, N'Tôi muốn in ngày tháng chụp lên hình, máy ảnh Alpha có làm được không?', N'<div style="margin: 0px; padding: 0px; outline: none 0px; font-family: Tahoma; text-align: justify;">
<div style="margin: 0px; padding: 0px; outline: none 0px;">
<div style="margin: 0px; padding: 0px; outline: none 0px;">Với tất cả c&aacute;c d&ograve;ng m&aacute;y ảnh ống k&iacute;nh th&aacute;o rời, chức năng hiển thị ng&agrave;y th&aacute;ng l&ecirc;n ảnh kh&ocirc;ng được t&iacute;ch hợp trong m&aacute;y. Để c&oacute; thể hiển thị ng&agrave;y th&aacute;ng l&ecirc;n ảnh, Bạn c&oacute; thể sử dụng c&aacute;c phầm mềm xử l&yacute; ảnh hoặc nhờ nh&acirc;n vi&ecirc;n xử l&yacute; ảnh tại cửa h&agrave;ng rọi ảnh quen thuộc của bạn.</div>
</div>
</div>')
SET IDENTITY_INSERT [dbo].[sony_faq] OFF
