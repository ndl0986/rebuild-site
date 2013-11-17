<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_admin_addphoto.ascx.vb" Inherits="SonyAlpha.uc_admin_addphoto" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Albums > Add photo to Album :<a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption" >Album's name :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtAlbum" CssClass="textbox" ReadOnly="true"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Photo's name :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtName" CssClass="textbox" required maxlength="150"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Upload/Choose Photo :</div>
                <div class="item">
                    <asp:HiddenField runat="server" ID="urlPath" ClientIDMode="Static" />
                    <ajaxToolkit:AsyncFileUpload ID="fileUpload" ClientIDMode="Static" runat="server" ThrobberID="myThrobber" OnClientUploadError="uploadError" OnClientUploadComplete="uploadComplete" CssClass="btn button red"/>
                    <asp:Label runat="server" ID="myThrobber" style="display: none;"><img alt="" src="../../Img/ajax-loader.gif"/></asp:Label>
                    <asp:TextBox runat="server" ID="txtFileName" ClientIDMode="Static" CssClass="textbox detail hidden" required maxlength="500"></asp:TextBox>
                </div>
            </li>
            <li class="row clerafix detail hidden">
                <div class="caption" >Ghi chú :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtDes" CssClass="textbox" TextMode="MultiLine" maxlength="500"></asp:TextBox></div>
            </li>
            <li class="row clerafix detail hidden">
                <div class="caption" >Camera :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtCamera" CssClass="textbox" maxlength="150"></asp:TextBox></div>
            </li>
            <li class="row clerafix detail hidden">
                <div class="caption" >Camera model:</div>
                <div class="item"><asp:TextBox runat="server" ID="txtCameraModel" CssClass="textbox" maxlength="150"></asp:TextBox></div>
            </li>
            <li class="row clerafix detail hidden">
                <div class="caption" >FStop :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtFstop" CssClass="textbox" maxlength="55"></asp:TextBox></div>
            </li>
            <li class="row clerafix detail hidden">
                <div class="caption" >Exposure Time :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtExposureTime" CssClass="textbox" maxlength="55"></asp:TextBox></div>
            </li>
            <li class="row clerafix detail hidden">
                <div class="caption" >ISO :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtISO" CssClass="textbox" maxlength="55"></asp:TextBox></div>
            </li>
            <li class="row clerafix detail hidden">
                <div class="caption" >Exposure Blas :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtExposureBlas" CssClass="textbox" maxlength="55"></asp:TextBox></div>
            </li>
            <li class="row clerafix detail hidden">
                <div class="caption" >Focal Lengh :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtFocalLengh" CssClass="textbox" maxlength="55"></asp:TextBox></div>
            </li>
            <li class="row clerafix detail hidden">
                <div class="caption" >Max Aperture :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtMaxAperture" CssClass="textbox" maxlength="55"></asp:TextBox></div>
            </li>
            <li class="row clerafix detail hidden">
                <div class="caption" >Matering Mode :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtMateringMode" CssClass="textbox" maxlength="55"></asp:TextBox></div>
            </li>
            <li class="row clerafix detail hidden">
                <div class="caption" >Subject Distance :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtSubjectDistance" CssClass="textbox" maxlength="55"></asp:TextBox></div>
            </li>
            <li class="row clerafix detail hidden">
                <div class="caption" >Flash Mode :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtFlashMode" CssClass="textbox" maxlength="55"></asp:TextBox></div>
            </li>
            <li class="row clerafix detail hidden">
                <div class="caption" >Flash Energy :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtFlashEnergy" CssClass="textbox" maxlength="55"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="item textright" >
                    <button class="action btnOk detail hidden" runat="server" ID="btnSave" disabled="disabled" ><span class="label">Lưu</span></button>
                    <a href="javascript:void(0);" class="button action" id="btnCancel"><span class="label">Hủy</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>
<script type = "text/javascript">
    $(document).ready(function () {
        if ($('#txtFileName').val() != '') {
            showDetail();
        }
    });

    function uploadComplete(sender,args) {
        $('#txtFileName').val($('#urlPath').val() + args.get_fileName());
        showDetail();
    }

    function uploadError(sender) {
        $('#txtFileName').val("File upload failed.");
    }

    function showDetail() {
        var img = $('<div class="thumbnail"></div>').attr('style', 'background:url("' + $('#txtFileName').val() + '");');
        $('#fileUpload').after(img).addClass('hidden');
        $('.detail').removeClass("hidden");
    }
</script>