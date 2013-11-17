<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_admin_editalbum.ascx.vb" Inherits="SonyAlpha.uc_admin_editalbum" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Albums : </span>
    </div>
</div>
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption" >Album's name :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtName" CssClass="textbox" required maxlength="500"></asp:TextBox><a href="?tpl=addphotos&aid=<%=Request.QueryString("id") %>" class="floatright button action"><span class="icon icon68"></span></a></div>
            </li>
            <li>
                <asp:GridView EmptyDataText="Không có photo nào" ID="grvPhotos" runat="server" AllowPaging="True" AllowSorting="True" SkinID="Defaultgridview" AutoGenerateColumns="False" CssClass="datatable" GridLines="None">
                    <HeaderStyle CssClass="girdheader"/>
                    <Columns>
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title"/>
                        <asp:BoundField DataField="FileName" HeaderText="FileName" SortExpression="FileName" />
                        <asp:BoundField DataField="RedirectUrl" HeaderText="RedirectUrl" SortExpression="RedirectUrl" />
                        <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    </Columns>
                    <FooterStyle Font-Bold="True" ForeColor="White" />
                    <PagerStyle CssClass="pagepad" HorizontalAlign="Right" />
                </asp:GridView>            
            </li>
            <li class="row clerafix">
                <div class="item textright" >
                    <button class="action btnOk" runat="server" ID="btnSave" disabled="disabled" ><span class="label">Lưu</span></button>
                    <a href="javascript:void(0);" class="button action" id="btnCancel"><span class="label">Hủy</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>