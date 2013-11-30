<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="uc_admin_addqa.ascx.vb" Inherits="SonyAlpha.uc_admin_addqa" %>
<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>
<div class="navigations">
    <div class="breakcurm clearfix">
        <a class="button"><span class="icon icon4"></span></a>
        <span class="heading">Hệ thống > Tin tức > Thêm hỏi/đáp :<a class="button floatright" href="javascript:history.go(-1);"><span class="icon icon8"></span></a></span>
    </div>
</div>
<div class="content">
    <div class="section">
        <ul class="form">
            <li class="row clerafix">
                <div class="caption" >Câu hỏi :</div>
                <FCKeditorV2:FCKeditor ID="txtQuestion" runat="server" Height="500px"></FCKeditorV2:FCKeditor>
            </li>
            <li class="row clerafix">
                <div class="caption" >Câu trả lời :</div>
                <FCKeditorV2:FCKeditor ID="txtAnswer" runat="server" Height="500px"></FCKeditorV2:FCKeditor>
            </li>            
            <li class="row clerafix">
                <div class="item textright" >
                    <button class="action btnOk" runat="server" ID="btnSave" ><span class="label">Lưu</span></button>
                    <a href="javascript:void(0);" class="button action" id="btnCancel"><span class="label">Hủy</span></a>
                </div>
            </li>
        </ul>
    </div>
</div>