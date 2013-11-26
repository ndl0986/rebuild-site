<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_userpage.ascx.vb" Inherits="SonyAlpha.uc_userpage" %>
<%@ Register src="uc_userprofile.ascx" tagname="uc_userprofile" tagprefix="uc1" %>
<%@ Register src="uc_userupload.ascx" tagname="uc_userupload" tagprefix="uc2" %>
<div class="user_page tab_wrapper">
    <div class="tab_title"><h2 class="uppercase">TÀI KHOẢN CÁ NHÂN</h2></div>
    <div class="tab_nav clearfix">
        <div class="tab_nav_item active"><a href="tab#profile" data-title="Tài khoản cá nhân" class="uppercase">/ Thông tin cá nhân</a></div>
        <div class="tab_nav_item"><a href="tab#photo" data-title="Album của <%=Session("accountname")%>" class="uppercase">/ Ảnh đã đăng</a></div>
    </div>
    <div class="tab_container">
        <div class="tab-content active" data-link="tab#profile">
            <uc1:uc_userprofile ID="uc_userprofile1" runat="server" />
        </div>
        <div class="tab-content" data-link="tab#photo">
            <uc2:uc_userupload ID="uc_userupload1" runat="server" />
        </div>
    </div>
</div>
<script>
    document.getElementById('breadcum').style.display = 'none';
</script>