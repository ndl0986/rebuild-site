<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_email_faq.ascx.vb" Inherits="SonyAlpha.uc_email_faq" %>
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption">Họ tên :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtFullName" CssClass="textbox" required MaxLength="300" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption">Số điện thoại :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtPhone" CssClass="textbox" MaxLength="300" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption">Email :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtEmail" CssClass="textbox" MaxLength="300" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption">Tên thiết bị :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtProductName" CssClass="textbox" MaxLength="300" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption">Nội dung :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtContent" TextMode="MultiLine"
                 Columns="60" Rows="20" MaxLength="300" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="item textright" >
                    <button class="action btnOk" runat="server" ID="btnSave" disabled="disabled" ><span class="label">Gửi</span></button>
                    <a href="javascript:void(0);" class="button action" id="btnCancel"><span class="label">Hủy</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>
<script type = "text/javascript">
    $(document).ready(function () {
        $('.btnOk').removeAttr('disabled').addClass('blue');
    });
</script>