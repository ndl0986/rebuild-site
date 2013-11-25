<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_register.ascx.vb" Inherits="SonyAlpha.uc_register" %>
<div class="content">
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
                <div><select class="reg_label jqTransformHidden" id="uc_register_product" style="">
						<option value="">SẢN PHẨM SỬ DỤNG:</option>
						<option value="1">DSLR-A100</option>
						<option value="2">DSLR-A200/A290</option>
						<option value="3">DSLR-A300/A350</option>
						<option value="4">DSLR-A450</option>
						<option value="5">DSLR-A500/A550/A560/A580</option>
						<option value="6">DSLR-700</option>
						<option value="7">DSLR-A850/A900</option>
						<option value="8">SLT-A33/A35/A37</option>
						<option value="9">SLT-A55/A57</option>
						<option value="10">SLT-A65</option>
						<option value="11">SLT-A77</option>
						<option value="12">SLT-A99</option>
						<option value="13">NEX-3/C3/F3</option>
						<option value="14">NEX-5/5N/5R</option>
						<option value="15">NEX-6</option>
						<option value="16">NEX-7</option>
                    </select>
                </div>
                    <a href="javascript:void(0);" class="btn flat orange upper" id="uc_register_btnOk">Đăng ký</a>
                    <a href="javascript:void(0);" class="btn flat orange upper" id="uc_register_btnCancel">Hủy</a>
            </li>
        </ul>
</div>
