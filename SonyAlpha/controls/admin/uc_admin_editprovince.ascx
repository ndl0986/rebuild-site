<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_admin_editprovince.ascx.vb" Inherits="SonyAlpha.uc_admin_editprovince" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a>
        <span class="heading">Trung tâm Sony > Danh sách Tỉnh thành > Cập nhật tỉnh thành :<a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption" >Tên tỉnh/ Thành phố :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtName" CssClass="textbox" required MaxLength="200" ></asp:TextBox></div>
            </li>           
            <li class="row clerafix">
                <div class="caption" >Thứ tự hiển thị :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtOrder" CssClass="textbox" MaxLength="5"></asp:TextBox></div>
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