Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_addsetting
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            Dim setting As New Setting
            setting.Name = txtName.Text
            setting.Value = txtValue.Text
            If setting.add(CN.ConnectionString) Then
                Dim newId As String = CStr(SettingServices.getCurrentMaxId("sony_setting", CN.ConnectionString))
                Response.Redirect("?tpl=editsetting&id=" & newId)
            End If
        End If
    End Sub
End Class