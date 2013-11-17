<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_admin_addsonycenter.ascx.vb" Inherits="SonyAlpha.uc_admin_addsonycenter" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a>
        <span class="heading">Hệ thống > Trung tâm Sony > Thêm trung tâm :<a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption" >Tên trung tâm :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtName" CssClass="textbox" required MaxLength="300" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Địa chỉ :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtAddress" CssClass="textbox" MaxLength="500"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Điện thoại :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtPhone" CssClass="textbox" MaxLength="50"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Fax :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtFax" CssClass="textbox" MaxLength="50"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Tỉnh/Thành Phố :</div>
                <div class="item"><label class="selectfake"><asp:DropDownList runat="server" ID="ddlProvince" DataTextField="Province" DataValueField="Province"></asp:DropDownList></label></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Mô tả :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtDescription" CssClass="textbox" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Cấp đại lý :</div>
                <div class="item"><label class="selectfake">
                    <asp:DropDownList runat="server" ID="ddlRetailLevel">
                        <asp:ListItem Value="0">0</asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="5">5</asp:ListItem>
                    </asp:DropDownList></label></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Hình đại diện :</div>
                <div class="item">
                    <asp:HiddenField runat="server" ID="urlPath" ClientIDMode="Static" />
                    <ajaxToolkit:AsyncFileUpload ID="fileUpload" ClientIDMode="Static" runat="server" ThrobberID="myThrobber" OnClientUploadError="uploadError" OnClientUploadComplete="uploadComplete" CssClass="btn button red"/>
                    <asp:Label runat="server" ID="myThrobber" style="display: none;"><img alt="" src="../../Img/ajax-loader.gif"/></asp:Label>
                    <asp:TextBox runat="server" ID="txtcenterImage" ClientIDMode="Static" CssClass="textbox detail hidden" required maxlength="500"></asp:TextBox>
                </div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Giờ mở cửa :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtOpenTime" CssClass="textbox" MaxLength="50" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Giờ đóng cửa :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtCloseTime" CssClass="textbox" MaxLength="50" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Kinh độ :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtLongitude" CssClass="textbox" MaxLength="20"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Vĩ độ :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtLatitude" CssClass="textbox" MaxLength="20"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="item textright" >
                    <button class="action btnOk" runat="server" ID="btnSave" disabled="disabled" ><span class="label">Lưu</span></button>
                    <a href="javascript:void(0);" class="button action" id="btnCancel"><span class="label">Hủy</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>
<script type = "text/javascript">
    $(document).ready(function () {
        $('.btnOk').removeAttr('disabled').addClass('blue');
        if ($('#txtcenterImage').val() != '') {
            showDetail();
        }
    });

    function uploadComplete(sender, args) {
        $('#txtcenterImage').val($('#urlPath').val() + args.get_fileName());
        showDetail();
    }

    function uploadError(sender) {
        $('#txtcenterImage').val("File upload failed.");
    }

    function showDetail() {
        var img = $('<div class="thumbnail"></div>').attr('style', 'background:url(/upload/image/sonycenter/' + $('#txtcenterImage').val() + ');');
        $('#fileUpload').after(img).addClass('hidden');
        $('.detail').removeClass("hidden");
    }
</script>