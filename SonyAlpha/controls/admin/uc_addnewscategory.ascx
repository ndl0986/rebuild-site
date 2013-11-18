<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_addnewscategory.ascx.vb" Inherits="SonyAlpha.uc_addnewscategory" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Nhóm tin tức : <a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div
</div>
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption" >Nhóm tin :</div>
                <div class="item"><asp:TextBox runat="server" ClientIDMode="Static" ID="txtName" CssClass="textbox" required maxlength="200"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Nhóm chủ :</div>
                <div class="item"><label class="selectfake"><asp:DropDownList runat="server" ID="ddlGroup" ClientIDMode="Static" DataSourceID="objGroup" DataTextField="Name" DataValueField="Id"></asp:DropDownList></label></div>
            </li>
            <li class="row clerafix">
                <div class="item textright" >
                    <button class="action btnOk" runat="server" ID="btnSave" disabled="disabled"><span class="label">Lưu</span></button>
                    <a href="javascript:void(0);" class="button action" id="btnCancel"><span class="label">Hủy</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>
<asp:ObjectDataSource ID="objGroup" runat="server" SelectMethod="getListAll" 
        TypeName="SonyAlphaLibs.NewsCategory" >
    <SelectParameters>
        <asp:Parameter Name="connString" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>
<script type="text/javascript">
        $(document).ready(function () {
            if ($('#txtName').val() != '') {
                $('.btnOk').removeAttr('disabled').addClass('blue');
            }
        });
</script>