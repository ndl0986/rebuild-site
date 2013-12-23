<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="SonyAlpha._Default" %>
<%@ OutputCache Duration="3000" Location="Client" VaryByParam="None" %>
<%@ Register src="controls/views/uc_register.ascx" tagname="uc_register" tagprefix="uc1" %>
<%@ Register src="controls/views/uc_login.ascx" tagname="uc_login" tagprefix="uc2" %>
<%@ Register src="controls/views/uc_userupdate.ascx" tagname="uc_userupdate" tagprefix="uc3" %>
<%@ Register src="controls/views/uc_email_faq.ascx" tagname="uc_email_faq" tagprefix="uc4" %>
<%@ Register src="controls/views/uc_userforgotpass.ascx" tagname="uc_forgotpass" tagprefix="uc5" %>
<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]><html class="no-js ie8 lt-ie9"> <![endif]-->
<!--[if IE 9]><html class="no-js ie9 lt-ie9"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="lt-ie10 no-js"> <!--<![endif]-->
<head runat="server">
    <title>Sony Alpha</title>
    <link rel="SHORTCUT ICON" href="logo.ico"/>
    <meta content="" name="copyright" />
    <meta name="Description" content=""/>
    <meta name="Keywords" content=""/>
    <meta name="distribution" content="global" />
    <meta name="robots" content="follow, all" />
    <meta name="language" content="en, sv" />
    <meta content="" name="author"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="css/styles.css"/>
	<link rel="stylesheet" type="text/css" href="js/plugins/jquery.fancybox.css?v=2.1.5" media="screen" />
    <script type="text/javascript" src="/js/libs/modernizr-2.5.3.min.js"></script>
</head>
<body>
    <div id="wrapper">
    <form id="form1" runat="server">
    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager" runat="server" ScriptMode="Release" ></ajaxToolkit:ToolkitScriptManager>
    <script type="text/javascript" src="/js/libs/jquery-2.0.3.min.js"></script>
    <div id="header" class="clearfix">
        <div id="page_header" class="header_content clearfix"><div class="header-top-national">Việt Nam</div></div>
        <div id="userStatus" class="clearfix">
            <div class="logined" style="display:none;"><a id="viewProfile" href="javascript:void(0);"><asp:Label runat="server" ClientIDMode="Static" ID="lblUser" class="text username"></asp:Label></a>&nbsp;|&nbsp;<a href="/logout">Logout</a></div>
            <div class="not_logined" style="display:none;"><a id="hplSignup" href="javascript:void(0);">Đăng ký</a><a id="hplSignin" href="javascript:void(0);">Đăng nhập</a></div>
        </div>
        <div class="header-top-menu"><a href="http://www.sony.com.vn/support/productcategory/e+mount+camera" style="color: #FFF;">Hỗ trợ NEX</a>  |  <a href="http://www.sony.com.vn/support/productcategory/dslr+camera" style="color: #FFF;">Hỗ trợ DSLR</a> </div>
        <div id="topmenu" runat="server"></div>
    </div>
    <div id="container">
        <div id="breadcum" class="breadcum clearfix"></div>
        <div id="banner" runat="server" class="clearfix"></div>
        <asp:UpdatePanel ID="UpdatePanelMain" runat="server" class="clearfix"><ContentTemplate><asp:PlaceHolder runat="server" ID="plhMain"></asp:PlaceHolder></ContentTemplate></asp:UpdatePanel>
    </div>
    <asp:HiddenField ID="hdfPage" Value="" runat="server" /><asp:HiddenField ID="hdfMenu" Value="" runat="server" />
    <div id="footer" runat="server" class="clearfix"></div>
    </form>
    </div>
    <div id="formReg" style="display:none;" class="bgFormPopup hide"><a class="close"></a><uc1:uc_register ID="uc_register1" runat="server" /></div>
    <div id="formSign" style="display:none;" class="bgFormPopup hide"><a class="close"></a><uc2:uc_login ID="uc_login1" runat="server" /></div>
    <div id="formUpdate" style="display:none;" class="bgFormPopup hide"><a class="close"></a><uc3:uc_userupdate ID="uc_userupdate1" runat="server" /></div>
    <div id="formSendQuestion" style="display:none;" class="bgFormPopup hide"><a class="close"></a><uc4:uc_email_faq ID="uc_email_faq1" runat="server" /></div>
    <div id="formForgotpass" style="display:none;" class="bgFormPopup hide"><a class="close"></a><uc5:uc_forgotpass ID="uc_forgotpass1" runat="server" /></div>
    <script type="text/javascript" src="/js/libs/bootstrap.min.js"></script>
    <!--[if IE 8]><script src="../js/libs/respond.min.js"></script><![endif]-->
    <script type="text/javascript" src="/js/plugins/jquery.lazyload.min.js"></script>
    <script type="text/javascript" src="/js/plugins/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="/js/plugins/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript" src="/js/plugins/jquery.slimscroll.min.js"></script>
	<script type="text/javascript" src="/js/plugins/jquery.fancybox.js?v=2.1.5"></script>
    <script type="text/javascript" src="/js/controllers/main.js"></script>
</body>
</html>


