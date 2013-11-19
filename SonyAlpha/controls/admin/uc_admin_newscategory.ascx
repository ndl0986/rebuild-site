<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_admin_newscategory.ascx.vb" Inherits="SonyAlpha.uc_admin_newscategory" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Nhóm tin tức : <a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
<div class="content">
    <div class="section clearfix">
        <asp:Label runat="server" ID="lblMessage"></asp:Label>
        <h4 class="heading">Danh sách nhóm tin tức<a href="?tpl=addnewscategory" class="floatright button action"><span class="icon icon68"></span></a></h4>
        <asp:GridView EmptyDataText="Không có trang nào" ID="grvNewsCategory" 
            runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="objNewsCategory"  
            SkinID="Defaultgridview" AutoGenerateColumns="False" CssClass="datatable" 
            GridLines="None">
            <HeaderStyle CssClass="girdheader"/>
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Tên nhóm" SortExpression="Name" />
                <asp:BoundField DataField="ParentId" HeaderText="Nhóm Chủ" SortExpression="Id" />
                <asp:BoundField DataField="SeoUrl" HeaderText="Link URL" SortExpression="SeoUrl" />
                <asp:ImageField DataImageUrlField="imageUrl" HeaderText="Image" ItemStyle-CssClass="img_preview" />
                <asp:BoundField DataField="ImageUrl" HeaderText="ImageUrl" SortExpression="ImageUrl"><HeaderStyle CssClass="hiddencol" /><ItemStyle CssClass="hiddencol" /></asp:BoundField>
                <asp:BoundField DataField="Created" HeaderText="Created" SortExpression="Created" dataformatstring="{0:dd/MM/yyyy}" htmlencode="false" />
                <asp:BoundField DataField="Updated" HeaderText="Updated" SortExpression="Updated" dataformatstring="{0:dd/MM/yyyy}" htmlencode="false" />
                <asp:TemplateField HeaderText="Commands" ShowHeader="False" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign=Center>
                    <ItemTemplate>
                        <asp:LinkButton ID="lEdit" runat="server" CausesValidation="False" CommandName="Select" Text="Edit" CssClass="button"><span class="icon icon46"></span></asp:LinkButton>
                        <asp:LinkButton ID="lDelete" runat="server" CausesValidation="False" CommandName="DeleteRow" CommandArgument='<%#Eval("Id") %>'  Text="Delete" CssClass="actDel button" messdelete="Delete this news category ?"><span class="icon icon186"></span></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle Font-Bold="True" ForeColor="White" />
            <PagerStyle CssClass="pagepad" HorizontalAlign="Right" />
        </asp:GridView>
    </div>
</div>
<asp:ObjectDataSource ID="objNewsCategory" runat="server" SelectMethod="getListAll" TypeName="SonyAlphaLibs.NewsCategory">
    <SelectParameters>
        <asp:Parameter Name="connString" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>