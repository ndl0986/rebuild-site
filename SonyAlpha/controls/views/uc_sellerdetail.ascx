<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_sellerdetail.ascx.vb" Inherits="SonyAlpha.uc_sellerdetail" %>
<%  Dim strTitle As String%>
<%  If tblDetail.RetailLevel = 0 Then%>
<%  strTitle = "Pro Shop"%>
<%  Else : strTitle = "Shop"%><%End If %>
<div class="shop-title"><span class="ico ico-alpha"><em></em></span><%=strTitle & " " & tblDetail.Name %></div>
<div class="clearfix">
<div class="shop-desc"></div>
<%  If tblImages.Count > 0 Then%>
<div class="slideshow">
    <div class="main-item"></div>
    <div class="thumbnail-items">
    
    </div>
</div>
<% End If%>
</div>