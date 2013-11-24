<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_newsdetail.ascx.vb" Inherits="SonyAlpha.uc_newsdetail" %>
<div id="section_collection" class="clearfix"><%If listTop.Count > 0 Then%><ul class="list_collection clearfix"><% For Each row As SonyAlphaLibs.News In listTop%><li><div class="clearfix"><img src="<%=row.NewsImage%>" alt="" /><div class="title_banner_text"><a href="<%=row.SeoUrl%>"><%= row.Title%></a></div></div></li>
<% Next%></ul><% End If%></div>
<%  If bolType = True Then%>
<div class="news_detail"><%Else%><div class="news_detail single"><%End If%>
    <div class="title"><%= bllNews.Title%></div>
    <div class="view_count"><%=bllNews.ViewCount %>&nbsp;lượt xem</div>
    <div class="content">
        <div class="description"><%=bllNews.Description %></div>
        <%=bllNews.Detail %>
    </div>
</div>