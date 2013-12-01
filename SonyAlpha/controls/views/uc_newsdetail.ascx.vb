Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_newsdetail
    Inherits System.Web.UI.UserControl
    Dim bllNewsCategory As New SonyAlphaLibs.NewsCategory
    Public bllNews As New SonyAlphaLibs.News
    Public listTop As New List(Of SonyAlphaLibs.News)
    Public bolType As Boolean = False
    Dim catId As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Dim id As String
            catId = Request.QueryString("cId")
            id = Request.QueryString("id")
            bllNewsCategory.Id = CInt(catId)
            Dim lstCats As New List(Of SonyAlphaLibs.NewsCategory)
            lstCats = bllNewsCategory.getListChild(CN.ConnectionString)
            If lstCats.Count > 0 Then
                bolType = True
                For Each bllItem As SonyAlphaLibs.NewsCategory In lstCats
                    Dim bllItemNews As List(Of SonyAlphaLibs.News)
                    bllItemNews = SonyAlphaLibs.Services.NewsServices.getListNewsByCategory(bllItem.Id, CN.ConnectionString)
                    If bllItemNews.Count > 0 Then
                        listTop.Add(bllItemNews.Item(bllItemNews.Count - 1))
                    End If
                Next
            Else
                bolType = False
                Dim bllSetting As New SonyAlphaLibs.Setting
                Dim bllPage As New SonyAlphaLibs.Page
                bllSetting.Name = "menu_kythuat"
                Dim intKyThuat As Integer = CInt(bllSetting.getByName(CN.ConnectionString))
                Dim strHeader As String
                bllPage.Id = intKyThuat
                strHeader = bllPage.getById(CN.ConnectionString).PageContent
                menuTech.InnerHtml = strHeader
            End If
            bllNews = SonyAlphaLibs.Services.NewsServices.getById(CInt(id), CN.ConnectionString)

        Catch ex As Exception

        End Try
    End Sub

End Class