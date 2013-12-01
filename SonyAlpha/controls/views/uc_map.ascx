<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_map.ascx.vb" Inherits="SonyAlpha.uc_map" %>
<%@ Import Namespace="System.Web" %>
<%@ Import Namespace="System.Web.HttpRequest" %>
<script type="text/javascript">
    var longitude = <%= Request.QueryString("long") %>;
    var latitude = <%= Request.QueryString("lat") %>;
</script>
<div class="content map_page"><div id="map_canvas" class="google-map" style="height:400px;width:600px;"></div></div>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script language="javascript" type="text/javascript">
    function initialize() {
        var map_canvas = document.getElementById('map_canvas');
        var map_options = {
            center: new google.maps.LatLng(latitude, longitude),
            zoom: 18,
            mapTypeId: google.maps.MapTypeId.ROADMAP}
        var map = new google.maps.Map(map_canvas, map_options);
    }
    //initialize(latitude, longitude);
    google.maps.event.addDomListener(window, 'load', initialize);
</script> 