<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_photo.ascx.vb" Inherits="SonyAlpha.uc_photo" %>
<div class="photo-page clearfix">
    <div class="photo-view">
        <div class="photo-wrapper">
            <asp:HyperLink runat="server" ID="hplPrev" ClientIDMode="Static" CssClass="prev-photo"></asp:HyperLink>
            <asp:HyperLink runat="server" ID="hplNext" ClientIDMode="Static" CssClass="next-photo"></asp:HyperLink>
            <img id="imgMain" class="img-main" alt="" src="<%= bllDetail.FileName %>"/>
        </div>
        <div class="photo-info clearfix">
            <div class="photo-upload">Người gửi<asp:HyperLink runat="server" ID="hplUploader" ClientIDMode="Static"></asp:HyperLink></div>
            <div class="photo-analysis"><span><%= bllDetail.VoteCount%></span>&nbsp;bình chọn&nbsp;/&nbsp;<span><%=bllDetail.ViewCount %></span>&nbsp;lượt xem</div>
        </div>
        <div class="photo-actions">
            <a class="btn orange" href="javascript:void(0);">Phóng lớn<span class="ico ico-zoom"></span></a>
            <a class="btn orange" href="javascript:void(0);">Bình chọn<span class="ico ico-vote"></span></a>
            <a class="btn share-fb" href="https://www.facebook.com/sharer/sharer.php?u=<%=bllDetail.FileName %>"></a>
        </div>
    </div>
    <div class="photo-comment">
    
    </div>
    <div class="photo-specs">
    </div>
</div>