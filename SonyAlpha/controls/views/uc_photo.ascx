<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_photo.ascx.vb" Inherits="SonyAlpha.uc_photo" %>
<div class="photo-page clearfix">
    <div class="photo-view">
        <div class="photo-wrapper">
            <asp:HyperLink runat="server" ID="hplPrev" ClientIDMode="Static" CssClass="prev-photo"></asp:HyperLink>
            <asp:HyperLink runat="server" ID="hplNext" ClientIDMode="Static" CssClass="next-photo"></asp:HyperLink>
            <asp:Image runat="server" ID="imgMain" ClientIDMode="Static" CssClass="img-main" AlternateText=""/>
        </div>
        <div class="photo-info clearfix">
            <div class="photo-upload">Người gửi<asp:HyperLink runat="server" ID="hplUploader" ClientIDMode="Static"></asp:HyperLink></div>
            <div class="photo-analysis"><asp:Label runat="server" ID="lblVote"></asp:Label>/<asp:Label runat="server" ID="lblView"></asp:Label></div>
        </div>
        <div class="photo-actions">
            <a class="btn orange ico ico-zoom" href="javascript:void(0);">Phóng lớn<em></em></a>
            <a class="btn orange ico ico-vote" href="javascript:void(0);">Bình chọn<em></em></a>
            <a class="btn ico ico-fb" href="javascript:void(0);"></a>
        </div>
    </div>
    <div class="photo-comment">
    
    </div>
    <div class="photo-specs">
    </div>
</div>