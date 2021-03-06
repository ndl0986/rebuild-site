﻿<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_photo.ascx.vb" Inherits="SonyAlpha.uc_photo" %>
<div class="photo-page clearfix">
    <div class="photo-view">
        <div class="photo-wrapper">
            <asp:HyperLink runat="server" ID="hplPrev" ClientIDMode="Static" CssClass="prev-photo"></asp:HyperLink>
            <asp:HyperLink runat="server" ID="hplNext" ClientIDMode="Static" CssClass="next-photo"></asp:HyperLink>
            <img id="imgMain" class="img-main" alt="" data-id="<%=bllDetail.Id %>" src="<%= bllDetail.FileName %>"/>
        </div>
        <div class="photo-info clearfix">
            <div class="photo-upload">Người gửi<asp:HyperLink runat="server" ID="hplUploader" ClientIDMode="Static"></asp:HyperLink></div>
            <div class="photo-analysis"><span id="uc_photo_vote_count"><%= bllDetail.VoteCount%></span>&nbsp;bình chọn&nbsp;/&nbsp;<span><%=bllDetail.ViewCount %></span>&nbsp;lượt xem</div>
        </div>
        <div class="photo-actions">
            <a class="btn orange uppercase fancybox" href="<%= bllDetail.FileName %>">Phóng lớn <span class="icon icon160"></span></a>
            <% If Not voted Then%>
            <a class="btn orange uppercase" href="javascript:void(0);" id="uc_photo_button_vote_photo">Bình chọn <span class="icon icon101"></span></a>
            <% Else%>
            <a class="btn orange uppercase active" href="javascript:void(0);" id="A1">Bình chọn <span class="icon icon101"></span></a>
            <% End If %>
            <a class="btn share-fb"></a>
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
		    <div><span class="label">Chụp bằng máy</span><span>:&nbsp;<%= bllDetail.CameraName%></span></div>
            <div><span class="label">Tên sản phẩm</span><span>:&nbsp;<%= bllDetail.CameraModel%></span></div>
            <div><span class="label">Khẩu độ mở</span><span>:&nbsp;<%= bllDetail.FStop%></span></div><br />
            <div><span class="label">Thời gian phơi sáng</span><span>:&nbsp;<%= bllDetail.ExposureTime%></span></div>
            <div><span class="label">Độ nhạy ISO</span><span>:&nbsp;<%= bllDetail.ISO%></span></div>
            <div><span class="label">Độ bù sáng</span><span>:&nbsp;<%= bllDetail.ExposureBlas%></span></div><br/>
		    <div><span class="label">Tiêu cự</span><span>:&nbsp;<%= bllDetail.FocalLengh%></span></div>
            <div><span class="label">Đo sáng</span><span>:&nbsp;<%= bllDetail.MateringMode%></span></div>
            <div><span class="label">Flash</span><span>:&nbsp;<%= bllDetail.FlashMode%></span></div>
        </div>   
    </div>
</div>
<asp:HiddenField runat="server" ID="hdfAlbumId" ClientIDMode="Static" />
<script type="text/javascript">
    function fb_share() {
        $('.share-fb').attr('href','https://www.facebook.com/sharer/sharer.php?u=' + window.location.href);
    }
    window.onload = function () {
        fb_share();
    }
</script>