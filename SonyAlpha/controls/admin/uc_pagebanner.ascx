<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_pagebanner.ascx.vb" Inherits="SonyAlpha.uc_pagebanner" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Trang nội dung : <a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
<div class="content">
    <div class="section">
        <asp:Label runat="server" ID="lblMessage"></asp:Label>
        <h4 class="heading">1. Danh sách page - banners</h4>
        <asp:GridView EmptyDataText="Không có liên kết giữa page và banner" 
            ID="grvPageBanner" runat="server" AllowPaging="True" AllowSorting="True" 
            SkinID="Defaultgridview" AutoGenerateColumns="False" CssClass="datatable" 
            GridLines="None" DataSourceID="objPageBanner">
            <HeaderStyle CssClass="girdheader"/>
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="PageId" HeaderText="PageId" SortExpression="PageId" ><HeaderStyle CssClass="hiddencol" /><ItemStyle CssClass="hiddencol" /></asp:BoundField>
                <asp:BoundField DataField="BannerId" HeaderText="BannerId" SortExpression="BannerId" ><HeaderStyle CssClass="hiddencol" /><ItemStyle CssClass="hiddencol" /></asp:BoundField>
                <asp:TemplateField HeaderText="Tab Menu">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblPage"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Banner">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblBanner"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Created" HeaderText="Created" SortExpression="Created" dataformatstring="{0:dd/MM/yyyy}" htmlencode="false"/>
                <asp:BoundField DataField="Updated" HeaderText="Updated" SortExpression="Updated" dataformatstring="{0:dd/MM/yyyy}" htmlencode="false"/>
                <asp:TemplateField HeaderText="Commands" ShowHeader="False" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:LinkButton ID="lDelete" runat="server" CausesValidation="False" CommandArgument='<%#Eval("Id") %>' CommandName="DeleteRow" Text="Delete" CssClass="actDel button" messdelete="Delete this album ?"><span class="icon icon186"></span></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle Font-Bold="True" ForeColor="White" />
            <PagerStyle CssClass="pagepad" HorizontalAlign="Right" />
        </asp:GridView>
    </div>
    <div class="section">
        <h4 class="heading">2. Tạo nhóm liên kết Page - Banner</h4>
        <div class="clearfix"></div>
        <ul class="form">
            <li class="row clerafix">
                <div class="caption">Tab Menu :</div>
                <div class="item"><label class="selectfake"><asp:DropDownList runat="server" ID="ddlPage" DataTextField="Name" DataValueField="Id"></asp:DropDownList></label></div>
            </li>
            <li class="row clerafix">
                <div class="caption">Banner :</div>
                <div class="item"><label class="selectfake"><asp:DropDownList runat="server" ID="ddlBanner" DataTextField="Name" DataValueField="Id"></asp:DropDownList></label></div>
            </li>
            <li class="row clerafix">
                <div class="caption" ></div>
                <div class="item textright" >
                    <button class="action btnOk" runat="server" ID="btnSave" disabled="disabled" ><span class="label">Lưu</span></button>
                    <a class="button action" id="btnCancel"><span class="label">Hủy</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>
<asp:ObjectDataSource ID="objPageBanner" runat="server" SelectMethod="getAllMenuBanner" TypeName="SonyAlphaLibs.PageBanner">
    <SelectParameters>
        <asp:Parameter Name="connString" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>
<script type="text/javascript">
    $(document).ready(function () {
        $('.btnOk').removeAttr('disabled').addClass('blue');
    });
</script>