﻿<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_banneradd.ascx.vb" Inherits="SonyAlpha.uc_banneradd" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Banner : <a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption" >Banner :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtName" CssClass="textbox" required maxlength="300"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Type :</div>
                <div class="item">
                    <label class="selectfake">
                        <asp:DropDownList runat="server" ID="ddlBannerType">
                            <asp:ListItem Value="0">Full width</asp:ListItem>
                            <asp:ListItem Value="1">Trái</asp:ListItem>
                            <asp:ListItem Value="2">Phải</asp:ListItem>
                        </asp:DropDownList>
                    </label>
                </div>
            </li>
            <li class="row clerafix">
                <div class="item textright" >
                    <asp:Button runat="server" CssClass="button action btnOk" ID="btnSave" Text="Lưu" Enabled="false" />
                    <a href="javascript:void(0);" class="button action" id="btnCancel"><span class="label">Hủy</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>