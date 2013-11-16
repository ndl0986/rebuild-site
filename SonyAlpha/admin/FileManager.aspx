<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FileManager.aspx.vb" Inherits="SonyAlpha.FileManager" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sony Alpha - Files Managerment</title>
    <meta http-equiv="Content-Type" content="text/aspx; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="../css/reset.css"/>
    <style>
        select {outline:none;min-height:360px;}
        .explorer input[type=text]{ width:100%;}
        .explorer { height:400px; width:100%; border:solid 1px #ccc;border-top:none;}
        .explorer > tbody > tr { border-top:solid 1px #ccc;}
        .explorer > tbody > tr > td { padding:5px;}
        .explorer td { vertical-align:top;}
        #preview {width:auto;max-width:100%;}
    </style>
</head>
<body>
<form id="form1" runat="server">
        <table class="explorer" cellpadding="0" cellspacing="0" border="0">
            <tr>
                <td colspan="3"><asp:TextBox runat="server" ID="txtURL" placeholder="URL"></asp:TextBox></div></td>
            </tr>
            <tr>
                <td width="20%"><asp:TreeView ID="trvFolder" runat="server" Width="200px" Height="100%" ShowLines="true" SelectedNodeStyle-BackColor="#2233AA" SelectedNodeStyle-ForeColor="#ffffff"></asp:TreeView></td>
                <td width="20%"><asp:ListBox runat="server" ID="lstImage" SelectionMode="Single" Height="100%" Width="100%"></asp:ListBox></td>
                <td width="60%"><img id="preview" alt="" src="ex.jpg" /></td>
            </tr>
        </table>
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td>Upload File :</td>
                <td><asp:FileUpload ID="FileUpload1" runat="server"/></td>
                <td><asp:Button runat="server" ID="btnOK" Text="Upload" /><asp:Button runat="server" ID="btnDelete" Text="Delete" /><input id="btnClose" type="button" value="OK" /></td>
            </tr>
            <tr>
                <td>Thư mục :</td>
                <td><asp:TextBox runat="server" ID="txtFolder"></asp:TextBox></td>
                <td><asp:Button runat="server" ID="btnCreateFolder" Text=" Thêm " /><asp:Button runat="server" ID="btnDeleteFolder" Text="  Xóa  " /></td>
            </tr>
        </table>
</form>
<script type="text/javascript" language="javascript" src="../js/libs/jquery-2.0.3.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#lstImage').change(function () {
            $('#preview').attr('src', $(this).val());
            $('#txtURL').val($(this).val());
        });
        $("#btnClose").click(function () {
            if (location.href.indexOf("?bannerphoto") != -1) {
                var target = window.opener.document.getElementById('txtPhotoURL');
                $(target).val(document.getElementById('txtURL').value);
                $(target).focus();
            }
            //window.close();
        });

    });
</script>
</body>
</html>
