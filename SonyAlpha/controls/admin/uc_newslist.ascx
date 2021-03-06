﻿<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_newslist.ascx.vb" Inherits="SonyAlpha.uc_newslist" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Tin tức : <a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
<div class="content">
    <div class="section clearfix">
        <asp:Label runat="server" ID="lblMessage"></asp:Label>
        <h4 class="heading">Danh sách tin tức <asp:DropDownList runat="server" ID="ddlNewsCategory" AutoPostBack="True"></asp:DropDownList><a href="?tpl=addnews" class="floatright button action"><span class="icon icon68"></span></a></h4>
        <asp:GridView EmptyDataText="Không có tin tức nào" ID="grvNews" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="objNews" SkinID="Defaultgridview" AutoGenerateColumns="False" CssClass="datatable" GridLines="None">
            <HeaderStyle CssClass="girdheader"/>
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="true" />
                <asp:BoundField DataField="Title" HeaderText="Tiêu đề" SortExpression="Title" />
                <asp:BoundField DataField="Created" HeaderText="Created at" SortExpression="Created" dataformatstring="{0:dd/MM/yyyy}" htmlencode="false" />
                <asp:BoundField DataField="Updated" HeaderText="Last modified" SortExpression="Updated" dataformatstring="{0:dd/MM/yyyy}" htmlencode="false"/>
                <asp:TemplateField HeaderText="Commands" ShowHeader="False" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign=Center>
                    <ItemTemplate>
                        <asp:LinkButton ID="lEdit" runat="server" CausesValidation="False" CommandName="Select" Text="Edit" CssClass="button"><span class="icon icon46"></span></asp:LinkButton>
                        <asp:LinkButton ID="lDelete" runat="server" CausesValidation="False" CommandName="DeleteRow" CommandArgument='<%#Eval("Id") %>'  Text="Delete" CssClass="actDel button" messdelete="Delete this news ?"><span class="icon icon186"></span></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle Font-Bold="True" ForeColor="White" />
            <PagerStyle CssClass="pagepad" HorizontalAlign="Right" />
        </asp:GridView>
        <div class="pagesize">Hiển thị <asp:DropDownList runat="server" ID="ddlPageSize" AutoPostBack="True"><asp:ListItem Selected="True" Value="10">10</asp:ListItem><asp:ListItem Value="20">20</asp:ListItem><asp:ListItem Value="50">50</asp:ListItem></asp:DropDownList></div>
    </div>
</div>
<asp:ObjectDataSource ID="objNews" runat="server" 
SelectMethod="getListAll" TypeName="SonyAlphaLibs.News">
    <SelectParameters>
        <asp:Parameter Name="connString" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>