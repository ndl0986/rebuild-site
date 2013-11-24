<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_photo.ascx.vb" Inherits="SonyAlpha.uc_photo" %>
<div class="photo-page clearfix">
    <div class="photo-view">
        <div class="photo-wrapper">
            <asp:HyperLink runat="server" ID="hplPrev" ClientIDMode="Static" CssClass="prev-photo"></asp:HyperLink>
            <asp:HyperLink runat="server" ID="hplNext" ClientIDMode="Static" CssClass="next-photo"></asp:HyperLink>
            <img id="imgMain" class="img-main" alt="" data-id="<%=bllDetail.Id %>" src="<%= bllDetail.FileName %>"/>
        </div>
        <div class="photo-info clearfix">
            <div class="photo-upload">Người gửi<asp:HyperLink runat="server" ID="hplUploader" ClientIDMode="Static"></asp:HyperLink></div>
            <div class="photo-analysis"><span><%= bllDetail.VoteCount%></span>&nbsp;bình chọn&nbsp;/&nbsp;<span><%=bllDetail.ViewCount %></span>&nbsp;lượt xem</div>
        </div>
        <div class="photo-actions">
            <a class="btn orange uppercase" href="javascript:void(0);">Phóng lớn<span class="ico ico-zoom"></span></a>
            <a class="btn orange uppercase" href="javascript:void(0);">Bình chọn<span class="ico ico-vote"></span></a>
            <a class="btn share-fb" href="https://www.facebook.com/sharer/sharer.php?u=<%=bllDetail.FileName %>"></a>
        </div>
    </div>
    <div class="clearfix">
        <div class="photo-comment">
            <div class="heading">Cảm nhận</div>
            <ul id="ulComments"></ul>
            <div class="form-comment clearfix">
                <a href="javascript:void(0);" class="avatar"></a>
                <div class="post-area">
                    <textarea rows="5" id="txtComment" class="textbox noshadow noresize"></textarea>
                    <a id="btnPostComment" href="javascript:void(0);" class="btn flat orange">Gửi</a>
                </div>
            </div>
        </div>
        <div class="photo-specs">
            <div class="heading">Thông tin</div>
		    <div><span class="label">Chụp bằng máy</span><span>:<%= bllDetail.CameraName%></span></div>
            <div><span class="label">Tên sản phẩm</span><span>:<%= bllDetail.CameraModel%></span></div>
            <div><span class="label">Khẩu độ mở</span><span>:<%= bllDetail.MaxAperture%></span></div><br />
            <div><span class="label">Thời gian phơi sáng</span><span>:<%= bllDetail.ExposureTime%></span></div>
            <div><span class="label">Độ nhạy ISO</span><span>:<%= bllDetail.ISO%></span></div>
            <div><span class="label">Độ bù sáng</span><span>:<%= bllDetail.ExposureBlas%></span></div><br/>
		    <div><span class="label">Tiêu cự</span><span>:<%= bllDetail.FocalLengh%></span></div>
            <div><span class="label">Đo sáng</span><span>:<%= bllDetail.FStop%></span></div>
            <div><span class="label">Flash</span><span>:<%= bllDetail.FlashEnergy%></span></div>
        </div>   
    </div>
</div>
<asp:HiddenField runat="server" ID="hdfAlbumId" ClientIDMode="Static" />