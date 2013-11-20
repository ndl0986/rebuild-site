<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_admin_addsonycenter.ascx.vb" Inherits="SonyAlpha.uc_admin_addsonycenter" %>
<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a>
        <span class="heading">Hệ thống > Trung tâm Sony > Thêm trung tâm :<a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
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
                <div class="item">
                    <FCKeditorV2:FCKeditor ID="txtDescription" runat="server" Height="500px"></FCKeditorV2:FCKeditor>
                </div>
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
                <div class="caption" >Album :</div>
                <div class="item"><label class="selectfake"><asp:DropDownList runat="server" ID="ddlAlbumList" DataTextField="centerImage" DataValueField="centerImage"></asp:DropDownList></label></div>
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
    });
</script>