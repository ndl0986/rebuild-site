Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_productcategory
    Inherits System.Web.UI.UserControl
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objProductCategorys.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Private Sub grvProductCategorys_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvProductCategorys.SelectedIndexChanged
        Dim strURL As String = "?tpl=editproductcategory&id=" & grvProductCategorys.Rows(grvProductCategorys.SelectedIndex).Cells(0).Text
        Response.Redirect(strURL)
    End Sub
    Private Sub grvProductCategorys_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grvProductCategorys.RowCommand
        Try
            If e.CommandName = "DeleteRow" Then
                Dim sonyCenter As New SonyCenter
                sonyCenter.Id = CInt(e.CommandArgument)
                sonyCenter.removeById(CN.ConnectionString)

                grvProductCategorys.DataSourceID = ""
                grvProductCategorys.DataSourceID = "objProductCategorys"
            End If
        Catch ex As Exception

        End Try
    End Sub
End Class