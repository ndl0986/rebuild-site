<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FilePhotos.aspx.vb" Inherits="SonyAlpha.FilePhotos" %>
<!DOCTYPE html>
<html">
<head>
    <title>Sony Alpha - Files Managerment</title>
    <meta http-equiv="Content-Type" content="text/aspx; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="../css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="../css/admin.css"/>
    <style type="text/css">
    .datacells {display:block; width:100%; font-size:0;}
    .datacells > tbody > tr {display:inline-block; width:10%;position:relative; height:70px; overflow:hidden;}
    .img_preview img {width:auto;max-width:none; height: 70px;}
    .chk-cell {position:absolute; left:5px; top:5px;}
    .datacells tr.pagepad { display:block; width:100%; height:30px; font-size:13px; color:#333;border-bottom: 2px solid #6678B1;}
    .datacells tr.pagepad a { color: #039;}
    .datacells tr.pagepad td { border-bottom: none; background: none; padding: 6px 8px;}
    </style>
</head>
<body>
<form id="frmPhotoList" runat="server">
<ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></ajaxToolkit:ToolkitScriptManager>
    <div class="wrapper">
    <asp:UpdatePanel ID="UpdatePanelMain" runat="server">
        <ContentTemplate>
                <asp:GridView EmptyDataText="Không có photo nào" ID="grvPhotos" runat="server" PageSize="100" AllowPaging="True" AllowSorting="True" SkinID="Defaultgridview" AutoGenerateColumns="False" ShowHeader="false" ShowFooter="false" CssClass="datacells" GridLines="None">
                    <Columns>
                        <asp:TemplateField HeaderText="Select" ItemStyle-CssClass="chk-cell"><ItemTemplate><input type="checkbox" data-id="<%#Eval("Id") %>" /></ItemTemplate></asp:TemplateField>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="true"/>
                        <asp:ImageField DataImageUrlField="FileName" HeaderText="Image" ItemStyle-CssClass="img_preview" />
                    </Columns>
                    <PagerStyle CssClass="pagepad" HorizontalAlign="Right" />
                </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
    </div>
</form>
</body>
</html>
