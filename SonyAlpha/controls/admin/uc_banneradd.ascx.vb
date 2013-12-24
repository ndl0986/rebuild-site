Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_banneradd
    Inherits System.Web.UI.UserControl
    Dim myBanner As New SonyAlphaLibs.Banner

    Private Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If Page.IsPostBack Then
            myBanner.Name = txtName.Text.Trim
            myBanner.BannerType = ddlBannerType.SelectedValue
            Dim result As Boolean
            result = myBanner.add(CN.ConnectionString)
            If result Then
                Response.Redirect("?tpl=editbanner&id=" + myBanner.getCurrentMaxId(CN.ConnectionString).ToString)
            Else
                ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('lưu banner không thành công !!!');", True)
            End If
        End If
    End Sub
End Class