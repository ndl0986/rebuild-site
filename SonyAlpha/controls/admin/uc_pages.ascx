<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_pages.ascx.vb" Inherits="SonyAlpha.uc_pages" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Quản lý trang : <a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
<div class="content">
    <div class="section">
        <asp:Label runat="server" ID="lblMessage"></asp:Label>
        <h4 class="heading">Danh sách trang nội dung<a href="?tpl=addpage" class="floatright button action"><span class="icon icon68"></span></a></h4>
        <asp:GridView EmptyDataText="Không có trang nào" ID="grvPages" 
            runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="objPage"  
            SkinID="Defaultgridview" AutoGenerateColumns="False" CssClass="datatable" 
            GridLines="None" DataKeyNames="Id">
            <HeaderStyle CssClass="girdheader"/>
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly=true />
                <asp:BoundField DataField="Title" HeaderText="Tên page" SortExpression="Title" />
                <asp:BoundField DataField="LongTitle" HeaderText="Tiêu đề trang" SortExpression="LongTitle" />
                <asp:BoundField DataField="SeoUrl" HeaderText="URL cho SEO" SortExpression="SeoUrl" />
                <asp:CheckBoxField DataField="Status" HeaderText="Trạng thái" SortExpression="Status" />
                <asp:BoundField DataField="Creator" HeaderText="Người tạo" SortExpression="Creator" />
                <asp:BoundField DataField="Updator" HeaderText="Người cập nhật" SortExpression="Updator" />
                <asp:BoundField DataField="Created" HeaderText="Created at" SortExpression="Created" dataformatstring="{0:dd/MM/yyyy}" htmlencode="false" />
                <asp:BoundField DataField="Updated" HeaderText="Last modified" SortExpression="Updated" dataformatstring="{0:dd/MM/yyyy}" htmlencode="false"/>
                <asp:TemplateField HeaderText="Commands" ShowHeader="False" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign=Center>
                    <ItemTemplate>
                        <asp:LinkButton ID="lEdit" runat="server" CausesValidation="False" CommandName="Select" Text="Edit" CssClass="button"><span class="icon icon46"></span></asp:LinkButton>
                        <asp:LinkButton ID="lDelete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="actDel button" messdelete="Delete this post ?"><span class="icon icon186"></span></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle Font-Bold="True" ForeColor="White" />
            <PagerStyle CssClass="pagepad" HorizontalAlign="Right" />
        </asp:GridView>
    </div>
</div>
<asp:ObjectDataSource ID="objPage" runat="server" DeleteMethod="removeById" 
SelectMethod="getListAll" TypeName="SonyAlphaLibs.Page" 
UpdateMethod="update">
    <DeleteParameters>
        <asp:Parameter Name="connString" Type="String" />
    </DeleteParameters>
    <SelectParameters>
        <asp:Parameter Name="connString" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="connString" Type="String" />
    </UpdateParameters>
</asp:ObjectDataSource>