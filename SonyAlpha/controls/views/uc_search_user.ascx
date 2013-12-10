<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_search_user.ascx.vb" Inherits="SonyAlpha.uc_search_user" %>
<div class="user_search_page">
    <div class="form_command clearfix">
        <input class="textbox noshadow" type="text" id="txtKeywords" placeholder="Tìm kiếm thành viên" /><a id="uc_album_btnSeach" class="btn orange uppercase" href="javascript:void(0);">Tìm kiếm</a>
    </div>
    <div class="title"><span class="orange">Kết quả tìm kiếm của từ khóa:</span>&nbsp;<span><%=keywords%></span></div>
    <asp:GridView EmptyDataText="Không có kết quả tìm kiếm cho từ khóa này" ID="grvUsers" runat="server" AllowPaging="True" SkinID="Defaultgridview" AutoGenerateColumns="False" CssClass="datatable" GridLines="None" ShowHeader="false">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="UserName" DataTextField="UserName" DataNavigateUrlFormatString="/user.aspx?id={0}"/>
            <asp:BoundField DataField="FullName"/>
        </Columns>
        <FooterStyle Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="pagepad" HorizontalAlign="Right" />
    </asp:GridView>
</div>
<script type="text/javascript">
    document.getElementById('breadcum').style.display = 'none';
</script>