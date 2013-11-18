Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_products
    Inherits System.Web.UI.UserControl
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objProducts.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Private Sub grvProducts_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvProducts.SelectedIndexChanged
        Dim strURL As String = "?tpl=editproduct&id=" & grvProducts.Rows(grvProducts.SelectedIndex).Cells(0).Text
        Response.Redirect(strURL)
    End Sub
    Private Sub grvProducts_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grvProducts.RowCommand
        Try
            If e.CommandName = "DeleteRow" Then
                Dim product As New Product
                product.Id = CInt(e.CommandArgument)
                product.removeById(CN.ConnectionString)

                grvProducts.DataSourceID = ""
                grvProducts.DataSourceID = "objProducts"
            End If
        Catch ex As Exception

        End Try
    End Sub
End Class