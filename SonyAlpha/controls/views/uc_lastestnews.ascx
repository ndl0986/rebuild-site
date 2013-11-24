<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_lastestnews.ascx.vb" Inherits="SonyAlpha.uc_lastestnews" %>
<div class="lastestnews">
    <h1>Bài viết mới nhất</h1>
    <ul class="list_lastestnews clearfix">
    <% For Each row As SonyAlphaLibs.News In listNews %>
        <li class="small_news_item clearfix" data-id="<%=row.Id%>">
            <div class="img"><img alt="<%= row.Title %>" src="<%= row.NewsImage %>"/></div>
            <div class="text"><a class="title" href="<%= row.SeoUrl %>"><%= row.Title %></a><%= row.Created %></div>
        </li>
    <% Next%>
    </ul>
</div>