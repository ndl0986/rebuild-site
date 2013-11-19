Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_menulist
    Inherits System.Web.UI.UserControl
    Dim myMenus As New SonyAlphaLibs.Menu

    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objMenu.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub grvMenus_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grvMenus.RowCommand
        Try
            If e.CommandName = "DeleteRow" Then
                myMenus.Id = CInt(e.CommandArgument)
                myMenus = myMenus.getById(CN.ConnectionString)
                myMenus.removeById(CN.ConnectionString)

                grvMenus.DataSourceID = ""
                grvMenus.DataSourceID = "objPage"
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub grvMenus_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvMenus.SelectedIndexChanged
        Dim strURL As String
        strURL = "?tpl=editmenu&id=" & grvMenus.Rows(grvMenus.SelectedIndex).Cells(0).Text
        Response.Redirect(strURL)
    End Sub
End Class