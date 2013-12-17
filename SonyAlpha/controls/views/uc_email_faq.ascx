<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_email_faq.ascx.vb" Inherits="SonyAlpha.uc_email_faq" %>
<div class="content">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption">Họ tên :</div>
                <div class="item"><input id="uc_email_fag_txtFullName" class="textbox" required maxlength="300" /></div>
            </li>
            <li class="row clerafix">
                <div class="caption">Số điện thoại :</div>
                <div class="item"><input id="uc_email_fag_txtPhone" class="textbox" maxlength="300" /></div>
            </li>
            <li class="row clerafix">
                <div class="caption">Email :</div>
                <div class="item"><input id="uc_email_fag_txtEmail" class="textbox" maxlength="300" required /></div>
            </li>
            <li class="row clerafix">
                <div class="caption">Tên thiết bị :</div>
                <div class="item"><input id="uc_email_fag_txtProductName" class="textbox" maxlength="300" /></div>
            </li>
            <li class="row clerafix">
                <div class="caption">Nội dung :</div>
                <div class="item"><textarea  id="uc_email_fag_txtContent" class="noresize" rows="4" cols="58" maxlength="1000" required ></textarea></div>
            </li>
            <li class="row text-right" style="width:90%;">
                <span id="uc_email_fag_message" class="error_message"></span>
                <a href="javascript:void(0);" class="btn flat orange" id="uc_email_fag_btnOk">Gửi</a>
                <a href="javascript:void(0);" class="btn flat orange" id="uc_email_fag_btnCancel">Hủy</a>
            </li>
        </ul>
</div>