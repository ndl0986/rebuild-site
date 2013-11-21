﻿<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_admin_editaccount.ascx.vb" Inherits="SonyAlpha.uc_admin_editaccount" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a>
        <span class="heading">Hệ thống > Danh sách tài khoản > Chi tiết tài khoản :<a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption" >Tên đăng nhập :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtUName" CssClass="textbox" required MaxLength="50" autocomplete="off" ReadOnly="true"></asp:TextBox></div>
            </li> 
            <li class="row clerafix">
                <div class="caption" >Tên đầy đủ :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtFullName" CssClass="textbox" MaxLength="200" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Trạng thái :</div>
                <div class="item"><asp:CheckBox runat="server" ID="chkStatus" Checked ></asp:CheckBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Nhóm :</div>
                <div class="item"><label class="selectfake">
                    <asp:DropDownList runat="server" ID="ddlUserGroup">
                    </asp:DropDownList></label></div>
            </li>
            <li class="row clerafix">
                <div class="item textright" >
                    <button class="action btnOk" runat="server" ID="btnSave" disabled="disabled" ><span class="label">Lưu</span></button>
                    <button class="action btnOk" runat="server" ID="btnResetPass" disabled="disabled" ><span class="label">Reset mật khẩu</span></button>
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