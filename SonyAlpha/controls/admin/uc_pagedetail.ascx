<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_pagedetail.ascx.vb" Inherits="SonyAlpha.uc_pagedetail" %>
<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Trang nội dung : </span>
    </div>
</div>
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption" >Trang :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtTitle" CssClass="textbox" required maxlength="300"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Tiêu đề trang :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtLongTitle" CssClass="textbox" required maxlength="500"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Url</div>
                <div class="item"><asp:TextBox runat="server" ID="txtUrl" CssClass="textbox" ReadOnly=true ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Banner :</div>
                <div class="item">
                </div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Nội dung :</div>
                <div class="item">
                    <FCKeditorV2:FCKeditor ID="fckEditor" runat="server" Height="500px"></FCKeditorV2:FCKeditor>
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
  