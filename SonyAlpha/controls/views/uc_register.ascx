<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_register.ascx.vb" Inherits="SonyAlpha.uc_register" %>

<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clearfix">
                <div class="caption">Tên đăng nhập :</div>
                <div class="item">
                    <input id="uc_register_txtUserName" class="textbox" required maxlength="50"/>
                </div>
            </li>
            <li class="row clearfix">
                <div class="caption">Mật khẩu :</div>
                <div class="item">
                    <input id="uc_register_txtPWD" class="textbox" required maxlength="100" type="password"/>
                </div>
            </li>
            <li class="row clearfix">
                <div class="caption">Xác nhận mật khẩu :</div>
                <div class="item">
                    <input id="uc_register_txtPWD1" class="textbox" required maxlength="100"  type="password"/>
                </div>
            </li>
            <li class="row clearfix">
                <div class="caption">Tên đầy đủ :</div>
                <div class="item">
                    <input id="uc_register_txtFullName" class="textbox" required maxlength="100"/>
                </div>
            </li>
            <li class="row clearfix">
                <div class="caption">Mã bảo mật :</div>
                <div class="item">
                    <img src="/CapchaHandler.ashx?query=<%= randomCode %>" id="imgCaptcha" alt="" /> 
                    <input id="uc_register_txtCapcha" class="textbox" required maxlength="50"/>                   
                    <input type="hidden" id="uc_register_hdfCapcha" value="<%= randomCode %>" />
                </div>
            </li>
            <li class="row clearfix">
                <div class="caption">Số điện thoại :</div>
                <div class="item">
                    <input id="uc_register_txtPhone" class="textbox" required maxlength="20" />
                </div>
            </li>
            <li class="row clearfix">
                <div class="caption">Email :</div>
                <div class="item">
                    <input id="uc_register_txtEmail" class="textbox" required maxlength="150"/>
                </div>
            </li>
            <li class="row clearfix">
                <div class="logined">
                    <a href="javascript:void(0);" class="button action" id="uc_register_btnOk" style="width:150px;color:Black;">Đăng ký</a>
                    <a href="javascript:void(0);" class="button action" style="width:150px;color:Black;" id="uc_register_btnCancel"><span class="label">Hủy</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>
