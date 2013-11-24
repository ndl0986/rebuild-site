<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_lastestnews.ascx.vb" Inherits="SonyAlpha.uc_lastestnews" %>
<div class="lastestnews">
    <h1>Bài viết mới nhất</h1>
    <ul class="list_lastestnews clearfix">
    <% For Each row As SonyAlphaLibs.News In listNews %>
        <li class="small_news_item" data-id="<%=row.Id%>">
            <div>
                <img alt="<%= row.Title %>" src="<%= row.NewsImage %>"  height="40" width="40"/> <br />
                <a href="<%= row.SeoUrl %>" style="color:Black;" ><%= row.Title %> </a><br />
                <%= row.Created %><br />
            </div>
        </li>
    <% Next%>
    </ul>
</div>