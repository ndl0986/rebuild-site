<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_login.ascx.vb" Inherits="SonyAlpha.uc_login" %>
<div class="content">
<ul class="form frmSignIn">
    <li><div id="title_frm">ĐĂNG NHẬP</div></li>
    <li class="clerafix">
        <div class="caption">Tên đăng nhập :</div>
        <div class="item">
            <input id="uc_login_txtUserName" class="textbox" required maxlength="50"/>
        </div>
    </li>
    <li class="clerafix">
        <div class="caption">Mật khẩu :</div>
        <div class="item">
            <input id="uc_login_txtPWD" class="textbox" required maxlength="100" type="password"/>
        </div>
    </li>            
    <li class="clerafix">
        <a href="javascript:void(0);" class="btn flat orange uppercase" id="uc_login_btnOk">Đăng nhập</a>
        <a href="javascript:void(0);" class="btn flat orange uppercase" id="uc_login_btnCancel">Hủy</a>
    </li>
</ul>
</div>