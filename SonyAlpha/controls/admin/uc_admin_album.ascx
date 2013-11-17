<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_admin_album.ascx.vb" Inherits="SonyAlpha.uc_admin_album" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Quản lý trang : <a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
<div class="content">
    <div class="section">
        <asp:Label runat="server" ID="lblMessage"></asp:Label>
        <h4 class="heading">Danh sách albums photo<a href="?tpl=addalbum" class="floatright button action"><span class="icon icon68"></span></a></h4>
        <asp:GridView EmptyDataText="Không có albums nào" ID="grvAlbums" runat="server" 
            AllowPaging="True" AllowSorting="True" DataSourceID="objAlbums"
            SkinID="Defaultgridview" AutoGenerateColumns="False" CssClass="datatable" 
            GridLines="None">
            <HeaderStyle CssClass="girdheader"/>
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="true"/>
                <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                <asp:BoundField DataField="AlbumCreator" HeaderText="AlbumCreator" SortExpression="AlbumCreator" />
                <asp:BoundField DataField="ViewCount" HeaderText="ViewCount" SortExpression="ViewCount" />
                <asp:BoundField DataField="Created" HeaderText="Created" SortExpression="Created" dataformatstring="{0:dd/MM/yyyy}" htmlencode="false"/>
                <asp:BoundField DataField="Updated" HeaderText="Updated" SortExpression="Updated" dataformatstring="{0:dd/MM/yyyy}" htmlencode="false"/>
                <asp:TemplateField HeaderText="Commands" ShowHeader="False" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:LinkButton ID="lEdit" runat="server" CausesValidation="False" CommandName="Select" Text="Edit" CssClass="button"><span class="icon icon46"></span></asp:LinkButton>
                        <asp:LinkButton ID="lDelete" runat="server" CausesValidation="False" CommandArgument='<%#Eval("Id") %>' CommandName="DeleteRow" Text="Delete" CssClass="actDel button" messdelete="Delete this album ?"><span class="icon icon186"></span></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle Font-Bold="True" ForeColor="White" />
            <PagerStyle CssClass="pagepad" HorizontalAlign="Right" />
        </asp:GridView>
    </div>
</div>
<asp:ObjectDataSource ID="objAlbums" runat="server" SelectMethod="getListAll" TypeName="SonyAlphaLibs.Album">
    <SelectParameters>
        <asp:Parameter Name="connString" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>