Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_questionanswer
    Inherits System.Web.UI.UserControl
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objSonyQAs.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Private Sub grvSonyQAs_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvSonyQAs.SelectedIndexChanged
        Dim strURL As String = "?tpl=editqa&id=" & grvSonyQAs.Rows(grvSonyQAs.SelectedIndex).Cells(0).Text
        Response.Redirect(strURL)
    End Sub
    Private Sub grvSonyQAs_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grvSonyQAs.RowCommand
        Try
            If e.CommandName = "DeleteRow" Then
                Dim qa As New QuestionAnswer
                qa.Id = CInt(e.CommandArgument)
                qa.removeById(CN.ConnectionString)

                grvSonyQAs.DataSourceID = ""
                grvSonyQAs.DataSourceID = "objSonyQAs"
            End If
        Catch ex As Exception

        End Try
    End Sub
End Class