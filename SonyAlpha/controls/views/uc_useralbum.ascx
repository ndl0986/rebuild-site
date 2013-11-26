<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_useralbum.ascx.vb" Inherits="SonyAlpha.uc_useralbum" %>
<%@ Import Namespace="SonyAlphaLibs" %>
<div class="album_page">
    <div class="message"><%= message %></div>
    <% If String.IsNullOrEmpty(message) Then%>

    <% End If %>
</div>