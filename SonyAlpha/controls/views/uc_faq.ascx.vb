Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_faq
    Inherits System.Web.UI.UserControl
    Public tblFAQ As New List(Of SonyAlphaLibs.QuestionAnswer)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            tblFAQ = SonyAlphaLibs.Services.QAServices.getListAll(CN.ConnectionString)
            Dim bllSetting As New SonyAlphaLibs.Setting
            Dim bllPage As New SonyAlphaLibs.Page
            bllSetting.Name = "menu_kythuat"
            Dim intKyThuat As Integer = CInt(bllSetting.getByName(CN.ConnectionString))
            Dim strHeader As String
            bllPage.Id = intKyThuat
            strHeader = bllPage.getById(CN.ConnectionString).PageContent
            menuTech.InnerHtml = strHeader
        Catch ex As Exception

        End Try
    End Sub

End Class