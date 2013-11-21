<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_register.ascx.vb" Inherits="SonyAlpha.uc_register" %>
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption">Tên đăng nhập :</div>
                <div class="item">
                    <asp:TextBox runat="server" ID="txtUserName" CssClass="textbox" required MaxLength="50" autocomplete="off" ></asp:TextBox>
                </div>
            </li>
            <li class="row clerafix">
                <div class="caption">Mật khẩu :</div>
                <div class="item">
                    <asp:TextBox runat="server" ID="txtPWD" CssClass="textbox" TextMode="Password" required MaxLength="50" autocomplete="off"></asp:TextBox>
                </div>
            </li>
            <li class="row clerafix">
                <div class="caption">Xác nhận mật khẩu :</div>
                <div class="item">
                    <asp:TextBox runat="server" ID="txtPWD1" CssClass="textbox" TextMode="Password" required MaxLength="50" autocomplete="off"></asp:TextBox>
                </div>
            </li>
            <li class="row clerafix">
                <div class="item textright" >
                    <%--<button class="action btnOk" runat="server" ID="btnSave" ><span class="label">Đăng ký</span></button>--%>
                    <a href="#" id="btnOk" class="button action" onclick="doLogin();" >Đăng ký</a>
                    <a href="javascript:void(0);" class="button action" id="btnCancel"><span class="label">Hủy</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {

    });

    
</script>