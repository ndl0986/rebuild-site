Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_newscategory
    Inherits System.Web.UI.UserControl
    Dim bllNewsCategory As New SonyAlphaLibs.NewsCategory
    Dim bllNews As New SonyAlphaLibs.News
    Public listNewsInCat As New List(Of SonyAlphaLibs.News)
    Public listTop As New List(Of SonyAlphaLibs.News)
    Public bolType As Boolean = False
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Dim catId As Integer
            catId = Request.QueryString("id")
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
            End If


        Catch ex As Exception

        End Try


    End Sub

End Class