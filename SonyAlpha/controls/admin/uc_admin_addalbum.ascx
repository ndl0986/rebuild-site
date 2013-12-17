<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_admin_addalbum.ascx.vb" Inherits="SonyAlpha.uc_admin_addalbum" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Albums :<a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption" >Tên Album :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtName" CssClass="textbox" required maxlength="500"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Loại Album :</div>
                <div class="item"><label class="selectfake">
                    <asp:DropDownList runat="server" ID="ddlAlbumType">
                        <asp:ListItem Value="0">Thường</asp:ListItem>
                        <asp:ListItem Value="1">Dành cho Trung tâm Sony</asp:ListItem>
                        <asp:ListItem Value="2">Dành cho Nhóm sản phẩm</asp:ListItem>
                    </asp:DropDownList></label>
                </div>
            </li>
            <li class="row clerafix">
                <div class="item textright" >
                    <asp:Button runat="server" CssClass="button action btnOk" ID="btnSave" ClientIDMode="Static" Text="Lưu" Enabled="false" />
                    <a href="javascript:void(0);" class="button action" id="btnCancel"><span class="label">Hủy</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>
