<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_pages.ascx.vb" Inherits="SonyAlpha.uc_pages" %>
<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Quản lý trang : </span>
    </div>
</div>
<div class="content">
    <div class="section">
            <asp:Label runat="server" ID="lblMessage"></asp:Label>
            <h4 class="heading">Danh sách trang nội dung</h4>
            <asp:GridView EmptyDataText="Không có trang nào" ID="grvPages" 
                runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="objPage"  
                SkinID="Defaultgridview" AutoGenerateColumns="False" CssClass="datatable" 
                GridLines="None">
                <HeaderStyle CssClass="girdheader"/>
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly=true />
                    <asp:BoundField DataField="Title" HeaderText="Tên page" SortExpression="Title" />
                    <asp:BoundField DataField="LongTitle" HeaderText="Tiêu đề trang" 
                        SortExpression="LongTitle" />
                    <asp:BoundField DataField="SeoUrl" HeaderText="URL cho SEO" 
                        SortExpression="SeoUrl" />
                    <asp:CheckBoxField DataField="Status" HeaderText="Trạng thái" 
                        SortExpression="Status" />
                    <asp:BoundField DataField="Creator" HeaderText="Người tạo" 
                        SortExpression="Creator" />
                    <asp:BoundField DataField="Updator" HeaderText="Người cập nhật" 
                        SortExpression="Updator" />
                    <asp:BoundField DataField="Created" HeaderText="Created at" 
                        SortExpression="Created" />
                    <asp:BoundField DataField="Updated" HeaderText="Last modified" 
                        SortExpression="Updated" />
                </Columns>
                <FooterStyle Font-Bold="True" ForeColor="White" />
                <PagerStyle CssClass="pagepad" HorizontalAlign="Right" />
            </asp:GridView>
        </div>
    </div>
    <asp:ObjectDataSource ID="objPage" runat="server" DeleteMethod="removeById" 
    SelectMethod="getListAll" TypeName="SonyAlphaLibs.Page" 
    UpdateMethod="update" OldValuesParameterFormatString="AccountId">
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