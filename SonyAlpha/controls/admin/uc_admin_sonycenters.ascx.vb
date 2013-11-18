Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_sonycenters
    Inherits System.Web.UI.UserControl
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objSonyCenters.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Private Sub grvSonyCenters_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvSonyCenters.SelectedIndexChanged
        Dim strURL As String = "?tpl=editsonycenter&id=" & grvSonyCenters.Rows(grvSonyCenters.SelectedIndex).Cells(0).Text
        Response.Redirect(strURL)
    End Sub
    Private Sub grvSonyCenters_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grvSonyCenters.RowCommand
        Try
            If e.CommandName = "DeleteRow" Then
                Dim sonyCenter As New SonyCenter
                sonyCenter.Id = CInt(e.CommandArgument)
                sonyCenter.removeById(CN.ConnectionString)

                grvSonyCenters.DataSourceID = ""
                grvSonyCenters.DataSourceID = "objSonyCenters"
            End If
        Catch ex As Exception

        End Try
    End Sub
End Class