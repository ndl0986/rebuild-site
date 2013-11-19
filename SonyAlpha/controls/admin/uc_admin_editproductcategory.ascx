﻿<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_admin_editproductcategory.ascx.vb" Inherits="SonyAlpha.uc_admin_editproductcategory" %>
<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a>
        <span class="heading">Hệ thống > Nhóm Sản phẩm > Chi Tiết Nhóm sản phẩm :<a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption" >Tên nhóm :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtName" CssClass="textbox" required MaxLength="300" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Album hình :</div>
                <div class="item"><label class="selectfake">
                    <asp:DropDownList runat="server" ID="ddlAlbums">
                    </asp:DropDownList></label></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Nhóm Cha :</div>
                <div class="item"><label class="selectfake">
                    <asp:DropDownList runat="server" ID="ddlParentCategory">
                    </asp:DropDownList></label></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Mô tả :</div>
                <div class="item">
                    <FCKeditorV2:FCKeditor ID="txtDescription" runat="server" Height="500px"></FCKeditorV2:FCKeditor>
                </div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Url :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtSeoUrl" CssClass="textbox" ReadOnly=true ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Ngày tạo :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtCreated" CssClass="textbox" ReadOnly=true ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Ngày cập nhật :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtUpdated" CssClass="textbox" ReadOnly=true ></asp:TextBox></div>
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
<script type = "text/javascript">
    $(document).ready(function () {
        $('.btnOk').removeAttr('disabled').addClass('blue');
    });
</script>