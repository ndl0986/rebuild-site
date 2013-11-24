<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_admin_addproduct.ascx.vb" Inherits="SonyAlpha.uc_admin_addproduct" %>
<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a>
        <span class="heading">Hệ thống > Danh mục Sản phẩm > Thêm sản phẩm :<a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption" >Tên sản phẩm :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtName" CssClass="textbox" required MaxLength="150" ></asp:TextBox></div>
            </li>            
            <li class="row clerafix">
                <div class="caption" >Danh mục sản phẩm :</div>
                <div class="item">
                    <label class="selectfake">
                        <asp:DropDownList runat="server" ID="ddlProductCategory">
                        </asp:DropDownList>
                    </label>
                </div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Ảnh sản phẩm :</div>
                <div class="item">
                    <asp:HiddenField runat="server" ID="urlPath" ClientIDMode="Static" />
                    <ajaxToolkit:AsyncFileUpload ID="fileUpload" ClientIDMode="Static" runat="server" ThrobberID="myThrobber" OnClientUploadError="uploadError" OnClientUploadComplete="uploadComplete" CssClass="btn button red"/>
                    <asp:Label runat="server" ID="myThrobber" style="display: none;"><img alt="" src="../../Img/ajax-loader.gif"/></asp:Label>
                    <asp:TextBox runat="server" ID="txtFileName" ClientIDMode="Static" CssClass="textbox detail hidden" required maxlength="500"></asp:TextBox>
                </div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Album :</div>
                <div class="item"><label class="selectfake"><asp:DropDownList runat="server" ID="ddlAlbumList" DataTextField="centerImage" DataValueField="centerImage"></asp:DropDownList></label></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Mô tả ngắn :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtShortDesc" CssClass="textbox" MaxLength="300" TextMode="MultiLine"
                        Columns="100" Rows="10"></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Mô tả :</div>
                <div class="item">
                    <FCKeditorV2:FCKeditor ID="txtDescription" runat="server" Height="500px"></FCKeditorV2:FCKeditor>
                </div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Giá sản phẩm :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtPrice" CssClass="textbox" required MaxLength="150" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Trạng thái :</div>
                <div class="item"><asp:CheckBox runat="server" ID="chkStatus" Checked></asp:CheckBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Tiêu cự :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtFStop" CssClass="textbox" MaxLength="55" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Tiêu cự cực đại :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtFMax" CssClass="textbox" MaxLength="55" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Tiêu cự cực tiểu :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtFMin" CssClass="textbox" MaxLength="55" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Chi tiết ống kính :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtLensDetails" CssClass="textbox" MaxLength="150" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Số lá khẩu :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtNumOfPiece" CssClass="textbox" MaxLength="8" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Khoảng cách cực tiểu :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtMinDistance" CssClass="textbox" MaxLength="150" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Khoảng cách cực đại :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtMaxDistance" CssClass="textbox" MaxLength="150" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="caption" >Đường kính ống kính :</div>
                <div class="item"><asp:TextBox runat="server" ID="txtLensDiameter" CssClass="textbox" MaxLength="150" ></asp:TextBox></div>
            </li>
            <li class="row clerafix">
                <div class="item textright" >
                    <button class="action btnOk detail " runat="server" ID="btnSave"  ><span class="label">Lưu</span></button>
                    <a href="javascript:void(0);" class="button action" id="btnCancel"><span class="label">Hủy</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>
<script type = "text/javascript">
    $(document).ready(function () {
        $('.btnOk').removeAttr('disabled').addClass('blue');
        if ($('#txtFileName').val() != '') {
            showDetail();
        }
    });

    function uploadComplete(sender, args) {
        $('#txtFileName').val($('#urlPath').val() + args.get_fileName());
        showDetail();
    }

    function uploadError(sender) {
        $('#txtFileName').val("File upload failed.");
    }

    function showDetail() {
        var img = $('<div class="thumbnail"></div>').attr('style', 'background:url("/upload/image/product/' + $('#txtFileName').val() + '");');
        $('#fileUpload').after(img).addClass('hidden');
        $('.detail').removeClass("hidden");
    }
</script>