Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_provinces
    Inherits System.Web.UI.UserControl
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objProvinces.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Private Sub grvProvinces_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvProvinces.SelectedIndexChanged
        Dim strURL As String = "?tpl=editprovince&id=" & grvProvinces.Rows(grvProvinces.SelectedIndex).Cells(0).Text
        Response.Redirect(strURL)
    End Sub
    Private Sub grvProvinces_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grvProvinces.RowCommand
        Try
            If e.CommandName = "DeleteRow" Then
                Dim province As New Province
                province.Id = CInt(e.CommandArgument)
                province.removeById(CN.ConnectionString)

                grvProvinces.DataSourceID = ""
                grvProvinces.DataSourceID = "objProvinces"
            End If
        Catch ex As Exception

        End Try
    End Sub
End Class