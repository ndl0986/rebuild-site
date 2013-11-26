<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_userupdate.ascx.vb" Inherits="SonyAlpha.uc_userupdate" %>
<div class="content">
        <ul class="form">
            <li class="row clearfix">
                <div class="caption">Tên đầy đủ :</div>
                <div class="item">
                    <input id="uc_userupdate_txtFullName" class="textbox" required maxlength="100" 
                    value="<%= user.FullName %>"/>
                    <input id="uc_userupdate_hdfUserName" value="<%= username %>" type="hidden" />
                </div>
            </li>
            <li class="row clearfix">
                <div class="caption">Mật khẩu khẩu mới:</div>
                <div class="item">
                    <input id="uc_userupdate_txtPWD" class="textbox" required maxlength="100" type="password"/>
                </div>
            </li>
            <li class="row clearfix">
                <div class="caption">Xác nhận mật khẩu mới:</div>
                <div class="item">
                    <input id="uc_userupdate_txtPWD1" class="textbox" required maxlength="100"  type="password"/>
                </div>
            </li>
            <li class="row clearfix">
                <div class="caption">Số điện thoại :</div>
                <div class="item">
                    <input id="uc_userupdate_txtPhone" class="textbox" required maxlength="20" 
                    value="<%= user.Phone %>"/>
                </div>
            </li>
            <li class="row clearfix">
                <div class="caption">Mã bảo mật :</div>
                <div class="item">
                    <img src="/CapchaHandler.ashx?query=<%= randomCode %>" id="imgCaptcha" alt="" /> 
                    <input id="uc_userupdate_txtCapcha" class="textbox" required maxlength="50"/>                   
                    <input type="hidden" id="uc_userupdate_hdfCapcha" value="<%= randomCode %>" />
                </div>
            </li>
            
            <li class="row clearfix">
                <div class="caption">SẢN PHẨM SỬ DỤNG:</div>
                <div class="item">
                    <select class="reg_label jqTransformHidden" id="uc_userupdate_product" style="">
						<option value=""></option>
                        <% If user.ProductUsed = 1 Then%>
						<option value="1" selected="selected">DSLR-A100</option>
                        <% Else%>
                        <option value="1">DSLR-A100</option>
                        <% End If%>
                        <% If user.ProductUsed = 2 Then%>
						<option value="2" selected="selected">DSLR-A200/A290</option>
                        <% Else%>
                        <option value="2">DSLR-A200/A290</option>
                        <% End If%>
                        <% If user.ProductUsed = 3 Then%>
						<option value="3" selected="selected">DSLR-A300/A350</option>
                        <% Else%>
                        <option value="3">DSLR-A300/A350</option>
                        <% End If%>
                        <% If user.ProductUsed = 4 Then%>
						<option value="4" selected="selected">DSLR-A450</option>
                        <% Else%>
                        <option value="4">DSLR-A450</option>
                        <% End If%>
                        <% If user.ProductUsed = 5 Then%>
						<option value="5" selected="selected">DSLR-A500/A550/A560/A580</option>
                        <% Else%>
                        <option value="5">DSLR-A500/A550/A560/A580</option>
                        <% End If%>
                        <% If user.ProductUsed = 6 Then%>
						<option value="6" selected="selected">DSLR-700</option>
                        <% Else%>
                        <option value="6">DSLR-700</option>
                        <% End If%>
                        <% If user.ProductUsed = 7 Then%>
						<option value="7" selected="selected">DSLR-A850/A900</option>
                        <% Else%>
                        <option value="7">DSLR-A850/A900</option>
                        <% End If%>
                        <% If user.ProductUsed = 8 Then%>
						<option value="8" selected="selected">SLT-A33/A35/A37</option>
                        <% Else%>
                        <option value="8">SLT-A33/A35/A37</option>
                        <% End If%>
                        <% If user.ProductUsed = 9 Then%>
						<option value="9" selected="selected">SLT-A55/A57</option>
                        <% Else%>
                        <option value="9">SLT-A55/A57</option>
                        <% End If%>
                        <% If user.ProductUsed = 10 Then%>
						<option value="10" selected="selected">SLT-A65</option>
                        <% Else%>
                        <option value="10">SLT-A65</option>
                        <% End If%>
                        <% If user.ProductUsed = 11 Then%>
						<option value="11" selected="selected">SLT-A77</option>
                        <% Else%>
                        <option value="11">SLT-A77</option>
                        <% End If%>
                        <% If user.ProductUsed = 12 Then%>
						<option value="12" selected="selected">SLT-A99</option>
                        <% Else%>
                        <option value="12">SLT-A99</option>
                        <% End If%>
                        <% If user.ProductUsed = 13 Then%>
						<option value="13" selected="selected">NEX-3/C3/F3</option>
                        <% Else%>
                        <option value="13">NEX-3/C3/F3</option>
                        <% End If%>
                        <% If user.ProductUsed = 14 Then%>
						<option value="14" selected="selected">NEX-5/5N/5R</option>
                        <% Else%>
                        <option value="14">NEX-5/5N/5R</option>
                        <% End If%>
                        <% If user.ProductUsed = 15 Then%>
						<option value="15" selected="selected">NEX-6</option>
                        <% Else%>
                        <option value="15">NEX-6</option>
                        <% End If%>
                        <% If user.ProductUsed = 16 Then%>
						<option value="16" selected="selected">NEX-7</option>
                        <% Else%>
                        <option value="16">NEX-7</option>
                        <% End If%>
                    </select>
                </div>
            </li>
            <li class="right clearfix">
                    <a href="javascript:void(0);" class="btn flat orange upper" id="uc_userupdate_btnOk">Cập nhật</a>
            </li>
        </ul>
</div>