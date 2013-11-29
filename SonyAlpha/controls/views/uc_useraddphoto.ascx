<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_useraddphoto.ascx.vb" Inherits="SonyAlpha.uc_useraddphoto" %>
<link rel="stylesheet" type="text/css" href="css/uploadify.css"/>
<div class="user_upload_page content">
    <div class="message"><%= message %></div>
    <ul class="ul_upload clearfix">
        <li>
            <div class="caption">Album : </div>
            <div class="item">
                <asp:DropDownList ID="ddlAlbums" runat="server" ClientIDMode="Static"></asp:DropDownList>
            </div>
        </li>
        <li class="row clerafix hidden">
            <div class="caption" >Chọn ảnh :</div>
            <div class="item">
                <ajaxToolkit:AjaxFileUpload ID="AjaxFileUpload1" runat="server" ThrobberID="myThrobber" OnClientUploadError="uploadError" OnClientUploadComplete="uploadComplete" OnClientUploadStart="onClientUploadStart" OnClientUploadCompleteAll="onClientUploadCompleteAll" AllowedFileTypes="jpg,jpeg,gif,png" MaximumNumberOfFiles="10"/>
                <asp:Label runat="server" ID="myThrobber" style="display: none;"><img alt="" src="../../Img/ajax-loader.gif"/></asp:Label>
            </div>
        </li>
    </ul>
    <div id="AddToAlbum" class="hidden">
        <div id="fileList" class="clearfix"></div>
        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn flat orange" />
    </div>
</div>
<script type = "text/javascript">
    $(document).ready(function () {
        $('#ddlAlbums').change(function () {
            if ($('#ddlAlbums').val() != '0') $('.ul_upload li.hidden').removeClass('hidden');
        });
    });
    function uploadComplete(sender, args) {
        var img = $('<div class="thumbnail"></div>').attr('style', 'background-image:url("' + args._postedUrl + args.get_fileName() + '");');
        $('#fileList').append(img);
    }

    function uploadError(sender) {
    }

    function onClientUploadStart(sender, e) {
    }

    function onClientUploadCompleteAll(sender, e) {
        $('#form1').attr('action', 'Default.aspx?tpl=useraddphoto');
        $('#AddToAlbum').removeClass('hidden');
    }
    
</script>