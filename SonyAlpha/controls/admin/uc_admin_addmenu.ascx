<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_admin_addmenu.ascx.vb" Inherits="SonyAlpha.uc_admin_addmenu" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Nọi dung > Menu : <a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption" >Menu :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtName" CssClass="textbox" required maxlength="100"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Link to :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtSeoURL" CssClass="textbox" required maxlength="500"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Số thứ tự:</div>
                <div class="item">
                    <asp:TextBox runat="server" ID="txtSortOrder" CssClass="textbox" required></asp:TextBox>
                </div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Menu cấp trên :</div>
                <div class="item">
                    <label class="selectfake">
                        <asp:DropDownList runat="server" ID="ddlMenu" DataTextField="Name" DataValueField="Id"></asp:DropDownList>
                    </label>
                </div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Banner :</div>
                <div class="item">
                    <asp:Repeater ID="rptListBanner" runat="server">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="bannername"></asp:Label>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
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