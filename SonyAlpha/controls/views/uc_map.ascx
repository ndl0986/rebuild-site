<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_map.ascx.vb" Inherits="SonyAlpha.uc_map" %>
<%@ Import Namespace="System.Web" %>
<%@ Import Namespace="System.Web.HttpRequest" %>
<script type="text/javascript">
    var longitude = <%= Request.QueryString("long") %>;
    var latitude = <%= Request.QueryString("lat") %>;
</script>
<div class="content">
    
        <div id="map_canvas" class="google-map" style="height:300px;width:100%;"></div>
    
</div>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script language="javascript" type="text/javascript">
            function initialize(lat, long) {
                var map_canvas = document.getElementById('map_canvas');
                var map_options = {
                    center: new google.maps.LatLng(lat, long),
                    zoom: 17,
                    mapTypeId: google.maps.MapTypeId.ROADMAP,
                    mapMaker: true
                }
                var map = new google.maps.Map(map_canvas, map_options);
            }
            //initialize(10.7764479, 106.6863206);
            initialize(latitude, longitude);
</script> 