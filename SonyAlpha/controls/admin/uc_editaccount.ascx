<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_editaccount.ascx.vb" Inherits="SonyAlpha.uc_editaccount" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Tài khoản : <a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
<div class="content">
    <div class="section">
        <h4 class="heading">Thông tin tài khoản <asp:HyperLink runat="server" ID="linkAccount"></asp:HyperLink></h4>
        <ul class="form">
            <li class="row clerafix">
                <div class="caption" >Nhóm tài khoản :</div>
                <div class="item"><label class="selectfake"><asp:DropDownList runat="server" ID="ddlGroup" DataSourceID="objGroupAccount" DataTextField="GroupName" DataValueField="id"></asp:DropDownList></label>
                </div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Tài khoản :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtUsername" CssClass="textbox" required minlength="4" maxlength="20"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Tên :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtName" CssClass="textbox" required></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Mật khẩu :</div>
                <div class="item">
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>
                    <asp:HiddenField ID="hdfPass" runat="server" />
                </div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Xác nhận mật khẩu :</div>
                <div class="item"><asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password"  CssClass="textbox"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" ></div>
                <div class="item textright" >
                    <button class="action btnOk" runat="server" ID="btnSave" disabled="disabled" ><span class="label">Lưu</span></button>
                    <a class="button action" id="btnCancel"><span class="label">Hủy</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>
<asp:ObjectDataSource ID="objGroupAccount" runat="server" SelectMethod="getListAll"
    TypeName="SonyAlphaLibs.UserGroup" 
OldValuesParameterFormatString="original_{0}">
    <SelectParameters>
        <asp:Parameter Name="connString" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>  