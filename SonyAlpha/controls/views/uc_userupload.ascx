<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_userupload.ascx.vb" Inherits="SonyAlpha.uc_userupload" %>
<%@ Import Namespace="SonyAlphaLibs" %>
<div class="album_page">
    <div class="message"><%= message %></div>
    <% If String.IsNullOrEmpty(message) Then%>
    <ul class="ul_list_albums clearfix">
        <li>
            <div class="new_album">
                <div class="ico-add">+</div>
                <a href="useraddphoto.aspx" id="uc_userupload_uploadnew" class="album_title">Đăng thêm ảnh</a>
            </div>
        </li>
        <% If listAlbums.Count > 0 Then%>
        <% For Each album As Album In listAlbums%>
        <li class="clearfix">
            <div class="album">
                <div class="cover">
                    <a href="/useralbum/<%= album.Id %>.aspx" id="uc_userupload_album<%= album.Id %>"><img alt="<%= album.FullName %>" src="<%= album.AlbumCover %>" /></a>
                </div>
                <div class="album_title"><%= album.FullName %></div>
            </div>
        </li>
        <% Next %>
        <% End If %>
    </ul>
    <% End If %>
</div>