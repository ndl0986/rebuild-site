﻿<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_album.ascx.vb" Inherits="SonyAlpha.uc_album" %>
<div class="form_command clearfix">
    <a class="btn blue uppercase">Đăng ảnh</a><input class="textbox noshadow" type="text" id="txtKeywords" placeholder="Tìm kiếm thành viên" /><a class="btn orange uppercase">Tìm kiếm</a>
</div>
<div id="albumSlide"></div>
<div class="album_page">
<%  If bllAlbums.Count > 0 Then%>
    <ul class="ul_list_albums clearfix">
    <% Dim i As Integer = 0%>
    <%For Each album In bllAlbums%>
        <%If i = (bllAlbums.Count - 1) Then%><li class="last-child"><%Else%><li><%End If%>
            <div class="album">
                <div class="cover"><a href="<%="album/" & album.Id & "?mId=" & intMenu%>"><img alt="<%=album.AlbumCover %>" src="<%=album.AlbumCover%>" /></a></div>
                <a class="album_title" href="<%="album/" & album.Id & "?mId=" & intMenu%>"><%=album.FullName %></a>
                <div class="info"><span><%=album.TotalPhoto%></span>&nbsp;ảnh<span>&nbsp;/&nbsp;<%= album.ViewCount%>&nbsp;lượt xem</span></div>
            </div>
        </li>
        <%i=i+1 %>
    <%Next%>
    </ul>
<% End If%>
</div>