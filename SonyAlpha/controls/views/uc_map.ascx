<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_map.ascx.vb" Inherits="SonyAlpha.uc_map" %>
<%@ Import Namespace="System.Web" %>
<%@ Import Namespace="System.Web.HttpRequest" %>
<script type="text/javascript">
    var longitude = <%= Request.QueryString("long") %>;
    var latitude = <%= Request.QueryString("lat") %>;
    var title = '<%= Request.QueryString("title") %>';
</script>
<div class="content map_page"><div id="map_canvas" class="google-map"></div></div>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script language="javascript" type="text/javascript">
    function initialize() {
        var map_canvas = document.getElementById('map_canvas');
        var myLatlng = new google.maps.LatLng(latitude, longitude);
        var map_options = {
            center: myLatlng,
            zoom: 18,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        var map = new google.maps.Map(map_canvas, map_options);
        var infowindow = new google.maps.InfoWindow({
            content: title
        });

        var marker = new google.maps.Marker({
            position: myLatlng,
            map: map,
            title: title
        });
        google.maps.event.addListener(marker, 'click', function () {
            infowindow.open(map, marker);
        });
    }
    //initialize(latitude, longitude);
    google.maps.event.addDomListener(window, 'load', initialize);
</script> 