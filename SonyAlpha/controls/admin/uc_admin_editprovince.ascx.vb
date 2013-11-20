Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_editprovince
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim id As Integer = CInt(Request.QueryString("id"))
            If Not id = 0 Then
                Dim province As New Province
                province = ProvinceServices.getProvinceById(id, CN.ConnectionString)
                If Not province.Id = 0 Then
                    txtName.Text = province.SProvince
                    txtOrder.Text = province.ProvinceOrder
                End If
            End If
        End If
    End Sub
    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            Dim province As New Province
            Dim id As Integer = CInt(Request.QueryString("id"))
            If Not id = 0 Then
                province.Id = id
                province.SProvince = txtName.Text
                province.ProvinceOrder = txtOrder.Text
                If province.update(CN.ConnectionString) Then
                    ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu Tỉnh thành thành công !!!');", True)
                    'Response.Redirect("?tpl=editsetting&id=" & id)
                Else
                    ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu Tỉnh thành không thành công !!!');", True)
                End If
            End If
        End If
    End Sub
End Class