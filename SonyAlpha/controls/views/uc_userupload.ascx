<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_userupload.ascx.vb" Inherits="SonyAlpha.uc_userupload" %>
<div class="album_page"><div class="message"><%= message %></div>
    <%If Request.QueryString("id") <> "" Then%><h2 class="title">Album của <%=username%></h2><%End If%>
    <% If String.IsNullOrEmpty(message) Then%>
    <ul class="ul_list_albums clearfix">
        <%If isViewOnly = False Then%>
        <li><div class="new_album"><div class="ico-add">+</div><a href="useraddphoto.aspx" id="uc_userupload_uploadnew" class="album_title">Đăng thêm ảnh</a></div></li>
        <%End If%>
        <% If listAlbums.Count > 0 Then%>
        <% For Each album In listAlbums%>
        <li class="clearfix">
            <div class="album">
                <div class="cover">
                    <a href="/useralbum/<%= album.Id %>.aspx" id="uc_userupload_album<%= album.Id %>">
                    <% If album.TotalPhoto > 0 Then%>
                        <img alt="<%= album.FullName %>" src="<%= album.AlbumCover %>" />
                    <% Else%>
                        <img alt="<%= album.FullName %>" src="/upload/image/images.jpg" />
                    <% End If%>
                    </a>
                </div>
                <div class="album_title"><%= album.FullName %></div>
            </div>
        </li>
        <% Next %>
        <% End If %>
    </ul>
    <% End If %>
</div>
<script type="text/javascript">document.getElementById('breadcum').style.display = 'none';</script>