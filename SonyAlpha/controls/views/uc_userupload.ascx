<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_userupload.ascx.vb" Inherits="SonyAlpha.uc_userupload" %>
<%@ Import Namespace="SonyAlphaLibs" %>
<div class="album_page">
    <div class="message"><%= message %></div>
    <% If String.IsNullOrEmpty(message) Then%>
    <div class="title_frm">Album của <%= user.UserName %></div>
    <ul class="ul_list_albums clearfix">
        <li>
            <li class="clearfix">
                <div class="album">
                    <div class="cover"></div>
                    <div class="info">
                    <a href="javascript:void(0);" id="uc_userupload_uploadnew" class="album_title">Up hình mới</a>
                    </div>
                </div>
            </li>
            <% If listAlbums.Count > 0 Then%>
            <% For Each album As Album In listAlbums%>
            <li class="clearfix">
                <div class="album">
                    <a href="javascript:void(0);" id="uc_userupload_album<%= album.Id %>" class="album_title">
                    <div class="cover">
                        <img width="138" height="139" alt="<%= album.FullName %>" src="<%= album.AlbumCover %>" />
                    </div>
                    <div class="info">
                    
                    <%= album.FullName %>
                    
                    </div>
                    </a>
                </div>
            </li>
            <% Next %>
            <% End If %>
        </li>
    </ul>
    <% End If %>
</div>