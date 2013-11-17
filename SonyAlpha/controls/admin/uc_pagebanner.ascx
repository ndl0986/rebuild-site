<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_pagebanner.ascx.vb" Inherits="SonyAlpha.uc_pagebanner" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Trang nội dung : </span>
    </div>
</div>
<div class="content">
    <div class="section">
        <asp:Label runat="server" ID="lblMessage"></asp:Label>
        <h4 class="heading">1. Danh sách page - banners</h4>
        <asp:GridView EmptyDataText="Không có liên kết giữa page và banner" ID="grvPageBanner" runat="server" AllowPaging="True" AllowSorting="True" SkinID="Defaultgridview" AutoGenerateColumns="True" CssClass="datatable" GridLines="None">
            <HeaderStyle CssClass="girdheader"/>
            <Columns></Columns>
            <FooterStyle Font-Bold="True" ForeColor="White" />
            <PagerStyle CssClass="pagepad" HorizontalAlign="Right" />
        </asp:GridView>
    </div>
    <div class="section">
        <h4 class="heading">2. Tạo nhóm liên kết Page - Banner</h4>
        <div class="clearfix"></div>
        <ul class="form">
            <li class="row clerafix">
                <div class="caption">Page :</div>
                <div class="item"><label class="selectfake"><asp:DropDownList runat="server" ID="ddlPage" DataTextField="Title" DataValueField="Id"></asp:DropDownList></label></div>
            </li>
            <li class="row clerafix">
                <div class="caption">Banner :</div>
                <div class="item"><label class="selectfake"><asp:DropDownList runat="server" ID="ddlBanner" DataTextField="Name" DataValueField="Id"></asp:DropDownList></label></div>
            </li>
            <li class="row clerafix">
                <div class="caption" ></div>
                <div class="item textright" >
                    <button class="action btnOk" runat="server" ID="btnSave" disabled="disabled" ><span class="label">Lưu</span></button>
                    <a class="button action" id="btnCancel"><span class="label">Hủy</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $('.btnOk').removeAttr('disabled').addClass('blue');
    });
</script>