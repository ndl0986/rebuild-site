<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_login.ascx.vb" Inherits="SonyAlpha.uc_login" %>
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption">Tên đăng nhập :</div>
                <div class="item">
                    <input id="uc_login_txtUserName" class="textbox" required maxlength="50"/>
                </div>
            </li>
            <li class="row clerafix">
                <div class="caption">Mật khẩu :</div>
                <div class="item">
                    <input id="uc_login_txtPWD" class="textbox" required maxlength="100" type="password"/>
                </div>
            </li>            
            <li class="row clerafix">
                <div class="logined">
                    <a href="javascript:void(0);" class="button action" id="uc_login_btnOk" style="width:150px;color:Black;">Đăng nhập</a>
                    <a href="javascript:void(0);" class="button action" style="width:150px;color:Black;" id="uc_login_btnCancel"><span class="label">Hủy</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>