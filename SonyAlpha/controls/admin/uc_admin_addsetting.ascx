<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_admin_addsetting.ascx.vb" Inherits="SonyAlpha.uc_admin_addsetting" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a>
        <span class="heading">Hệ thống - Giao diện > Cấu hình > Thêm cấu hình :<a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption" >Tên cấu hình :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtName" CssClass="textbox" required MaxLength="50" ></asp:TextBox></div>
            </li>           
            <li class="row clerafix">
                <div class="caption" >Giá trị :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtValue" CssClass="textbox" MaxLength="150"></asp:TextBox></div>
            </li>            
            <li class="row clerafix">
                <div class="item textright" >
                    <button class="action btnOk detail " runat="server" ID="btnSave"  ><span class="label">Lưu</span></button>
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