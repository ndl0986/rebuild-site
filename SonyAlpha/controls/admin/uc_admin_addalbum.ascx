<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_admin_addalbum.ascx.vb" Inherits="SonyAlpha.uc_admin_addalbum" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Albums : </span>
    </div>
</div>
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption" >Album's name :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtName" CssClass="textbox" required maxlength="500"></asp:TextBox></div>
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