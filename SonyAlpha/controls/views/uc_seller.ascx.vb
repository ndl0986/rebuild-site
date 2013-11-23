Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_seller
    Inherits System.Web.UI.UserControl
    Public tblProShop As New List(Of SonyCenter)
    Public tblAlphaShop As New List(Of SonyCenter)
    Public tblShop As New List(Of SonyCenter)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Dim tblCenters As New List(Of SonyCenter)
            tblCenters = SonyCenterServices.getListAllCenter(CN.ConnectionString)
            For Each item As SonyCenter In tblCenters
                Select Case item.RetailLevel
                    Case 0
                        tblProShop.Add(item)
                    Case 1
                        tblAlphaShop.Add(item)
                    Case Else
                        tblShop.Add(item)
                End Select
            Next
        Catch ex As Exception
            Response.Redirect("Error.aspx")
        End Try
    End Sub

End Class