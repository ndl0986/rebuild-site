Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_settings
    Inherits System.Web.UI.UserControl
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objSettings.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Private Sub grvSettings_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvSettings.SelectedIndexChanged
        Dim strURL As String = "?tpl=editsetting&id=" & grvSettings.Rows(grvSettings.SelectedIndex).Cells(0).Text
        Response.Redirect(strURL)
    End Sub
    Private Sub grvSettings_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grvSettings.RowCommand
        Try
            If e.CommandName = "DeleteRow" Then
                Dim setting As New Setting
                setting.Id = CInt(e.CommandArgument)
                setting.removeById(CN.ConnectionString)

                grvSettings.DataSourceID = ""
                grvSettings.DataSourceID = "objSettings"
            End If
        Catch ex As Exception

        End Try
    End Sub
End Class