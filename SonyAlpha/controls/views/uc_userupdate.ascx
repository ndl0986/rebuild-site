<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_userupdate.ascx.vb" Inherits="SonyAlpha.uc_userupdate" %>
<div class="content">
        <ul class="form">
            <li class="row clearfix">
                <div class="caption">Tên đầy đủ :</div>
                <div class="item"><input id="uc_userupdate_txtFullName" class="textbox" required maxlength="100" value="<%= user.FullName %>"/><input id="uc_userupdate_hdfUserName" value="<%= username %>" type="hidden" /></div>
            </li>
            <li class="row clearfix">
                <div class="caption">Mật khẩu khẩu mới:</div>
                <div class="item"><input id="uc_userupdate_txtPWD" class="textbox" required maxlength="100" type="password"/></div>
            </li>
            <li class="row clearfix">
                <div class="caption">Xác nhận mật khẩu mới:</div>
                <div class="item"><input id="uc_userupdate_txtPWD1" class="textbox" required maxlength="100"  type="password"/></div>
            </li>
            <li class="row clearfix">
                <div class="caption">Số điện thoại :</div>
                <div class="item"><input id="uc_userupdate_txtPhone" class="textbox" required maxlength="20" value="<%= user.Phone %>"/></div>
            </li>
            <li class="row clearfix">
                <div class="caption">Mã bảo mật :</div>
                <div class="item"><img src="/CapchaHandler.ashx?query=<%= randomCode %>" id="imgCaptcha" alt="" /> <input id="uc_userupdate_txtCapcha" class="textbox" required maxlength="50"/><input type="hidden" id="uc_userupdate_hdfCapcha" value="<%= randomCode %>" /></div>
            </li>
            <li class="row clearfix">
                <div class="caption">SẢN PHẨM SỬ DỤNG:</div>
                <div class="item">
                    <select class="reg_label jqTransformHidden" id="uc_userupdate_product" data-selected="<%=user.ProductUsed%>" style=""><option value=""></option><option value="1">DSLR-A100</option><option value="2">DSLR-A200/A290</option><option value="3">DSLR-A300/A350</option><option value="4">DSLR-A450</option><option value="5">DSLR-A500/A550/A560/A580</option><option value="6">DSLR-700</option><option value="7">DSLR-A850/A900</option><option value="8">SLT-A33/A35/A37</option><option value="9">SLT-A55/A57</option><option value="10">SLT-A65</option><option value="11">SLT-A77</option><option value="12">SLT-A99</option><option value="13">NEX-3/C3/F3</option><option value="14">NEX-5/5N/5R</option><option value="15">NEX-6</option><option value="16">NEX-7</option></select>
                </div>
            </li>
            <li class="right clearfix"><a href="javascript:void(0);" class="btn flat orange upper" id="uc_userupdate_btnOk">Cập nhật</a></li>
    </ul>
</div>
<script>
    $(document).ready(function () {
        $('#uc_userupdate_product').val($(this).attr('data-selected'));
    });
</script>