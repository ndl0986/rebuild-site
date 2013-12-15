<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_userforgotpass.ascx.vb" Inherits="SonyAlpha.uc_userforgotpass" %>
<div class="content clearfix">
    <div class="title_frm">QUÊN MẬT KHẨU</div>
    <ul class="form frmForgotPass floatleft">
        <li class="row clearfix">
            <div class="caption">Email :</div>
            <div class="item">
                <input id="uc_forgotpass_txtEmail" class="textbox" required maxlength="150"/>
            </div>
        </li>
        <li class="row clearfix">
            <div class="caption">Mã bảo mật :</div>
            <div class="item">
                <img src="/CapchaHandler.ashx?query=<%= randomCode %>" id="imgCaptcha" alt="" /> 
                <input id="uc_forgotpass_txtCapcha" class="textbox" required maxlength="50"/>                   
                <input type="hidden" id="uc_forgotpass_hdfCapcha" value="<%= randomCode %>" />
            </div>
        </li>
        <li class="right clearfix">
            <a href="javascript:void(0);" class="btn flat orange upper" id="uc_userforgotpass_btnOk">Nhận lại mật khẩu</a>
            <a href="javascript:void(0);" class="btn flat orange upper" id="uc_userforgotpass_btnCancel">Hủy</a>
        </li>
    </ul>
    <span class="error_message" id="uc_forgotpass_mess"></span>
</div>
