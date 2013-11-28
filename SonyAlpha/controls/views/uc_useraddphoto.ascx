<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_useraddphoto.ascx.vb" Inherits="SonyAlpha.uc_useraddphoto" %>
<link rel="stylesheet" type="text/css" href="css/uploadify.css"/>
<div class="user_upload_page content">
    <div class="message"><%= message %></div>
    <ul class="ul_upload clearfix">
        <li>
            <div class="caption">Album : </div>
            <div class="item">
                <asp:DropDownList ID="ddlAlbums" runat="server" ClientIDMode="Static" AutoPostBack="True"></asp:DropDownList>
            </div>
        </li>
        <li class="row clerafix">
            <div class="caption" >Chọn ảnh :</div>
            <div class="item">
                <ajaxToolkit:AjaxFileUpload ID="AjaxFileUpload1" runat="server" ThrobberID="myThrobber" OnClientUploadError="uploadError" OnClientUploadComplete="uploadComplete" OnClientUploadStart="onClientUploadStart" OnClientUploadCompleteAll="onClientUploadCompleteAll" AllowedFileTypes="jpg,jpeg,gif,png" MaximumNumberOfFiles="10"/>
                <asp:Label runat="server" ID="myThrobber" style="display: none;"><img alt="" src="../../Img/ajax-loader.gif"/></asp:Label>
            </div>
        </li>
    </ul>
    <div id="AddToAlbum">
        <div id="fileList"></div>
        <asp:Button ID="btnSave" runat="server" Text="OK" />
    </div>

    <div id="testExif" runat="server"></div>
</div>
<script type = "text/javascript">
    $(document).ready(function () {

    });
    function uploadComplete(sender, args) {
        var img = $('<div class="thumbnail"></div>').attr('style', 'background:url("' + args._postedUrl + args.get_fileName() + '");');
        $('#fileList').append(img);
    }

    function uploadError(sender) {
    }

    function onClientUploadStart(sender, e) {
    }

    function onClientUploadCompleteAll(sender, e) {

    }
    
</script>