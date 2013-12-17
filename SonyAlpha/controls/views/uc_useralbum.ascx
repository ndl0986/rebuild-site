﻿<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_useralbum.ascx.vb" Inherits="SonyAlpha.uc_useralbum" %>
<%@ Import Namespace="SonyAlphaLibs" %>
<div class="album_page">
    <div class="message"><%= message %></div>
    <% If String.IsNullOrEmpty(message) Then%>
    <div class="title_frm">Album <strong><%= album.FullName %></strong></div>
    <% If listPhotos.Count > 0 Then%>    
    <ul class="ul_list_albums ul_list_photo clearfix">
    <% For Each photo As Photo In listPhotos%>
        <li class="clearfix">
            <div class="album">
                <div class="cover">
                    <a href="/photo/<%= photo.Id %>?cid=<%= album.Id %>"><img alt="<%= photo.Title %>" src="<%= photo.FileName %>" /></a>
                </div>
            </div>
        </li>
    <% Next %>
    </ul>
    <% Else%>
    <div class="message"><h2>Bạn chưa up hình nào trong album này.</h2></div>
    <% End If %>
    <% End If %>
</div>
<script>
    document.getElementById('breadcum').style.display = 'none';
</script>