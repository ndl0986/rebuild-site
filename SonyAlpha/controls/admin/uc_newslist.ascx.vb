Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_newslist
    Inherits System.Web.UI.UserControl
    Dim myNews As New SonyAlphaLibs.News
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objNews.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub grvNews_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grvNews.RowCommand
        If e.CommandName = "DeleteRow" Then
            myNews.Id = CInt(e.CommandArgument)
            myNews = myNews.getById(CN.ConnectionString)
            myNews.removeById(CN.ConnectionString)

            grvNews.DataSourceID = ""
            grvNews.DataSourceID = "objNews"
        End If
    End Sub

    Private Sub grvNews_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvNews.SelectedIndexChanged
        Dim strURL As String
        strURL = "?tpl=editnews&id=" & grvNews.Rows(grvNews.SelectedIndex).Cells(0).Text
        Response.Redirect(strURL)
    End Sub
End Class