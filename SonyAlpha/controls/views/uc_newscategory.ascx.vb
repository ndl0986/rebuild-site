Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_newscategory
    Inherits System.Web.UI.UserControl
    Dim bllNewsCategory As New SonyAlphaLibs.NewsCategory
    Dim bllNews As New SonyAlphaLibs.News
    Public listNewsInCat As New List(Of SonyAlphaLibs.News)
    Public listTop As New List(Of SonyAlphaLibs.News)
    Public bolType As Boolean = False
    Public intMenu As String
    Public catId As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try

            catId = Request.QueryString("id")
            intMenu = Request.QueryString("mId")
            bllNewsCategory.Id = CInt(catId)
            Dim lstCats As New List(Of SonyAlphaLibs.NewsCategory)
            lstCats = bllNewsCategory.getListChild(CN.ConnectionString)
            If lstCats.Count > 0 Then
                bolType = True
                For Each bllItem As SonyAlphaLibs.NewsCategory In lstCats
                    Dim bllItemNews As List(Of SonyAlphaLibs.News)
                    bllItemNews = SonyAlphaLibs.Services.NewsServices.getListNewsByCategory(bllItem.Id, CN.ConnectionString)
                    listNewsInCat.AddRange(bllItemNews)
                    If bllItemNews.Count > 0 Then
                        listTop.Add(bllItemNews.Item(bllItemNews.Count - 1))
                    End If
                Next
            Else
                bolType = False
                listNewsInCat = SonyAlphaLibs.Services.NewsServices.getListNewsByCategory(catId, CN.ConnectionString)
                Dim bllSetting As New SonyAlphaLibs.Setting
                Dim bllPage As New SonyAlphaLibs.Page
                bllSetting.Name = "menu_kythuat"
                Dim intKyThuat As Integer = CInt(bllSetting.getByName(CN.ConnectionString))
                Dim strHeader As String
                bllPage.Id = intKyThuat
                strHeader = bllPage.getById(CN.ConnectionString).PageContent
                menuTech.InnerHtml = strHeader
            End If


        Catch ex As Exception

        End Try


    End Sub

End Class