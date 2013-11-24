<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_albumdetail.ascx.vb" Inherits="SonyAlpha.uc_albumdetail" %>
<div id="albumSlide"></div>
<div class="album_page">
<%  If bllPhoto.Count > 0 Then%>
    <ul class="ul_list_albums ul_list_photo clearfix">
    <%For Each photo In bllPhoto%>
        <li>
            <div class="album">
                <div class="cover"><a href="<%="/photo/" & photo.Id & "?cId=" & catId & "&mId=" & intMenu%>"><img alt="<%=photo.FileName%>" src="<%=photo.FileName%>" /></a><div class="photo-info"><a class="share-fb" href="https://www.facebook.com/sharer/sharer.php?u=<%=photo.FileName%>" target="_blank"></a><span><%= photo.ViewCount%>&nbsp;lượt xem</span></div></div>
            </div>
        </li>
    <%Next%>
    </ul>
<% End If%>
</div>
<asp:HiddenField runat="server" ID="uc_albumInfo" ClientIDMode="Static"/>