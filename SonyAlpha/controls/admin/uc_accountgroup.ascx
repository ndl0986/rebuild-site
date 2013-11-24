<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_accountgroup.ascx.vb" Inherits="SonyAlpha.uc_accountgroup" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Nhóm tài khoản :<a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
<div class="content">
    <div class="section">
        <asp:Label runat="server" ID="lblMessage"></asp:Label>
        <h4 class="heading">1. Danh sách nhóm tài khoản</h4>
        <asp:GridView EmptyDataText="Không có nhóm tài khoản nào" ID="grvGroupAccount" 
            runat="server" AllowPaging="True" AllowSorting="True" 
            DataSourceID="objGroupAccount"  SkinID="Defaultgridview" 
            AutoGenerateColumns="False" CssClass="datatable" GridLines="None">
            <HeaderStyle CssClass="girdheader"/>
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="true"/>
                <asp:BoundField DataField="GroupName" HeaderText="Nhóm" 
                    SortExpression="GroupName" />
                <asp:CheckBoxField DataField="IsSuper" HeaderText="Nhóm quản trị" 
                    SortExpression="IsSuper" />
                <asp:BoundField DataField="Created" HeaderText="Created" 
                    SortExpression="Created" />
                <asp:BoundField DataField="Updated" HeaderText="Updated" 
                    SortExpression="Updated" />
                <asp:TemplateField HeaderText="Commands" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="lEdit" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="button"><span class="icon icon46"></span></asp:LinkButton>
                        <asp:LinkButton ID="lDelete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="actDel button" messdelete="Delete this group ?"><span class="icon icon186"></span></asp:LinkButton>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:LinkButton ID="lUpdate" runat="server" CausesValidation="False" CommandName="Update" Text="Ok" CssClass="button"><span class="icon icon44"></span></asp:LinkButton>
                        <asp:LinkButton ID="lCancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="button"><span class="icon icon56"></span></asp:LinkButton>
                    </EditItemTemplate>                        
                </asp:TemplateField>
            </Columns>
            <FooterStyle Font-Bold="True" ForeColor="White" />
            <PagerStyle CssClass="pagepad" HorizontalAlign="Right" />
        </asp:GridView>
    </div>
    <div class="section">
        <h4 class="heading">2. Tạo nhóm tài khoản</h4>
        <div class="clearfix"></div>
        <ul class="form">
            <%--<li class="row clearfix">
                <div class="caption" >Nhóm Tài khoản :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtGroupId" CssClass="textbox" ReadOnly="true" minlength="4" maxlength="10"></asp:TextBox></div>
            </li>--%>
            <li class="row clearfix">
                <div class="caption" >Tên Nhóm:</div>
                <div class="item"><asp:TextBox runat="server" ID="txtGroupName" CssClass="textbox" required maxlength="50"></asp:TextBox></div>
            </li>
            <li class="row clearfix">
                <div class="caption" >Nhóm quản trị :</div>
                <div class="item"><asp:CheckBox ID="chkIsSupper" runat="server" required /></div>
            </li>
            <li class="row clearfix">
                <div class="caption" ></div>
                <div class="item textright" >
                    <button class="action btnOk" runat="server" ID="btnSave" disabled="disabled" ><span class="label">Lưu</span></button>
                    <a class="button action" id="btnCancel"><span class="label">Hủy</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>
<asp:ObjectDataSource ID="objGroupAccount" runat="server" 
    DeleteMethod="removeById" InsertMethod="add" SelectMethod="getListAll" 
    TypeName="SonyAlphaLibs.UserGroup" UpdateMethod="update">
    <DeleteParameters>
        <asp:Parameter Name="connString" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="connString" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:Parameter Name="connString" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="connString" Type="String" />
    </UpdateParameters>
</asp:ObjectDataSource>
