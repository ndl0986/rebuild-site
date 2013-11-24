<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_album.ascx.vb" Inherits="SonyAlpha.uc_album" %>
<div class="album_page">
<%  If bllAlbums.Count > 0 Then%>
    <ul class="ul_list_albums clearfix">
    <%For Each album In bllAlbums%>
        <li>
            <div class="album">
                <div class="cover"><a href="<%="album/" & album.Id & "_" & album.FullName & ".apsx?mId" & intMenu%>"><img alt="<%=album.AlbumCover %>" src="<%=album.AlbumCover%>" /></a></div>
                <a href="<%="album/" & album.Id & "_" & album.FullName & ".apsx?mId" & intMenu%>"><%=album.FullName %><%=album.FullName %></a>
                <div class="info"><span></span>&nbsp;ảnh<span><%= album.ViewCount%>&nbsp;lượt xem</span></div>
            </div>
        </li>
    <%Next%>
    </ul>
<% End If%>
</div>