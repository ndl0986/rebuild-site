<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_adminmenu.ascx.vb" Inherits="SonyAlpha.uc_adminmenu" %>
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