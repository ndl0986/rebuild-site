<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_products.ascx.vb" Inherits="SonyAlpha.uc_products" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Sản phẩm : <a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
<div class="content">
    <div class="section">
        <asp:Label runat="server" ID="lblMessage"></asp:Label>
        <h4 class="heading">Danh sách Sản phẩm<a href="?tpl=addproduct" class="floatright button action"><span class="icon icon68"></span></a></h4>
        <asp:GridView EmptyDataText="Không có sản phẩm nào" ID="grvProducts" runat="server" 
            AllowPaging="True" AllowSorting="True" DataSourceID="objProducts"
            SkinID="Defaultgridview" AutoGenerateColumns="False" CssClass="datatable" 
            GridLines="None">
            <HeaderStyle CssClass="girdheader"/>
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="true"/>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="ProductType" HeaderText="ProductType" SortExpression="ProductType" />
                <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" SortExpression="CategoryId" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:TemplateField HeaderText="Commands" ShowHeader="False" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:LinkButton ID="lEdit" runat="server" CausesValidation="False" CommandName="Select" Text="Edit" CssClass="button"><span class="icon icon46"></span></asp:LinkButton>
                        <asp:LinkButton ID="lDelete" runat="server" CausesValidation="False" CommandArgument='<%#Eval("Id") %>' CommandName="DeleteRow" Text="Delete" CssClass="actDel button" messdelete="Delete this product ?"><span class="icon icon186"></span></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle Font-Bold="True" ForeColor="White" />
            <PagerStyle CssClass="pagepad" HorizontalAlign="Right" />
        </asp:GridView>
    </div>
</div>
<asp:ObjectDataSource ID="objProducts" runat="server" DeleteMethod="removeById" SelectMethod="getListAll" TypeName="SonyAlphaLibs.Product">
    <SelectParameters>
        <asp:Parameter Name="connString" Type="String" />
    </SelectParameters>
    <DeleteParameters>
        <asp:Parameter Name="connString" Type="String" />
    </DeleteParameters>
</asp:ObjectDataSource>