<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="SonyAlpha._Default" %>
<%@ OutputCache Duration="3000" Location="Client" VaryByParam="None" %>
<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]><html class="no-js ie8 lt-ie9"> <![endif]-->
<!--[if IE 9]><html class="no-js ie9 lt-ie9"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="lt-ie10 no-js"> <!--<![endif]-->
<head runat="server">
    <title></title>
    <link rel="SHORTCUT ICON" href="logo.ico"/>
    <meta content="" name="copyright" />
    <meta name="Description" content=""/>
    <meta name="Keywords" content=""/>
    <meta name="distribution" content="global" />
    <meta name="robots" content="follow, all" />
    <meta name="language" content="en, sv" />
    <meta content="" name="author"/>
    <link rel="stylesheet" type="text/css" href="css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="css/styles.css"/>
    <script type="text/javascript" src="<%=absoluteURL%>/js/libs/modernizr-2.5.3.min.js"></script>
</head>
<body>
    <div id="wrapper">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server" ScriptMode="Release"/>
    <div id="header" class="clearfix">
        <div id="page_header" class="header_content clearfix">
            <div class="header-top-national">Việt Nam</div>
        </div>
        <div id="userStatus" class="clearfix">
            <div class="logined"><asp:Label runat="server" ClientIDMode="Static" ID="lblUser" class="text username"></asp:Label></div>
            <div class="not_logined"><a href="javascript:void(0);">Đăng ký</a><a href="javascript:void(0);">Đăng nhập</a></div>
        </div>
        <div class="header-top-menu">
            <a href="http://www.sony.com.vn/support/productcategory/e+mount+camera" style="color: #FFF;">Hỗ trợ NEX</a>  |  
            <a href="http://www.sony.com.vn/support/productcategory/dslr+camera" style="color: #FFF;">Hỗ trợ DSLR</a> 
		</div>
        <div id="topmenu" runat="server"></div>
    </div>
    <div id="container">
        <div id="breadcum" class="breadcum clearfix"></div>
        <div id="banner" runat="server" class="clearfix"></div>
        <asp:UpdatePanel ID="UpdatePanelMain" runat="server">
            <ContentTemplate>
                <asp:PlaceHolder runat="server" ID="plhMain"></asp:PlaceHolder>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <asp:HiddenField ID="isLoged" Value="0" runat="server" /><asp:HiddenField ID="hdfPage" Value="" runat="server" /><asp:HiddenField ID="hdfMenu" Value="" runat="server" />
    <div id="footer" runat="server" class="clearfix"></div>
    </form>
    </div>
    <script type="text/javascript" src="<%=absoluteURL%>/js/libs/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="<%=absoluteURL%>/js/libs/bootstrap.min.js"></script>
    <!--[if IE 8]>    
      <script src="../js/libs/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="<%=absoluteURL%>/js/plugins/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="<%=absoluteURL%>/js/plugins/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
        function checkLoged(id) { if ($('#' + id).val() == 1) { $('.logined').show(); $('.notlogin').hide(); } else { $('.logined').hide(); $('.notlogin').show(); } }
        function togglePopup() { $('html').toggleClass('popupmode'); }
        function isPopupmode() { if ($('html').hasClass('popupmode')) { return true; } else { return false; } }
        function addBreadcum() {
            var breadcum = $('#breadcum');
            var li = $('#menu_' + $('#hdfMenu').val());
            !li.length && (li = $($('#nav').children()[0])); 
            li.addClass('active');
            var html = '<a href="https://alpha.sony.com.vn/">Trang chủ </a>' + li.html();
            breadcum.append(html);
            breadcum.append('<div class="main_title">'+li.text()+'</div>');
        }
        $(document).ready(function () {
            checkLoged('isLoged');
            addBreadcum();
            var mainBanner = $('.banner_container');
            var fluidBanner = $('.banner_container.type_0'), leftBanner = $('.banner_container.type_1'), rightBanner = $('.banner_container.type_2');
            if (mainBanner.hasClass('type_0') || mainBanner.hasClass('type_1')) {
                var items = mainBanner.find('.item');
                for (var i = 0; i < items.length; i++) {
                    if ($(items[i]).attr('src').indexOf('youtube') != -1) {
                        var ifrm = $('<iframe></iframe>');
                        ifrm.attr("src", $(items[i]).attr('src') + '?wmode=transparent').width('100%');
                        $(items[i]).replaceWith(ifrm);
                    }
                };
            }
            if (fluidBanner.length) {
                fluidBanner.addClass('main-slider');
                fluidBanner.children().addClass("fluid-slider").bxSlider({
                    slideWidth: 930,
                    minSlides: 1,
                    maxSlides: 1,
                    controls: true,
                    pager: false,
                    auto: true,
                    speed: 600,
                    useCSS: true
                });
            }
            if (leftBanner.length) {
                leftBanner.addClass('theme-default').children().nivoSlider({
                    effect: "random",
                    slices: 15,
                    boxCols: 8,
                    boxRows: 4,
                    animSpeed: 500,
                    pauseTime: 3000,
                    startSlide: 0,
                    directionNav: false,
                    directionNavHide: true,
                    controlNav: true,
                    controlNavThumbs: false,
                    controlNavThumbsFromRel: false,
                    keyboardNav: true,
                    pauseOnHover: true,
                    captionOpacity: 0.5,
                    manualAdvance: false
                });
            }
        });    
    </script>
</body>
</html>
