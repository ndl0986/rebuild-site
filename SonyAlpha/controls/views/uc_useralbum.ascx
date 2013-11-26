<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_useralbum.ascx.vb" Inherits="SonyAlpha.uc_useralbum" %>
<%@ Import Namespace="SonyAlphaLibs" %>
<div class="album_page">
    <div class="message"><%= message %></div>
    <% If String.IsNullOrEmpty(message) Then%>
    <div class="title_frm">Album <%= album.FullName %></div>    
    <ul class="ul_list_albums clearfix">
         <% If listPhotos.Count > 0 Then%>
            <% For Each photo As Photo In listPhotos%>
            <li class="clearfix">
                <div class="album">
                    <div class="cover">
                        <a href="/photo/<%= photo.Id %>?cid=<%= album.Id %>">
                        <img width="138" height="139" alt="<%= photo.Title %>" src="<%= photo.FileName %>" />
                        </a>
                    </div>
                </div>
            </li>
            <% Next %>
            <% End If %>
    </ul>
    <% End If %>
</div>