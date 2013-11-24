Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_productcategory1
    Inherits System.Web.UI.UserControl
    Public listProductCategoryChild As New List(Of ProductCategory)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            Dim catId As String
            catId = Request.QueryString("id")
            If Not String.IsNullOrEmpty(catId) Then
                listProductCategoryChild = ProductServices.getListAllProductCategoryChild(catId, CN.ConnectionString)

            End If

        Catch ex As Exception

        End Try
    End Sub

End Class