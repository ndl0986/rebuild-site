<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_newsdetail.ascx.vb" Inherits="SonyAlpha.uc_newsdetail1" %>
<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Tin tức : <a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption" >Tiêu đề :</div>
                <div class="item"><asp:TextBox runat="server" Width="100%" ClientIDMode="Static" ID="txtTitle" CssClass="textbox" required maxlength="500"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Nhóm tin tức :</div>
                <div class="item"><label class="selectfake"><asp:DropDownList runat="server" ID="ddlGroup" ClientIDMode="Static" DataSourceID="objNewsCategory" DataTextField="Name" DataValueField="Id"></asp:DropDownList></label></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Trạng thái :</div>
                <div class="item">
                    <asp:CheckBox runat="server" ID="chkPublished" Checked="true"/>
                </div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Vắn tắt :</div>
                <div class="item"><asp:TextBox runat="server" Width="97%" ID="txtDescription" TextMode="MultiLine" CssClass="textbox" maxlength="500"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Nội dung :</div>
                <div class="item">
                    <FCKeditorV2:FCKeditor ID="fckEditor" runat="server"></FCKeditorV2:FCKeditor>
                </div>
            </li>
            <li class="row clerafix">
                <div class="item textright" >
                    <button class="action btnOk" runat="server" ID="btnSave" disabled="disabled" ><span class="label">Lưu</span></button>
                    <a href="javascript:void(0);" class="button action" id="btnCancel"><span class="label">Hủy</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>
<asp:ObjectDataSource ID="objNewsCategory" runat="server" SelectMethod="getListAll" 
        TypeName="SonyAlphaLibs.NewsCategory" >
    <SelectParameters>
        <asp:Parameter Name="connString" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>
<script type="text/javascript">
    $(document).ready(function () {
        if ($('#txtTitle').val() != '') {
            $('.btnOk').removeAttr('disabled').addClass('blue');
        }
    });
</script>