Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_account
    Inherits System.Web.UI.UserControl
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objUsers.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Private Sub grvUsers_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvUsers.SelectedIndexChanged
        Dim strURL As String = "?tpl=editaccount&id=" & grvUsers.Rows(grvUsers.SelectedIndex).Cells(0).Text
        Response.Redirect(strURL)
    End Sub
    Private Sub grvUsers_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grvUsers.RowCommand
        Try
            If e.CommandName = "DeleteRow" Then
                Dim user As New User
                user.Id = CInt(e.CommandArgument)
                user.removeById(CN.ConnectionString)

                grvUsers.DataSourceID = ""
                grvUsers.DataSourceID = "objUsers"
            End If
        Catch ex As Exception

        End Try
    End Sub
End Class