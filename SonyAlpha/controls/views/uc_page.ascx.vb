Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_page
    Inherits System.Web.UI.UserControl
    Dim myPage As New SonyAlphaLibs.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim id As String
        id = Request.QueryString("id")
        Dim strHeader As String
        If id = "" Then
            Dim bllSetting As New SonyAlphaLibs.Setting
            bllSetting.Name = "Homepage"
            Dim intFooter As Integer = CInt(bllSetting.getByName(CN.ConnectionString))
            myPage.Id = intFooter
        Else
            myPage.Id = CInt(id)
        End If

        strHeader = myPage.getById(CN.ConnectionString).PageContent
        page_content.InnerHtml = strHeader
    End Sub

End Class