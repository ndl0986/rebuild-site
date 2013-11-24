<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_productcategory.ascx.vb" Inherits="SonyAlpha.uc_productcategory1" %>
<div id="product_categories" class="clearfix">
<div class="page_title">Khám phá&nbsp;<%=tblDetail.Name %></div>
<%If listProductCategoryChild.Count > 0 Then%><ul class="list_categories clearfix"><% For Each row As SonyAlphaLibs.ProductCategory In listProductCategoryChild%><li class="category_item" data-id="<%=row.Id%>"><div class="img"><img src="<%= row.CoverPhoto%>" alt="" /><div class="title_banner_text"><a href="<%=row.SeoUrl%>"><%= row.Name%></a></div></div></li><% Next%></ul><% End If%>
<!-- Content goes here -->
<div id="loadContent">
    <div id="categoryContent"></div>
    <div id="listItems"></div>
    <div id="productContent"></div>
</div>
</div>