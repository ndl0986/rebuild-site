﻿<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_admin_photocomments.ascx.vb" Inherits="SonyAlpha.uc_admin_photocomments" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hình ảnh > Danh sách comment : <a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
<div class="content">
    <div class="section">
        <asp:Label runat="server" ID="lblMessage"></asp:Label>
        <h4 class="heading">Danh sách Comments <asp:DropDownList runat="server" ID="ddlAlbums" AutoPostBack="True"></asp:DropDownList><a href="?tpl=addadmincomment" class="floatright button action"><span class="icon icon68"></span></a></h4>
        <asp:GridView EmptyDataText="Không có bình luận nào" ID="grvAlbumComments" runat="server" 
            AllowPaging="True" AllowSorting="True" DataSourceID="objAlbumComments"
            SkinID="Defaultgridview" AutoGenerateColumns="False" CssClass="datatable" 
            GridLines="None">
            <HeaderStyle CssClass="girdheader"/>
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="true"/>
                <asp:BoundField DataField="UserName" HeaderText="User" />
                <asp:BoundField DataField="AlbumId" HeaderText="Album" ><HeaderStyle CssClass="hiddencol" /><ItemStyle CssClass="hiddencol" /></asp:BoundField>
                <asp:BoundField DataField="PhotoId" HeaderText="Photo"><HeaderStyle CssClass="hiddencol" /><ItemStyle CssClass="hiddencol" /></asp:BoundField>
                <asp:TemplateField ItemStyle-CssClass="img_preview">
                    <ItemTemplate>
                        <asp:Image runat="server" ID="photoImage" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Comment" HeaderText="Nội dung" />
                <asp:TemplateField HeaderText="Commands" ShowHeader="False" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <%--<asp:LinkButton ID="lEdit" runat="server" CausesValidation="False" CommandName="Select" Text="Edit" CssClass="button"><span class="icon icon46"></span></asp:LinkButton>--%>
                        <asp:LinkButton ID="lDelete" runat="server" CausesValidation="False" CommandArgument='<%#Eval("Id") %>' CommandName="DeleteRow" Text="Delete" CssClass="actDel button" messdelete="Delete this comment ?"><span class="icon icon186"></span></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle Font-Bold="True" ForeColor="White" />
            <PagerStyle CssClass="pagepad" HorizontalAlign="Right" />
        </asp:GridView>
        <div class="pagesize">Hiển thị <asp:DropDownList runat="server" ID="ddlPageSize" AutoPostBack="True"><asp:ListItem Selected="True" Value="10">10</asp:ListItem><asp:ListItem Value="20">20</asp:ListItem><asp:ListItem Value="50">50</asp:ListItem></asp:DropDownList></div>
    </div>
</div>
<asp:ObjectDataSource ID="objAlbumComments" runat="server" DeleteMethod="removeById" SelectMethod="getListAll" TypeName="SonyAlphaLibs.AlbumComment">
    <SelectParameters>
        <asp:Parameter Name="connString" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>