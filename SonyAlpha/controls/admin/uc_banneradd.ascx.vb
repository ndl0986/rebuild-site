Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_banneradd
    Inherits System.Web.UI.UserControl
    Dim myBanner As New SonyAlphaLibs.Banner

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            myBanner.Name = txtName.Text.Trim
            myBanner.BannerType = ddlBannerType.SelectedValue
            Dim result
            result = myBanner.add(CN.ConnectionString)
            If result Then
                ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu banner thành công !!!');", True)
                Response.Redirect("?tpl=editbanner&id=" + myBanner.getCurrentMaxId(CN.ConnectionString).ToString)
            Else
                ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('lưu banner không thành công !!!');", True)
            End If
        End If

    End Sub
End Class