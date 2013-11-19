<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_admin_menulist.ascx.vb" Inherits="SonyAlpha.uc_admin_menulist" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Quản lý trang : <a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
<div class="content">
    <div class="section">
        <asp:Label runat="server" ID="lblMessage"></asp:Label>
        <h4 class="heading">Danh sách các tab menu<a href="?tpl=addmenu" class="floatright button action"><span class="icon icon68"></span></a></h4>
        <asp:GridView EmptyDataText="Không có tab menu nào" ID="grvMenus" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="objMenu"  SkinID="Defaultgridview" AutoGenerateColumns="False" CssClass="datatable" GridLines="None">
            <HeaderStyle CssClass="girdheader"/>
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:CheckBoxField DataField="IsParent" HeaderText="IsParent" SortExpression="IsParent" />
                <asp:BoundField DataField="SeoUrl" HeaderText="SeoUrl" SortExpression="SeoUrl" />
                <asp:BoundField DataField="Order" HeaderText="Order" SortExpression="Order" />
                <asp:BoundField DataField="ParentId" HeaderText="ParentId" SortExpression="ParentId" />
                <asp:BoundField DataField="Created" HeaderText="Created at" SortExpression="Created" dataformatstring="{0:dd/MM/yyyy}" htmlencode="false" />
                <asp:BoundField DataField="Updated" HeaderText="Last modified" SortExpression="Updated" dataformatstring="{0:dd/MM/yyyy}" htmlencode="false"/>
                <asp:TemplateField HeaderText="Commands" ShowHeader="False" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign=Center>
                    <ItemTemplate>
                        <asp:LinkButton ID="lEdit" runat="server" CausesValidation="False" CommandName="Select" Text="Edit" CssClass="button"><span class="icon icon46"></span></asp:LinkButton>
                        <asp:LinkButton ID="lDelete" runat="server" CausesValidation="False" CommandName="DeleteRow" CommandArgument='<%#Eval("Id") %>' Text="Delete" CssClass="actDel button" messdelete="Delete this menu ?"><span class="icon icon186"></span></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle Font-Bold="True" ForeColor="White" />
            <PagerStyle CssClass="pagepad" HorizontalAlign="Right" />
        </asp:GridView>
    </div>
</div>
<asp:ObjectDataSource ID="objMenu" runat="server" 
SelectMethod="getListAll" TypeName="SonyAlphaLibs.Menu">
    <SelectParameters>
        <asp:Parameter Name="connString" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>