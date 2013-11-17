Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_pagebanner
    Inherits System.Web.UI.UserControl
    Dim myPage As New SonyAlphaLibs.Page
    Dim myBanner As New SonyAlphaLibs.Banner

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ddlPage.DataSource = myPage.getListAll(CN.ConnectionString)
        ddlPage.DataBind()
        ddlBanner.DataSource = myBanner.getListAll(CN.ConnectionString)
        ddlBanner.DataBind()


    End Sub

    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        Dim chosenPage As New SonyAlphaLibs.Page
        chosenPage.Id = ddlPage.SelectedValue
        chosenPage = chosenPage.getById(CN.ConnectionString)
        Dim result As Boolean
        result = chosenPage.setBanner2Page(ddlBanner.SelectedValue, CN.ConnectionString)
        If result Then
            ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu liên kết page banner thành công !!!');", True)
        Else
            ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('lưu liên kết page banner không thành công !!!');", True)
        End If
    End Sub
End Class