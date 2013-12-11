<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_admin_editalbum.ascx.vb" Inherits="SonyAlpha.uc_admin_editalbum" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Albums : <a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption" >Album's name :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtName" CssClass="textbox" required maxlength="500"></asp:TextBox><a href="?tpl=addphotos&aid=<%=Request.QueryString("id") %>" class="floatright button action"><span class="icon icon68"></span></a></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Loại Album :</div>
                <div class="item"><label class="selectfake">
                    <asp:DropDownList runat="server" ID="ddlAlbumType"><asp:ListItem Value="0">Thường</asp:ListItem><asp:ListItem Value="1">Dành cho Trung tâm Sony</asp:ListItem><asp:ListItem Value="2">Dành cho Nhóm sản phẩm</asp:ListItem></asp:DropDownList></label>
                </div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Ảnh cover :</div>
                <div class="item">
                    <input id="txtPhotoURL" style="width:100%;" runat="server" clientidmode="Static" type="text" class="textbox" placeholder="URL photo ..." />
                    <asp:HiddenField runat="server" ID="hdfPhotos" clientidmode="Static"/>
                </div>
            </li>
            <li>
                <asp:GridView EmptyDataText="Không có photo nào" ID="grvPhotos" runat="server" AllowPaging="True" AllowSorting="True" SkinID="Defaultgridview" AutoGenerateColumns="False" CssClass="datatable" GridLines="None" PageSize=20>
                    <HeaderStyle CssClass="girdheader"/>
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="true"/>
                        <asp:BoundField DataField="Title" HeaderText="Title"/>
                        <asp:ImageField DataImageUrlField="FileName" HeaderText="Image" ItemStyle-CssClass="img_preview" />
                        <asp:BoundField DataField="FileName" HeaderText="FileName"><HeaderStyle CssClass="hiddencol" /><ItemStyle CssClass="hiddencol" /></asp:BoundField>
                        <asp:TemplateField HeaderText="Cover" >
                            <ItemTemplate><input type="checkbox" data-filename="<%#Eval("FileName") %>" /></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Commands" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton ID="lEdit" runat="server" CausesValidation="False" CommandName="Select" Text="Edit" CssClass="button"><span class="icon icon46"></span></asp:LinkButton>
                                <asp:LinkButton ID="lDelete" runat="server" CausesValidation="False" CommandArgument='<%#Eval("Id") %>' CommandName="DeleteRow" Text="Delete" CssClass="actDel button" messdelete="Remove this photo ?"><span class="icon icon186"></span></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle Font-Bold="True" ForeColor="White" />
                    <PagerStyle CssClass="pagepad" HorizontalAlign="Right" />
                </asp:GridView>            
            </li>
            <li class="row clerafix">
                <div class="item textright" >
                    <button class="action btnOk blue" runat="server" ID="btnSave"><span class="label">Lưu</span></button>
                    <a href="javascript:void(0);" class="button action" id="btnCancel"><span class="label">Hủy</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        var setCovers = $('.datatable input[type=checkbox]');
        setCovers.each(function (index) {
            if ($('#txtPhotoURL').val() == $(this).attr('data-filename')) $(this).prop('checked', true);
            $(this).click(function (e) {
                setCovers.not($(this)[0]).prop('checked', false);
                var img = $(this).parent().prev().text();
                $('#txtPhotoURL').val(img);
            });
        });


    });
</script>