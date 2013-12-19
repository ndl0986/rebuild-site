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
    .datacells .item {display:inline-block; width:10%;position:relative; height:70px; overflow:hidden;border:5px solid #fff;box-sizing:border-box;-webkit-box-sizing:border-box;}
    .img_preview img {width:auto;max-width:none; height: 70px;}
    .item.checked {border:5px solid #00ff00;}
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
                    <asp:BoundField DataField="Id" ItemStyle-CssClass="img_data"/>
                    <asp:ImageField DataImageUrlField="FileName" ItemStyle-CssClass="img_preview" />
                </Columns>
                <RowStyle CssClass="item" />
                <PagerStyle CssClass="pagepad" HorizontalAlign="Right" />
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
    </div>
    <input type="hidden" id="selectPhotos" />
    <script type="text/javascript" src="/js/libs/jquery-2.0.3.min.js"></script>
    <script type="text/javascript">
        function updateSelected() {
            var chk = $('.checked');
            var arr = [];
            chk.each(function () { arr.push(parseInt($(this).text()));});
            $('#selectPhotos').val(arr.join());
        }
        $('tr.item').on('click',function () {
            $(this).toggleClass('checked');
            updateSelected();
        });
    </script>
</form>
</body>
</html>
