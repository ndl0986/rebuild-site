Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_pages
    Inherits System.Web.UI.UserControl
    Dim myPage As New SonyAlphaLibs.Page
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objPage.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub grvPages_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grvPages.RowCommand
        Try
            If e.CommandName = "DeleteRow" Then
                myPage.Id = CInt(e.CommandArgument)
                myPage = myPage.getById(CN.ConnectionString)
                myPage.removeById(CN.ConnectionString)

                grvPages.DataSourceID = ""
                grvPages.DataSourceID = "objPage"
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub grvPages_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvPages.SelectedIndexChanged
        Dim strURL As String
        strURL = "?tpl=addpage&id=" & grvPages.Rows(grvPages.SelectedIndex).Cells(0).Text
        Response.Redirect(strURL)
    End Sub
End Class