<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_banners.ascx.vb" Inherits="SonyAlpha.uc_banners" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Banner : </span>
    </div>
</div>
<div class="content">
    <div class="section">
        <asp:Label runat="server" ID="lblMessage"></asp:Label>
        <h4 class="heading">Danh sách banners<a href="?tpl=addbanner" class="floatright button action"><span class="icon icon68"></span></a></h4>
        <asp:GridView EmptyDataText="Không có banner nào" ID="grvBanner" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="objBanner" DataKeyNames="Id" SkinID="Defaultgridview" AutoGenerateColumns="False" CssClass="datatable" GridLines="None">
            <HeaderStyle CssClass="girdheader"/>
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="true" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:CheckBoxField DataField="Visible" HeaderText="Visible" SortExpression="Visible" />
                <asp:BoundField DataField="BannerType" HeaderText="BannerType" SortExpression="BannerType" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden" />
                <asp:TemplateField HeaderText="Banner Type" ShowHeader="False">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblBannerType"></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <label class="selectfake">
                            <asp:DropDownList runat="server" ID="ddlStatus" AutoPostBack="true">
                                <asp:ListItem Value="0">Full width</asp:ListItem>
                                <asp:ListItem Value="1">Trái</asp:ListItem>
                                <asp:ListItem Value="1">Phải</asp:ListItem>
                            </asp:DropDownList>
                        </label>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Created" HeaderText="Created" SortExpression="Created" dataformatstring="{0:dd/MM/yyyy}" htmlencode="false" />
                <asp:BoundField DataField="Updated" HeaderText="Updated" SortExpression="Updated" dataformatstring="{0:dd/MM/yyyy}" htmlencode="false" />
                <asp:TemplateField HeaderText="Commands" ShowHeader="False" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
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
<asp:ObjectDataSource ID="objBanner" runat="server" DeleteMethod="removeById" 
SelectMethod="getListAll" TypeName="SonyAlphaLibs.Banner">
    <DeleteParameters>
        <asp:Parameter Name="connString" Type="String" />
    </DeleteParameters>
    <SelectParameters>
        <asp:Parameter Name="connString" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>