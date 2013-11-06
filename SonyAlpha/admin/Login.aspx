<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="SonyAlpha.Login" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sony Alpha - Login</title>
    <link rel="stylesheet" type="text/css" href="../css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="../css/admin.css"/>
</head>
<body>
    <form id="frmMain" runat="server">
    <div class="wrapper">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="header"></div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="box formlogin">
                    <div class="header">Đăng nhập hệ thống</div>
                    <div class="row">
                        <asp:TextBox ID="txtAccount" runat="server" CssClass="textbox" placeholder="Tài khoản"></asp:TextBox>
                    </div>
                    <div class="row">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="textbox" placeholder="Mật khẩu"></asp:TextBox>
                    </div>
                    <div class="row clearfix">
                        <button id="btnLogIn" runat="server" class="action blue"><span class="label">Đăng nhập</span></button>
                        <button id="btnCancel" runat="server" class="action"><span class="label">Hủy</span></button>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

    </form>
    <script type="text/javascript" language="javascript" src="../js/libs/jquery-2.0.3.min.js"></script>
</body>
</html>
