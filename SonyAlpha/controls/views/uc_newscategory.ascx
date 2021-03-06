﻿<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_newscategory.ascx.vb"
    Inherits="SonyAlpha.uc_newscategory" %>
<%@ Import Namespace="SonyAlphaLibs" %>
<%@ Register Src="uc_lastestnews.ascx" TagName="uc_lastestnews" TagPrefix="uc1" %>
<%  If bolType = True Then%><div id="section_collection" class="clearfix"><%If listTop.Count > 0 Then%><ul class="list_collection clearfix"><% For Each row As News In listTop%><li><div class="clearfix"><a class="category_title" href="<%= listTopCat.Item(listTop.IndexOf(row)).SeoUrl & "?mId=" & intMenu & "&cId=" & parentId %>" target="_blank"><%= listTopCat.Item(listTop.IndexOf(row)).Name%></a><img class="lazy" data-original="<%=row.NewsImage%>"alt="" /><div class="title_banner_text"><a href="<%=row.SeoUrl & "?mId=" & intMenu & "&cId=" & parentId%>"><%= row.Title%></a></div></div></li><% Next%></ul><% End If%></div>
<div class="news_cat_content">
    <%  If listNewsInCat.Count > 0 Then%><ul class="list_news clearfix">
        <%  For Each row As News In listNewsInCat%><li>
            <div class="detail_item">
                <div class="title_news">
                    <a href="<%=row.SeoUrl & "?mId=" & intMenu & "&cId=" & parentId%>">
                        <%= row.Title%></a></div>
                <div class="wap_news clearfix">
                    <div class="thumb_news">
                        <div class="news_view"><%= row.ViewCount%>&nbsp;lượt xem</div>
                        <div class="wap_img"><a href="<%=row.SeoUrl & "?mId=" & intMenu & "&cId=" & parentId%>"><img alt="" class="lazy" data-original="<%=row.NewsImage%>"></a></div>
                    </div>
                    <div class="des_news"><%= row.Description%></div>
                    <div class="chitiet"><a href="<%=row.SeoUrl & "?mId=" & intMenu & "&cId=" & parentId%>">Xem chi tiết &gt;&gt;</a></div>
                </div>
            </div>
        </li><% Next%></ul><% If listPaging.Count > 0 Then%><ul class="paging"><% For Each pg As Paging In listPaging%><li><a href="<%= pg.PageUrl %>" <% If pg.PageNum = pageNum Then %>class="active"<% End If %>><%= pg.PageText %></a></li><% Next%></ul><% End If%><% End If%></div>
<%  Else%><div class="news_cat_content single">
    <% If listNewsInCat.Count > 0 Then%><ul class="list_news clearfix"><%  For Each row As News In listNewsInCat%><li>
            <div class="detail_item">
                <div class="wap_news clearfix">
                    <div class="thumb_news">
                        <div class="wap_img"><a href="<%=row.SeoUrl & "?mId=" & intMenu & "&cId=" & catId%>"><img alt="" class="lazy" data-original="<%=row.NewsImage%>"></a></div>
                    </div>
                    <div class="title_news">
                        <a href="<%=row.SeoUrl & "?mId=" & intMenu & "&cId=" & catId%>"><%= row.Title%></a></div>
                    <div class="news_view"><%= row.ViewCount%>&nbsp;lượt xem</div>
                    <div class="des_news"><%= row.Description%></div>
                    <div class="chitiet"><a href="<%=row.SeoUrl & "?mId=" & intMenu & "&cId=" & catId%>">Xem chi tiết &gt;&gt;</a></div>
                </div>
            </div>
        </li><% Next%></ul><% If listPaging.Count > 0 Then%><ul class="paging"><% For Each pg As Paging In listPaging%><li><a href="<%= pg.PageUrl %>" <% If pg.PageNum = pageNum Then %>class="active"<% End If %>><%= pg.PageText %></a></li><% Next%></ul><% End If%><% End If%></div>
<div id="menuTech" runat="server" clientidmode="Static" class="box_gradient"></div>
<uc1:uc_lastestnews ID="uc_lastestnews" runat="server" />
<% End If%>