<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_sellerdetail.ascx.vb" Inherits="SonyAlpha.uc_sellerdetail" %>
<%  Dim strTitle As String%>
<%  If tblDetail.RetailLevel = 0 Then%>
<%  strTitle = "Pro Shop"%>
<%  Else : strTitle = "Shop"%><%End If %>
<div class="shop-title"><span class="ico ico-alpha"><em></em></span><%=strTitle & " " & tblDetail.Name %></div>
<div class="clearfix">
<div class="shop-desc">
    <div class="title">Giới thiệu</div>
    <div class="shop-desc-content"><%= tblDetail.Description %></div>
</div>
<%  If tblImages.Count > 0 Then%>
<div id="sonyCenterSlides" class="slideshow"><script type="text/javascript">var sonyCenterImages = [];<% For Each img In tblImages%>sonyCenterImages.push('<%=img.FileName %>');<% Next%></script></div>
<% End If%>
</div>
<div class="clearfix">
    <div id="map_canvas" class="google-map" ></div>   
    <div class="detail_thongtin">
        <div class="title">Thông tin liên lạc</div>
        <div><span class="label">Địa chỉ </span><span>:&nbsp;<%= tblDetail.Address%></span></div>
        <div><span class="label">Điện thoại </span><span>:&nbsp;<%= tblDetail.Phone%></span></div>
        <div><span class="label">Giờ mở cửa </span><span>:&nbsp;<%= tblDetail.OpenTime%> : <%=tblDetail.CloseTime %></span></div>       
    </div>
</div>
<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script language="javascript" type="text/javascript">
            function initialize(lat, long) {
                var map_canvas = document.getElementById('map_canvas');
                var map_options = {
                    center: new google.maps.LatLng(lat, long),
                    zoom: 8,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                }
                var map = new google.maps.Map(map_canvas, map_options);
            }
            initialize(<%= tblDetail.Latitude%>, <%= tblDetail.Longitude%>);
</script>  
