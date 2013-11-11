<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FileManager.aspx.vb" Inherits="SonyAlpha.FileManager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sony Alpha - Files Managerment</title>
    <meta http-equiv="Content-Type" content="text/aspx; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="../css/reset.css"/>
</head>
<body>
<form id="form1" runat="server">
        <div>
            Address : <asp:TextBox Width="94%" runat="server" ID="txtURL"></asp:TextBox>
        </div>
        <table cellpadding="0" cellspacing="0" border="1" style=" height:400px; width:100%;">
            <tr>
                <td style=" width:200px;" valign="top">
                    <asp:TreeView ID="trvFolder" runat="server" Width="200px" Height="100%" ShowLines="true" SelectedNodeStyle-BackColor="#2233AA" SelectedNodeStyle-ForeColor="#ffffff"></asp:TreeView>
                </td>
                <td style=" width:200px;" valign="top">
                    <asp:ListBox runat="server" ID="lstImage" SelectionMode="Single" Height="450px" Width="200px" AutoPostBack="true"></asp:ListBox>
                </td>
                <td align="center" valign="top">
                    <iframe width="100%" height="100%" runat="server" id="ifrBrowse" src="" frameborder="0"></iframe>
                </td>
            </tr>
        </table>
        <table border="0" cellpadding="2" cellspacing="2">
            <tr>
                <td>Upload File :</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server"/>
                </td>
                <td>
                    <asp:Button runat="server" ID="btnOK" Text="Upload" />
                    <asp:Button runat="server" ID="btnDelete" Text="Delete" />  
                    <input id="btnClose" type="button" value="OK" /></td>
            </tr>
            <tr>
                <td>Thư mục :</td>
                <td><asp:TextBox runat="server" ID="txtFolder"></asp:TextBox></td>
                <td>
                    <asp:Button runat="server" ID="btnCreateFolder" Text=" Thêm " />
                    <asp:Button runat="server" ID="btnDeleteFolder" Text="  Xóa  " />
                </td>
            </tr>
        </table>
</form>
<script type="text/javascript" language="javascript" src="../js/libs/jquery-2.0.3.min.js"></script>
</body>
</html>
