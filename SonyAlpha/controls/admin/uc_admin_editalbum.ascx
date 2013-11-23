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
                <div class="item"  style="margin-left:0px;">
                    <div class="item"><label class="selectfake">
                    <asp:DropDownList runat="server" ID="ddlAlbumType">
                        <asp:ListItem Value="0">Thường</asp:ListItem>
                        <asp:ListItem Value="1">Dành cho Trung tâm Sony</asp:ListItem>
                        <asp:ListItem Value="2">Dành cho Nhóm sản phẩm</asp:ListItem>
                    </asp:DropDownList></label>
                </div>
                </div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Ảnh cover :</div>
                <div id="lstPhotos" class="item">                    
                    <div class="banner_photo clearfix">
                        <div class="floatleft">
                            <input id="txtPhotoURL" runat="server" clientidmode="Static" type="text" class="textbox" placeholder="URL photo ..." />
                        </div>
                        <a href="javascript:void(0);" class="browser btn button"><span class="label">...</span></a>
                    </div>
                    <asp:HiddenField runat="server" ID="hdfPhotos" clientidmode="Static"/>
                </div>
            </li>
            <li>
                <asp:GridView EmptyDataText="Không có photo nào" ID="grvPhotos" runat="server" AllowPaging="True" AllowSorting="True" SkinID="Defaultgridview" AutoGenerateColumns="False" CssClass="datatable" GridLines="None">
                    <HeaderStyle CssClass="girdheader"/>
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="true"/>
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title"/>
                        <asp:ImageField DataImageUrlField="FileName" HeaderText="Image" ItemStyle-CssClass="img_preview" />
                        <asp:BoundField DataField="FileName" HeaderText="FileName" SortExpression="FileName"><HeaderStyle CssClass="hiddencol" /><ItemStyle CssClass="hiddencol" /></asp:BoundField>
                        <asp:TemplateField HeaderText="Commands" ShowHeader="False" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
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
        var urlPhoto = $('#txtPhotoURL'), listPhotos = $('#ulPhotos'), txtLink = $('#txtLinkTo'), hdf = $('#hdfPhotos');
        listItems = [];
        objItem = "";

        if (hdf.val() != "") {
            listItems = hdf.val().split('|');
            for (var i = 0; i < listItems.length; i++) {
                var arr = listItems[i].split('*');
                var li = $('<li></li>');
                var a = $('<a class="thumb"></a>').attr('href', arr[1]);
                var btn = $('<a class="button red del" href="javascript:void(0);">-</a>')
                var img = $('<img alt="" src=' + arr[2] + '/>');
                var txt = $('<input type="nummber" class="textbox small" value="' + arr[0] + '" />')
                btn.attr('value', listItems[i]);
                btn.click(function () {
                    removeItem($(this).parent(), $(this).attr('value'));
                });
                li.append(a.append(img)).append(txt).append(btn);
                listPhotos.append(li);
            }
        }

        $('.browser').click(function () {
            window.open('FileManager.aspx?bannerphoto', 'File Management', 'width=800,height=600');
        });

        function updateValue() {
            hdf.val(listItems.join('|'));
            if (!$('.btnOk').hasClass('blue')) {
                $('.btnOk').removeAttr('disabled').addClass('blue');
            }
        }
    });
</script>