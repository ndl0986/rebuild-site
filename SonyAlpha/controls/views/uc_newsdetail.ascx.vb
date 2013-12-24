Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_newsdetail
    Inherits System.Web.UI.UserControl
    Dim bllNewsCategory As New SonyAlphaLibs.NewsCategory
    Public bllNews As New SonyAlphaLibs.News
    Public listTop As New List(Of SonyAlphaLibs.News)
    Public listTopCat As New List(Of NewsCategory)
    Public bolType As Boolean = False
    Public catId As String
    Public intMenu As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Dim id As String
            catId = Request.QueryString("cId")
            id = Request.QueryString("id")
            intMenu = Request.QueryString("mId")
            NewsServices.increaseViewCount(id, CN.ConnectionString)
            bllNewsCategory.Id = CInt(catId)
            Dim lstCats As New List(Of SonyAlphaLibs.NewsCategory)
            lstCats = bllNewsCategory.getListChild(CN.ConnectionString)
            If lstCats.Count > 0 Then
                bolType = True
                For Each bllItem As SonyAlphaLibs.NewsCategory In lstCats
                    listTopCat.Add(bllItem)
                    Dim bllItemNews As List(Of SonyAlphaLibs.News)
                    bllItemNews = SonyAlphaLibs.Services.NewsServices.getListNewsByCategory(bllItem.Id, CN.ConnectionString)
                    If bllItemNews.Count > 0 Then
                        'listTop.Add(bllItemNews.Item(bllItemNews.Count - 1))
                        Dim numHot = Aggregate _news In bllItemNews
                                                                  Where _news.IsHot = True
                                                                  Order By _news.SortOrder
                                                                  Into Count()
                        Dim hasHot = numHot > 0
                        Dim topNews As News
                        If hasHot Then
                            Dim tmp = From _news In bllItemNews
                                  Where _news.IsHot = True
                                  Order By _news.SortOrder
                                  Select _news
                            topNews = tmp.First()
                        Else
                            topNews = bllItemNews.Item(bllItemNews.Count - 1)
                        End If

                        'Take 1
                        listTop.Add(topNews)
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