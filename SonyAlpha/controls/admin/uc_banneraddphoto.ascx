<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_banneraddphoto.ascx.vb" Inherits="SonyAlpha.uc_banneraddphoto" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a><span class="heading">Hệ thống > Banner > Photo: </span>
    </div>
</div>
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption" >Banner :</div>
                <div class="item">
                    <asp:TextBox runat="server" ID="txtName" CssClass="textbox"></asp:TextBox>
                    <label class="selectfake">
                        <asp:DropDownList runat="server" ID="ddlBannerType">
                            <asp:ListItem Value="0">Full width</asp:ListItem>
                            <asp:ListItem Value="1">Trái</asp:ListItem>
                            <asp:ListItem Value="2">Phải</asp:ListItem>
                        </asp:DropDownList>
                    </label>
                </div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Photo :</div>
                <div id="lstPhotos" class="item">
                    <ul id="ulPhotos" class="clearfix"></ul>
                    <div class="banner_photo clearfix">
                        <div class="floatleft"><input id="txtPhotoURL" type="text" class="textbox" placeholder="URL photo ..." /><input id="txtLinkTo" type="text" class="textbox" placeholder="Link to ..."/></div>
                        <a href="javascript:void(0);" class="browser btn button"><span class="label">...</span></a>
                        <a href="javascript:void(0);" id="btnAdd" class="button btn green"><span class="label">[ + ]</span></a>
                    </div>
                    <asp:HiddenField runat="server" ID="hdfPhotos" clientidmode="Static"/>
                </div>
            </li>
            <li class="row clerafix">
                <div class="item textright" >
                    <button class="action btnOk" runat="server" ID="btnSave" disabled="disabled" clientidmode="Static"><span class="label">Lưu</span></button>
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
        $('#btnAdd').click(function () {
            if (urlPhoto.val() != '') {
                addItem(urlPhoto.val(), txtLink.val());
            }
        });

        function findItem(value) {
            return listItems.slice($.inArray(value, listItems));
        }

        function findItemIndex(value) {
            return $.inArray(value, listItems);
        }

        function removeItem(item, value) {
            var index = findItemIndex(value);
            listItems.splice(index, 1);
            item.remove();
            updateValue();
        }

        function addItem(src, link) {
            link == '' && (link = src);
            var li = $('<li></li>');
            var a = $('<a class="thumb"></a>').attr('href', link);
            var btn = $('<a class="button red del" href="javascript:void(0);">-</a>')
            var img = $('<img alt="" src=' + src + '/>');
            var txt = $('<input type="nummber" class="textbox small" value="' + listPhotos.children().length + '" />')
            objItem = txt.val() + '*' + src + '*' + link;
            btn.attr('value', objItem);
            btn.click(function () {
                removeItem($(this).parent(), $(this).attr('value'));
            });
            li.append(a.append(img)).append(txt).append(btn);
            listPhotos.append(li);
            listItems.push(objItem);
            updateValue();
            urlPhoto.val('');
            txtLink.val('');
        }

        function updateValue() {
            hdf.val(listItems.join('|'));
            if (!$('.btnOk').hasClass('blue')) {
                $('.btnOk').removeAttr('disabled').addClass('blue');
            }
        }
    });
</script>