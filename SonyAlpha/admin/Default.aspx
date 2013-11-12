<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="SonyAlpha._Default1" %>
<%@ Register src="../controls/admin/uc_adminmenu.ascx" tagname="uc_adminmenu" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Sony Alpha - Admin Control Panel</title>
    <meta http-equiv="Content-Type" content="text/aspx; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="../css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="../css/admin.css"/>  
</head>
<body>
    <form id="form1" runat="server">

    <div class="wrapper">
        <div class="header">
            <asp:ScriptManager ID="ScriptManager1" runat="server" />
            <div class="toolbar clearfix">
                <div class="floatleft">
                    <a href="#" class="logo"></a>
                </div>
                <div class="floatright">
                    <asp:HyperLink runat="server" ID="hplUser" CssClass="topline account"></asp:HyperLink>
                    <span class="topline">ClientIP:<asp:Label ID="lblClientIP" runat="server"></asp:Label></span>
                    <a class="topline" href="?tpl=logout">Logout</a>
                </div>
            </div>
        </div>        
        <div class="container clearfix">
            <div class="colLeft">
                <div class="menuborder">
                    <!--<uc1:uc_adminmenu ID="uc_adminmenu" runat="server" />-->
                    <ul id="nav">
                        <li><a href="#">Tài khoản - phân quyền</a>
                        <ul>
                            <li><a href="?tpl=accounts">Danh mục tài khoản</a></li>
                            <li><a href="?tpl=accountsgroup">Danh mục nhóm tài khoản</a></li>
                            <li><a href="?tpl=permissions">Danh mục quyền hạn</a></li>
                        </ul>
                        </li>
                        <li><a href="#">Sản phẩm</a>
                        <ul>
                            <li><a href="?tpl=productcategory">Nhóm sản phẩm</a></li>
                            <li><a href="?tpl=products">Danh mục sản phẩm</a></li>
                            <li><a href="?tpl=addproduct">Tạo sản phẩm mới</a></li>
                        </ul>
                        </li>
                        <li><a href="#">Tin tức</a>
                        <ul>
                            <li><a href="?tpl=newscategory">Thể loại</a></li>
                            <li><a href="?tpl=news">Danh sách bài viết</a></li>
                            <li><a href="?tpl=addnews">Viết bài</a></li>
                        </ul>
                        </li>
                        <li><a href="#">Hình ảnh</a>
                        <ul>
                            <li><a href="?tpl=album">Albums</a></li>
                            <li><a href="?tpl=photocomments">Comments</a></li>
                        </ul>
                        </li> 
                        <li><a href="#">Hệ thống - Giao diện</a>
                        <ul>
                            <li><a href="?tpl=pages">Quản lý trang</a></li>
                            <li><a href="?tpl=files">Quản lý files</a></li>
                        </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="colRight clearfix">
                <div class="main">
                <asp:UpdatePanel ID="UpdatePanelMain" runat="server">
                    <ContentTemplate>
                        <asp:PlaceHolder runat="server" ID="plhMain"></asp:PlaceHolder>
                    </ContentTemplate>
                </asp:UpdatePanel>
                </div>
            </div>
        </div>
        <div class="footer"><div class="text_footer">© Copyright 2012. All rights reserved. Developed by <a target="_blank" href="#">Sony Vietnam</a></div></div>
        <div class="returnTop">
            <span class="icon icon10"><a href="javascript:scroll(0,0)">[TOP]</a></span>
        </div>
        <asp:HiddenField ID="isValid" Value="0" runat="server" />
    </div>
    </form>
    <script type="text/javascript" language="javascript" src="../js/libs/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" language="javascript" src="../js/libs/bootstrap.min.js"></script>
    <script type="text/javascript" language="javascript" src="../js/plugins/jquery.bxslider.min.js"></script>
    <script type="text/javascript" language="javascript" src="../js/plugins/jquery.validate.js"></script>
    <script>
        function ConfirmDelete(str) {
            return confirm(str);
        }
        $(document).ready(function () {
            var inputs = $('.form').find('input');
            $('#btnCancel').click(function () {
                inputs.val('').text('');
                $(inputs[0]).focus();
            });
            $('.actDel').click(function () {
                return ConfirmDelete($(this).attr('messdelete'))
            })
            $("#form1").validate();
            $("#form1").keyup(function () {
                if ($("#form1").valid() == true) {
                    $('.btnOk').removeAttr('disabled').addClass('blue');
                } else {
                    $('.btnOk').attr('disabled', 'disabled').removeClass('blue');
                }
            });
            $('.datatable input').keyup(function (event) {
                event.stopPropagation();
            });
            $('#nav > li > a').click(function () {
                if ($(this).attr('class') != 'active') {
                    $('#nav li ul').slideUp();
                    $(this).next().slideToggle();
                    $('#nav li a').removeClass('active');
                    $(this).addClass('active');
                }
            });
            $('#nav a').click(function (event) {
                event.stopPropagation();
            });
            $('.menuborder').click(function () {
                $('body').toggleClass('showmenu');
            });
        });
    </script>
</body>
</html>

