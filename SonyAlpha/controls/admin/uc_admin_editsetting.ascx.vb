Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_editsetting
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim id As Integer = CInt(Request.QueryString("id"))
            If Not id = 0 Then
                Dim setting As New Setting
                setting = SettingServices.getById(id, CN.ConnectionString)
                If Not setting.Id = 0 Then
                    txtName.Text = setting.Name
                    txtValue.Text = setting.Value
                End If
            End If
        End If
    End Sub
    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            Dim setting As New Setting
            Dim id As Integer = CInt(Request.QueryString("id"))
            If Not id = 0 Then
                setting.Id = id
                setting.Name = txtName.Text
                setting.Value = txtValue.Text
                If setting.update(CN.ConnectionString) Then
                    ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu Cấu hình thành công !!!');", True)
                    'Response.Redirect("?tpl=editsetting&id=" & id)
                Else
                    ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu Cấu hình không thành công !!!');", True)
                End If
            End If
        End If
    End Sub
End Class