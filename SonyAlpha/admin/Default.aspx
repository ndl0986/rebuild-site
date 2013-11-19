<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="SonyAlpha._Default1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Sony Alpha - Admin Control Panel</title>
    <meta http-equiv="Content-Type" content="text/aspx; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="../css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="../css/admin.css"/>
    <script type="text/javascript" language="javascript" src="../js/libs/jquery-2.0.3.min.js"></script>  
</head>
<body>
    <form id="form1" runat="server">

    <div class="wrapper">
        <div class="header">
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
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
                            <li><a href="?tpl=albums">Albums</a></li>
                            <li><a href="?tpl=photocomments">Comments</a></li>
                        </ul>
                        </li>
                        <li><a href="#">Trung tâm Sony</a>
                        <ul>
                            <li><a href="?tpl=sonycenters">Danh sách Trung tâm</a></li>
                            <li><a href="?tpl=provinces">Danh sách tỉnh thành</a></li>
                        </ul>    
                        </li>
                        <li><a href="#">Hệ thống - Giao diện</a>
                        <ul>
                            <li><a href="?tpl=pages">Quản lý trang</a></li>
                            <li><a href="?tpl=banners">Quản lý banner</a></li>
                            <li><a href="?tpl=menus">Quản lý menu</a></li>
                            <li><a href="?tpl=banerpage">Banner - Page</a></li>
                            <li><a href="?tpl=setting">Điều chỉnh</a></li>
                            <li><a href="?tpl=files" target="_blank">Quản lý files</a></li>
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
    <script type="text/javascript" language="javascript" src="../js/libs/bootstrap.min.js"></script>
    <script type="text/javascript" language="javascript" src="../js/plugins/jquery.bxslider.min.js"></script>
    <script type="text/javascript" language="javascript" src="../js/plugins/jquery.validate.js"></script>
    <script type="text/javascript">
        function ConfirmDelete(str) {
            return confirm(str);
        }
        $(document).ready(function () {
            var container = $($('.container')[0]);
            container.css('min-height',$(window).innerHeight()-150);

            var inputs = $('.form').find('input');
            $('#btnCancel').click(function () {
                inputs.val('').text('');
                $(inputs[0]).focus();
            });
            $('#UpdatePanelMain').on('click', '.actDel', function () {
                return ConfirmDelete($(this).attr('messdelete'));
            });


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
                if (!$(this).hasClass('active')) {
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

        function FCKUpdateLinkedField(id) {
            try {
                if (typeof (FCKeditorAPI) == "object") {
                    FCKeditorAPI.GetInstance(id).UpdateLinkedField();
                }
            }
            catch (err) {
            }
        }
    </script>
</body>
</html>

