<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_productcategory.ascx.vb" Inherits="SonyAlpha.uc_productcategory1" %>
<div id="section_collection" class="clearfix">
    <%If listProductCategoryChild.Count > 0 Then%>
        <ul class="list_collection clearfix">
            <% For Each row As SonyAlphaLibs.ProductCategory In listProductCategoryChild%>
                <li>
                    <div class="img"><img src="<%= row.CoverPhoto%>" alt="" />
                        <div class="title_banner_text">
                            <a href="<%=row.SeoUrl%>"><%= row.Name%></a>
                        </div>
                    </div>
                </li>
            <% Next%>
        </ul>
    <% End If%>
</div>