<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_login.ascx.vb" Inherits="SonyAlpha.uc_login" %>
<div class="content clearfix">
<div class="title_frm">ĐĂNG NHẬP</div>
<ul class="form frmSignIn floatleft">
    <li class="clearfix">
        <div class="caption">Tên đăng nhập :</div>
        <div class="item"><input id="uc_login_txtUserName" class="textbox" required maxlength="50"/></div>
    </li>
    <li class="clearfix">
        <div class="caption">Mật khẩu :</div>
        <div class="item"><input id="uc_login_txtPWD" class="textbox" required maxlength="100" type="password"/></div>
    </li>
    <li class="clearfix">
        <div class="caption">Mã bảo mật :</div>
        <div class="item">
            <img src="/CapchaHandler.ashx?query=<%= randomCode %>" id="imgCaptcha" alt="" /> 
            <input id="uc_login_txtCapcha" class="textbox" required maxlength="50"/>                   
            <input type="hidden" id="uc_login_hdfCapcha" value="<%= randomCode %>" />
        </div>
    </li>
</ul>
<ul class="form frmSignIn floatleft">
    <li class="clearfix"><div class="caption">Ghi nhớ đăng nhập <input name="uc_login_chkSaveLogin" id="uc_login_chkSaveLogin" type="checkbox"/></div></li>    
    <li class="clearfix"><div class="item"> Quên mật khẩu? <a href="javascript:void(0);" id="uc_login_forgot_pass">Click vào đây</a></div></li>    
    <li class="clearfix"><div class="item"> Chưa có tài khoản? <a href="javascript:void(0);" id="uc_login_goregister">Vui lòng đăng ký</a></div></li>
    <li class="clerafix">
        <a href="javascript:void(0);" class="btn flat orange uppercase" id="uc_login_btnOk">Đăng nhập</a>
        <a href="javascript:void(0);" class="btn flat orange uppercase" id="uc_login_btnCancel">Hủy</a>
    </li>
</ul>
</div>