Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_addprovince
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            Dim province As New Province
            province.SProvince = txtName.Text
            province.ProvinceOrder = txtOrder.Text
            If province.add(CN.ConnectionString) Then
                'Dim newId As String = CStr(ProvinceServices.getCurrentMaxId("sony_province", CN.ConnectionString))
                Response.Redirect("?tpl=addprovince")
            End If
        End If
    End Sub
End Class