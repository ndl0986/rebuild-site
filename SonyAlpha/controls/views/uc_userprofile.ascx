<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_userprofile.ascx.vb" Inherits="SonyAlpha.uc_userprofile" %>
<div class="user_content">    
    <div class="message"><%= message %></div>
    <% If String.IsNullOrEmpty(message) Then%>
    <ul class="user_form">
        <li class="clearfix"><div class="caption">EMAIL : <%= user.Email %></div></li>
        <li class="row clearfix"><div class="caption">TÊN ĐĂNG NHẬP : <%= user.UserName%></div></li>
        <li class="row clearfix"><div class="caption">HỌ & TÊN : <%= user.fullname %></div></li>
        <li class="row clearfix"><div class="caption">SỐ ĐIỆN THOẠI : <%= user.Phone%></div></li>
        <li class="row clearfix"><div class="caption">SẢN PHẨM ĐANG DÙNG :     
<% If user.ProductUsed = "1" Then%>DSLR-A100<% End If%>
<% If user.ProductUsed = "2" Then%>DSLR-A200/A290<% End If%>
<% If user.ProductUsed = "3" Then%>DSLR-A300/A350<% End If%>
<% If user.ProductUsed = "4" Then%>DSLR-A450<% End If%>
<% If user.ProductUsed = "5" Then%>DSLR-A500/A550/A560/A580<% End If%>
<% If user.ProductUsed = "6" Then%>DSLR-700<% End If%>
<% If user.ProductUsed = "7" Then%>DSLR-A850/A900<% End If%>
<% If user.ProductUsed = "8" Then%>SLT-A33/A35/A37<% End If%>
<% If user.ProductUsed = "9" Then%>SLT-A55/A57<% End If%>
<% If user.ProductUsed = "10" Then%>SLT-A65<% End If%>
<% If user.ProductUsed = "11" Then%>SLT-A77<% End If%>
<% If user.ProductUsed = "12" Then%>SLT-A99<% End If%>
<% If user.ProductUsed = "13" Then%>NEX-3/C3/F3<% End If%>
<% If user.ProductUsed = "14" Then%>NEX-5/5N/5R<% End If%>
<% If user.ProductUsed = "15" Then%>NEX-6<% End If%>
<% If user.ProductUsed = "16" Then%>NEX-7<% End If%></div></li>
    </ul>
    <img class="img_bg" alt="sony_camera" src="/upload/sony_camera.png" />
    <% End If%>
</div>
