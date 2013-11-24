USE [sony_rebuild_alpha_test]
GO
/****** Object:  Table [dbo].[sony_setting]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[sony_setting] ON
INSERT [dbo].[sony_setting] ([id], [name], [value], [created], [updated]) VALUES (1, N'smtpHost', N'smtp.gmail.com', CAST(0x0000A27D00181E17 AS DateTime), CAST(0x0000A27D00181E17 AS DateTime))
INSERT [dbo].[sony_setting] ([id], [name], [value], [created], [updated]) VALUES (2, N'smtpPort', N'587', CAST(0x0000A27D001849A3 AS DateTime), CAST(0x0000A27D001A3361 AS DateTime))
INSERT [dbo].[sony_setting] ([id], [name], [value], [created], [updated]) VALUES (3, N'adminMail', N'', CAST(0x0000A27D001865E2 AS DateTime), CAST(0x0000A27D001865E2 AS DateTime))
INSERT [dbo].[sony_setting] ([id], [name], [value], [created], [updated]) VALUES (4, N'adminMailFrom', N'', CAST(0x0000A27D001B86E9 AS DateTime), CAST(0x0000A27D001B86E9 AS DateTime))
INSERT [dbo].[sony_setting] ([id], [name], [value], [created], [updated]) VALUES (5, N'adminMailTo', N'', CAST(0x0000A27D001B8E46 AS DateTime), CAST(0x0000A27D001B8E46 AS DateTime))
INSERT [dbo].[sony_setting] ([id], [name], [value], [created], [updated]) VALUES (6, N'footer', N'2', CAST(0x0000A27C0167E626 AS DateTime), CAST(0x0000A27C0167E626 AS DateTime))
INSERT [dbo].[sony_setting] ([id], [name], [value], [created], [updated]) VALUES (7, N'Homepage', N'25', CAST(0x0000A27D00180AAE AS DateTime), CAST(0x0000A27D0146193D AS DateTime))
INSERT [dbo].[sony_setting] ([id], [name], [value], [created], [updated]) VALUES (8, N'defaultgroupid', N'2', CAST(0x0000A28000B27CA4 AS DateTime), CAST(0x0000A28000B27CA4 AS DateTime))
INSERT [dbo].[sony_setting] ([id], [name], [value], [created], [updated]) VALUES (9, N'adminMailPass', N'', CAST(0x0000A28000000000 AS DateTime), CAST(0x0000A28000000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[sony_setting] OFF
/****** Object:  Table [dbo].[sony_province]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_province](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[province] [nvarchar](200) NOT NULL,
	[provinceOrder] [int] NOT NULL,
 CONSTRAINT [PK_sony_province] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[sony_province] ON
INSERT [dbo].[sony_province] ([id], [province], [provinceOrder]) VALUES (1, N'TP. Hồ Chí Minh', 1)
INSERT [dbo].[sony_province] ([id], [province], [provinceOrder]) VALUES (2, N'Hà Nội', 2)
INSERT [dbo].[sony_province] ([id], [province], [provinceOrder]) VALUES (3, N'Cần Thơ', 3)
INSERT [dbo].[sony_province] ([id], [province], [provinceOrder]) VALUES (4, N'Khánh Hòa', 4)
INSERT [dbo].[sony_province] ([id], [province], [provinceOrder]) VALUES (5, N'Đà Nẵng', 5)
INSERT [dbo].[sony_province] ([id], [province], [provinceOrder]) VALUES (6, N'Ninh Bình', 7)
INSERT [dbo].[sony_province] ([id], [province], [provinceOrder]) VALUES (7, N'Hải Phòng', 6)
SET IDENTITY_INSERT [dbo].[sony_province] OFF
/****** Object:  Table [dbo].[sony_product_type]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[sony_product_images]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_product_images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NOT NULL,
	[imageUrls] [nvarchar](max) NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
 CONSTRAINT [PK_sony_product_images] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_product_category]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sony_product_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[parentId] [int] NOT NULL,
	[description] [nvarchar](max) NULL,
	[seoUrl] [nvarchar](500) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
	[albumId] [int] NULL,
	[coverphoto] [varchar](500) NULL,
 CONSTRAINT [PK_sony_product_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sony_product]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sony_product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
	[productType] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[imageUrl] [nvarchar](max) NULL,
	[shortDesc] [nvarchar](300) NULL,
	[description] [text] NULL,
	[status] [bit] NOT NULL,
	[fStop] [nvarchar](55) NULL,
	[fMax] [nvarchar](55) NULL,
	[fMin] [nvarchar](55) NULL,
	[lensDetails] [nvarchar](150) NULL,
	[numOfPiece] [int] NULL,
	[minDistance] [nvarchar](150) NULL,
	[maxDistance] [nvarchar](150) NULL,
	[lensDiameter] [nvarchar](150) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
	[price] [varchar](20) NULL,
	[albumId] [int] NULL,
 CONSTRAINT [PK_sony_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sony_photo]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sony_photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](150) NOT NULL,
	[filename] [varchar](500) NOT NULL,
	[description] [nvarchar](500) NULL,
	[redirectUrl] [nvarchar](500) NULL,
	[status] [bit] NOT NULL,
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
	[viewCount] [int] NOT NULL,
	[voteCount] [int] NOT NULL,
	[likeCount] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_photo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sony_permission_group]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[sony_permission]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[sony_page_menu_permission]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[sony_page_banner]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[sony_page]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	[creator] [nvarchar](50) NOT NULL,
	[updator] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_sony_page] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
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
INSERT [dbo].[sony_page] ([id], [title], [longtitle], [pageContent], [isNews], [seoUrl], [status], [created], [updated], [creator], [updator]) VALUES (5, N'test thu editor', N'test thu editor', N'<p>&nbsp;test 12344</p>', 0, N'/page/5_testthueditor.aspx', 0, CAST(0x0000A27A017D2FEF AS DateTime), CAST(0x0000A27D0157DCAB AS DateTime), N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[sony_page] OFF
/****** Object:  Table [dbo].[sony_news_category]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sony_news_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[seoUrl] [nvarchar](500) NULL,
	[imageUrl] [varchar](500) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sony_news]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sony_news](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](500) NOT NULL,
	[seoUrl] [nvarchar](500) NULL,
	[detail] [nvarchar](max) NULL,
	[description] [nvarchar](500) NULL,
	[categoryId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[metaTag] [nvarchar](500) NULL,
	[metaTitle] [nvarchar](500) NULL,
	[metaKeyword] [nvarchar](500) NULL,
	[viewCount] [int] NOT NULL,
	[likeCount] [int] NOT NULL,
	[newsImage] [varchar](500) NULL,
	[relatedNewsIds] [varchar](500) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_new] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sony_menu]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[isparent] [bit] NOT NULL,
	[parentid] [int] NOT NULL,
	[seoUrl] [nvarchar](500) NULL,
	[isadmin] [bit] NOT NULL,
	[visible] [bit] NOT NULL,
	[order] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_file]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_file](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[filename] [nvarchar](150) NOT NULL,
	[fullPath] [nvarchar](500) NOT NULL,
	[filetype] [int] NOT NULL,
	[status] [bit] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_files] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_center]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sony_center](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](300) NOT NULL,
	[address] [nvarchar](500) NULL,
	[phone] [nvarchar](50) NULL,
	[fax] [nvarchar](50) NULL,
	[province] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
	[retailLevel] [int] NOT NULL,
	[centerImage] [varchar](500) NULL,
	[opentime] [nvarchar](50) NULL,
	[closetime] [nvarchar](50) NULL,
	[longitude] [nvarchar](20) NULL,
	[latitude] [nvarchar](20) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_center] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sony_banner_type]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[sony_banner_photo]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_banner_photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bannerId] [int] NOT NULL,
	[imageUrl] [nvarchar](500) NULL,
	[link2] [nvarchar](500) NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
	[sortOrder] [int] NOT NULL,
 CONSTRAINT [PK_sony_banner_photo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_banner]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[sony_album_photo]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[sony_album_comment]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_album_comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[albumId] [int] NOT NULL,
	[photoId] [int] NOT NULL,
	[status] [bit] NOT NULL,
	[comment] [nvarchar](max) NULL,
	[created] [datetime] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_sony_album_comment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_album]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_album](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](500) NOT NULL,
	[albumCreator] [nvarchar](50) NOT NULL,
	[albumImage] [nvarchar](500) NULL,
	[albumType] [int] NULL,
	[viewCount] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
	[albumCover] [nvarchar](500) NULL,
 CONSTRAINT [PK_sony_album] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sony_action_log]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_action_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[created] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_action_log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_current_max_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_current_max_id] 
	-- Add the parameters for the stored procedure here
	@tableName nvarchar(128) = '', 
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @returnVal = (SELECT IDENT_CURRENT(@tableName))
END
GO
/****** Object:  Table [dbo].[sony_user_group]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sony_user_group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[groupname] [nvarchar](150) NOT NULL,
	[issuper] [bit] NOT NULL,
	[created] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_sony_user_group] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[sony_user_group] ON
INSERT [dbo].[sony_user_group] ([id], [groupname], [issuper], [created], [updated]) VALUES (1, N'Nhóm Quản Trị', 1, CAST(0x0000A28000AF6F38 AS DateTime), CAST(0x0000A28000AF5E89 AS DateTime))
INSERT [dbo].[sony_user_group] ([id], [groupname], [issuper], [created], [updated]) VALUES (2, N'Nhóm Người Dùng Thường', 0, CAST(0x0000A28000B0373C AS DateTime), CAST(0x0000A28000B0373B AS DateTime))
SET IDENTITY_INSERT [dbo].[sony_user_group] OFF
/****** Object:  Table [dbo].[sony_user]    Script Date: 11/24/2013 23:59:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sony_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](200) NOT NULL,
	[fullname] [nvarchar](200) NULL,
	[status] [bit] NOT NULL,
	[groupId] [int] NOT NULL,
	[registered] [datetime] NOT NULL,
	[updated] [datetime] NOT NULL,
	[phone] [varchar](20) NULL,
	[email] [varchar](150) NULL,
 CONSTRAINT [PK_sony_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [sony_user_unique] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[sony_user] ON
INSERT [dbo].[sony_user] ([id], [username], [password], [fullname], [status], [groupId], [registered], [updated], [phone], [email]) VALUES (1, N'admin', N'YWRtaW5AMTIzIQ==', N'Admin', 1, 1, CAST(0x0000A280018835FF AS DateTime), CAST(0x0000A280018835FF AS DateTime), N'0987654321', N'admin@mail.alpha.sony.com')
SET IDENTITY_INSERT [dbo].[sony_user] OFF
/****** Object:  StoredProcedure [dbo].[sony_sp_get_lastest_news_with_fields]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	
	DECLARE @sql nvarchar(max) = '';
	
    -- Insert statements for procedure here
 
		
	SET @sql = 
	'
		SELECT TOP(' + CONVERT(varchar,@num) + ') ' + @fields + ' FROM sony_news ORDER BY [id] DESC
	';
		
		EXEC (@sql);
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_lastest_news]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_password_to_default]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_pass]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_group]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user_fullname_status]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_user]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_sony_center]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
		UPDATE [sony_rebuild_alpha].[dbo].[sony_center]
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_setting]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_setting] 
	-- Add the parameters for the stored procedure here
	@id int,
	@name varchar(50) = '', 
	@value varchar(150) = '',
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_province]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_product_category]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
	@description nvarchar(max) = '',
	@seoUrl nvarchar(500) = '',
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_product]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
		UPDATE [sony_rebuild_alpha].[dbo].[sony_product]
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_photo]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
   @returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP(1) * FROM sony_photo WHERE [id]=@id)
	BEGIN
		UPDATE [sony_rebuild_alpha].[dbo].[sony_photo]
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
		  ,[updated] = GETDATE()
		WHERE [id]=@id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_permission]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_page_by_title]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_page_by_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_news_category]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_news_category]
	-- Add the parameters for the stored procedure here
	@id int,
	@name nvarchar(200) = '',
	@seoUrl nvarchar(500) = '',
	@imageUrl nvarchar(500) = '',
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_news]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
		UPDATE [sony_rebuild_alpha].[dbo].[sony_news]
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_menu]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
		UPDATE [sony_rebuild_alpha].[dbo].[sony_menu]
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner_type]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner_photo]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_banner]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_album_comment]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_album_add_one_photo]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
			WHEN 'NULL' THEN RTRIM(LTRIM(STR(@photoId)))
			WHEN '' THEN RTRIM(LTRIM(STR(@photoId)))			
			ELSE LTRIM(RTRIM([albumImage])) + ',' + RTRIM(LTRIM(STR(@photoId)))
			END,
			[updated]=GETDATE()
		WHERE [id]=@albumId
		SET @returnVal = 1;
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_album_add_album_image]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_update_album]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_update_album] 
	-- Add the parameters for the stored procedure here
	@id int,
	@fullname nvarchar(500), 
	@albumCreator nvarchar(50) = 'admin',
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_set_photo_to_product]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ndl0986
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_set_photo_to_product] 
	-- Add the parameters for the stored procedure here
	@productId int = 0, 
	@imageUrls nvarchar(max) = '',
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_set_banner_to_page]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_increase_photo_vote_count]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_increase_photo_view_count]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_increase_photo_like_count]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_increase_album_view_count]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_hide_menu]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_group_by_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_by_username]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_user_by_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_sony_center_by_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_setting_by_name]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_setting_by_name]
	-- Add the parameters for the stored procedure here
	@name varchar(50) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT TOP(1) [value] FROM sony_setting WHERE [name]=@name;
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_setting_by_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_product_category_by_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_product_by_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_photo_vote_count]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_photo_view_count]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_photo_of_product]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_photo_like_count]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_photo_by_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_menu_or_page_by_name]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
    -- case check by menu's name
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_menu_or_page_by_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
    -- case check by menu's name
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_of_group]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_by_name]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_permission_by_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_pagebanner_by_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sony_sp_get_pagebanner_by_id] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TOP (1) * FROM sony_page_banner WHERE [id]=@id
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_title]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_num_order_size_col]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	@orderBy nvarchar(50) = 'id'
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
	DECLARE @sql nvarchar(max) = '';
	
    -- Insert statements for procedure here
    IF @order = 1
    BEGIN
		SET @direction = 'ASC';
    END
    ELSE
    BEGIN
		SET @direction = 'DESC';
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
		
		SET @sql = 'WITH MyQuery AS (SELECT ROW_NUMBER() OVER (ORDER BY [' + @orderBy + '] ' + @direction + ' ) as num,* FROM sony_page)
		SELECT * FROM MyQuery
		WHERE MyQuery.[num] > ' + CONVERT(nvarchar,@from) + ' AND MyQuery.[num] <= ' + CONVERT(nvarchar,@to) + ';';
		
		EXEC (@sql);
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_num_order]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	DECLARE @orderBy nvarchar(50) = 'id';
	DECLARE @direction nvarchar(4);
	DECLARE @totalPage int = 0;
	DECLARE @pageSize int = 20;
	DECLARE @from int = 0;
	DECLARE @to int = @from + @pageSize;
	DECLARE @totalBlock int = 1;
	DECLARE @sql nvarchar(max) = '';
	
    -- Insert statements for procedure here
    IF @order = 1
    BEGIN
		SET @direction = 'ASC';
    END
    ELSE
    BEGIN
		SET @direction = 'DESC';
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
		
		SET @sql = 'WITH MyQuery AS (SELECT ROW_NUMBER() OVER (ORDER BY [' + @orderBy + '] ' + @direction + ' ) as num,* FROM sony_page)
		SELECT * FROM MyQuery
		WHERE MyQuery.[num] > ' + CONVERT(nvarchar,@from) + ' AND MyQuery.[num] <= ' + CONVERT(nvarchar,@to) + ';';
		
		EXEC (@sql);
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_page_by_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_news_category_by_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_news_by_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_menu_by_name]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_menu_by_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_list_banner_id_by_page_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_list_banner_by_page_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_category_child]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_type_by_name]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_type_by_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_photo_by_banner_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_id_by_page_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_banner_by_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_user_group]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_user_by_username]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	WHERE su.[username] LIKE '%' + @username + '%' AND sug.issuper <> 1 AND su.[status] = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_user]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_sony_center]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_setting]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_root_menu]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
  FROM [sony_rebuild_alpha].[dbo].[sony_menu] 
  WHERE parentid = 0
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_province_by_name]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_province_by_id]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_province]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_product_category_child]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_product_category]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_product_by_category]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_product]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_photo]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_permission]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_page_banner]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_page]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_news_with_pagenum_pagesize]    Script Date: 11/24/2013 23:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	DECLARE @sql nvarchar(max) = '';
	
    -- Insert statements for procedure here
    IF @order = NULL OR @order = 1
		BEGIN
			SET @direction = 'ASC';
		END
    ELSE
		BEGIN
			SET @direction = 'DESC';	
		END
	
	IF @orderBy = NULL
	BEGIN
		SET @orderBy = 'id';
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
		
		SET @sql = 'WITH MyQuery AS (SELECT ROW_NUMBER() OVER (ORDER BY [' + @orderBy + '] ' + @direction + ' ) as num,* FROM sony_news)
		SELECT * FROM MyQuery
		WHERE MyQuery.[num] > ' + CONVERT(nvarchar,@from) + ' AND MyQuery.[num] <= ' + CONVERT(nvarchar,@to) + ';';
		
		EXEC (@sql);
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_news_by_list_category_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	@orderBy nvarchar(50)
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
	DECLARE @condition nvarchar(500) = ' 1=1 ';
	
	
	IF @order = NULL OR @order = 1
		BEGIN
			SET @direction = 'ASC';
		END
    ELSE
		BEGIN
			SET @direction = 'DESC';	
		END
	
	IF @orderBy = NULL
	BEGIN
		SET @orderBy = '[id]';
	END
	
	
	SET @condition = @condition + ' AND categoryId IN (' + @categoryIds + ')';
	
	
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
			
		SET @sql = 
		'WITH MyQuery AS (SELECT ROW_NUMBER() OVER (ORDER BY ' + @orderBy + ' ' + @direction + ' ) as num,* FROM sony_news 
		WHERE ' + @condition + ')
		SELECT * FROM MyQuery
		WHERE MyQuery.[num] > ' + CONVERT(nvarchar,@from) + ' AND MyQuery.[num] <= ' + CONVERT(nvarchar,@to) + ';';
		
		EXEC (@sql);		
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_news_by_category_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_news]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_menu_by_parent]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
  FROM [sony_rebuild_alpha].[dbo].[sony_menu] 
  WHERE [parentid] = @parentId
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_menu]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_category_same_parent]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_category]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_banner_type]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_banner]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album_photo_comment_by_photo_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album_photo_comment_by_album_id_and_photo_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album_normal]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
								ELSE (LEN([albumImage])-LEN(REPLACE([albumImage],',',''))) + 1
						   END FROM sony_album WHERE [albumType]=0;
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album_for_product_category]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album_for_center]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_all_album]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
								ELSE (LEN([albumImage])-LEN(REPLACE([albumImage],',',''))) + 1
						   END FROM sony_album;
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_album_view_count]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_album_photo]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
    SET @returnVal = (SELECT (LEN([albumImage])-LEN(REPLACE([albumImage],',',''))) + 1 FROM sony_album WHERE [id]=@albumId);
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_album_list_photo]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_get_album_list_photo] 
	-- Add the parameters for the stored procedure here
	@listPhotoIds nvarchar(max) = '',
	@returnVal int = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
		DECLARE @sql nvarchar(max);
		SET @sql = '
			SELECT * FROM sony_photo 
			WHERE [id] IN (' + @listPhotoIds + ')';
		
		EXEC (@sql);
		
		SET @returnVal = (SELECT COUNT(1) FROM sony_photo 
		WHERE CHARINDEX(CONVERT(varchar,[id]),@listPhotoIds) > 0);
	
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_album_by_name]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_get_album_by_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
								ELSE (LEN([albumImage])-LEN(REPLACE([albumImage],',',''))) + 1
						   END
		FROM sony_album WHERE [id]=@id;
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_user_by_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_sony_center_by_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_setting_by_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_province_by_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_product_category_by_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_product_by_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_photo_by_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_permission_group]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_permission]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_pagebanner_by_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sony_sp_delete_pagebanner_by_id]
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
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_page_menu_permission]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_page_by_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_news_category_by_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_news_by_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_menu_by_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_banner_photo_by_banner_photo_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_banner_photo_by_banner_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_banner_by_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_album_comment_by_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_album_by_name]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_delete_album_by_id]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_deactive_user]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_user_group]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_user]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	@indentity int OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SET @indentity = 0;
    -- Insert statements for procedure here
	IF NOT EXISTS (SELECT TOP (1) username FROM sony_user WHERE username=@username) AND RTRIM(LTRIM(@username)) <> ''
	BEGIN
		
		DECLARE @defaultGroupId int;
		SET @defaultGroupId = (SELECT TOP(1) [id] FROM sony_user_group WHERE [issuper]=0);
		INSERT INTO sony_user ([username], [password], [fullname], [status], [registered], [updated], [groupId], [phone], [email])
		VALUES (@username, @password, @fullname, @status, GETDATE(), GETDATE(), @defaultGroupId, @phone, @email);
		SET @indentity = (SELECT @@IDENTITY)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_sony_center]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
   ,@retailLevel bit = 0
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
		INSERT INTO [sony_rebuild_alpha].[dbo].[sony_center]
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_setting]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_setting] 
	-- Add the parameters for the stored procedure here
	@name varchar(50) = '', 
	@value varchar(150) = '',
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_province]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_product_category]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_product_category] 
	-- Add the parameters for the stored procedure here
	@name nvarchar(200),
	@parentId int = 0,
	@description nvarchar(max) = '',
	@seoUrl nvarchar(500) = '',
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_product]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
		INSERT INTO [sony_rebuild_alpha].[dbo].[sony_product]
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
        SELECT @returnVal = (SELECT @@IDENTITY);
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_photo]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
		INSERT INTO [sony_rebuild_alpha].[dbo].[sony_photo]
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
           ,[updated])
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
           GETDATE())
      SET @returnVal = (SELECT @@IDENTITY);
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_permission_group]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_permission]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_page_menu_permission]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_page]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_news_category]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_news_category]
	-- Add the parameters for the stored procedure here
	@name nvarchar(200) = '',
	@seoUrl nvarchar(500) = '',
	@imageUrl nvarchar(500) = '',
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_news]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sony_sp_add_news] 
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
	INSERT INTO [sony_rebuild_alpha].[dbo].[sony_news]
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
END
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_menu]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sony_sp_add_menu] 
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner_type]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner_photo]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_banner]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_album_comment]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
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
	@comment nvarchar(max) = '',
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_album]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_album] 
	-- Add the parameters for the stored procedure here
	@fullname nvarchar(500), 
	@albumCreator nvarchar(50) = 'admin',
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
GO
/****** Object:  StoredProcedure [dbo].[sony_sp_add_action_log]    Script Date: 11/24/2013 23:59:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		ndl0986
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sony_sp_add_action_log] 
	-- Add the parameters for the stored procedure here
	@username nvarchar(50) = 'admin', 
	@description nvarchar(max) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO sony_action_log ([username], [description], [created])
	VALUES (@username, @description, GETDATE());
END
GO
/****** Object:  Default [DF_sony_action_log_username]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_action_log] ADD  CONSTRAINT [DF_sony_action_log_username]  DEFAULT (N'admin') FOR [username]
GO
/****** Object:  Default [DF__sony_albu__album__40058253]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_album] ADD  DEFAULT ('admin') FOR [albumCreator]
GO
/****** Object:  Default [DF__sony_albu__album__40F9A68C]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_album] ADD  DEFAULT ((0)) FOR [albumType]
GO
/****** Object:  Default [DF__sony_albu__viewC__41EDCAC5]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_album] ADD  DEFAULT ((0)) FOR [viewCount]
GO
/****** Object:  Default [DF_sony_album_comment_status]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_album_comment] ADD  CONSTRAINT [DF_sony_album_comment_status]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__sony_albu__usern__43D61337]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_album_comment] ADD  DEFAULT ('admin') FOR [username]
GO
/****** Object:  Default [DF__sony_bann__sortO__44CA3770]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_banner_photo] ADD  DEFAULT ((0)) FOR [sortOrder]
GO
/****** Object:  Default [DF_sony_center_retailLevel]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_center] ADD  CONSTRAINT [DF_sony_center_retailLevel]  DEFAULT ((0)) FOR [retailLevel]
GO
/****** Object:  Default [DF_sony_files_status]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_file] ADD  CONSTRAINT [DF_sony_files_status]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF_sony_menu_isparent]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_menu] ADD  CONSTRAINT [DF_sony_menu_isparent]  DEFAULT ((1)) FOR [isparent]
GO
/****** Object:  Default [DF_sony_menu_parentid]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_menu] ADD  CONSTRAINT [DF_sony_menu_parentid]  DEFAULT ((0)) FOR [parentid]
GO
/****** Object:  Default [DF_sony_menu_isadmin]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_menu] ADD  CONSTRAINT [DF_sony_menu_isadmin]  DEFAULT ((1)) FOR [isadmin]
GO
/****** Object:  Default [DF_sony_menu_visible]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_menu] ADD  CONSTRAINT [DF_sony_menu_visible]  DEFAULT ((1)) FOR [visible]
GO
/****** Object:  Default [DF__sony_menu__order__4B7734FF]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_menu] ADD  DEFAULT ((1)) FOR [order]
GO
/****** Object:  Default [DF__sony_news__viewC__4C6B5938]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_news] ADD  DEFAULT ((0)) FOR [viewCount]
GO
/****** Object:  Default [DF__sony_news__likeC__4D5F7D71]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_news] ADD  DEFAULT ((0)) FOR [likeCount]
GO
/****** Object:  Default [DF__sony_news__paren__4E53A1AA]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_news_category] ADD  DEFAULT ((0)) FOR [parentId]
GO
/****** Object:  Default [DF_sony_page_creator]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_page] ADD  CONSTRAINT [DF_sony_page_creator]  DEFAULT (N'admin') FOR [creator]
GO
/****** Object:  Default [DF_sony_page_updator]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_page] ADD  CONSTRAINT [DF_sony_page_updator]  DEFAULT (N'admin') FOR [updator]
GO
/****** Object:  Default [DF__sony_phot__statu__51300E55]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_photo] ADD  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__sony_phot__viewC__5224328E]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_photo] ADD  DEFAULT ((0)) FOR [viewCount]
GO
/****** Object:  Default [DF__sony_phot__voteC__531856C7]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_photo] ADD  DEFAULT ((0)) FOR [voteCount]
GO
/****** Object:  Default [DF__sony_phot__likeC__540C7B00]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_photo] ADD  DEFAULT ((0)) FOR [likeCount]
GO
/****** Object:  Default [DF__sony_prod__paren__55009F39]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_product_category] ADD  DEFAULT ((0)) FOR [parentId]
GO
/****** Object:  Default [DF_sony_province_provinceOrder]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_province] ADD  CONSTRAINT [DF_sony_province_provinceOrder]  DEFAULT ((0)) FOR [provinceOrder]
GO
/****** Object:  Default [DF_sony_user_status]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_user] ADD  CONSTRAINT [DF_sony_user_status]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF__sony_user__group__57DD0BE4]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_user] ADD  DEFAULT ((0)) FOR [groupId]
GO
/****** Object:  Default [DF_sony_user_group_issuper]    Script Date: 11/24/2013 23:59:06 ******/
ALTER TABLE [dbo].[sony_user_group] ADD  CONSTRAINT [DF_sony_user_group_issuper]  DEFAULT ((0)) FOR [issuper]
GO
