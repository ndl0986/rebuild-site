<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_useraddphoto.ascx.vb" Inherits="SonyAlpha.uc_useraddphoto" %>
<div class="content">
    <div class="message"><%= message %></div>
    <% If String.IsNullOrEmpty(message) Then%>
    <ul class="ul_list_albums clearfix">
        <li>
            <div class="caption">Album : </div>
            <div class="item">
                <asp:DropDownList ID="ddlAlbums" runat="server"></asp:DropDownList>
            </div>
        </li>
        <li class="row clerafix">
                <div class="caption" >Chọn ảnh :</div>
                <div class="item">
                    <asp:HiddenField runat="server" ID="urlPath" ClientIDMode="Static" />
                    <ajaxToolkit:AsyncFileUpload ID="fileUpload" ClientIDMode="Static" runat="server" ThrobberID="myThrobber" OnClientUploadError="uploadError" OnClientUploadComplete="uploadComplete" CssClass="btn button red"/>
                    <asp:Label runat="server" ID="myThrobber" style="display: none;"><img alt="" src="../../Img/ajax-loader.gif"/></asp:Label>
                    <asp:TextBox runat="server" ID="txtFileName" ClientIDMode="Static" CssClass="textbox detail hidden" required maxlength="500"></asp:TextBox>
                </div>
            </li>
    </ul>
    <% End If %>
</div>
<script type = "text/javascript">
    $(document).ready(function () {
        $('.btnOk').removeAttr('disabled').addClass('blue');
        if ($('#txtFileName').val() != '') {
            showDetail();
        }
    });

    function uploadComplete(sender, args) {
        $('#txtFileName').val($('#urlPath').val() + args.get_fileName());
        showDetail();
    }

    function uploadError(sender) {
        $('#txtFileName').val("File upload failed.");
    }

    function showDetail() {
        var img = $('<div class="thumbnail"></div>').attr('style', 'background:url("/upload/image/product/' + $('#txtFileName').val() + '");');
        $('#fileUpload').after(img).addClass('hidden');
        $('.detail').removeClass("hidden");
    }
</script>