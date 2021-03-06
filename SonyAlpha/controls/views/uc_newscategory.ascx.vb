﻿Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_newscategory
    Inherits System.Web.UI.UserControl
    Dim bllNewsCategory As New NewsCategory
    Dim bllNews As New News
    Public listNewsInCat As New List(Of News)
    Public listTop As New List(Of News)
    Public listTopCat As New List(Of NewsCategory)
    Public bolType As Boolean = False
    Public intMenu As String
    Public catId As String
    Public parentId As String
    Public pageNum As Integer
    Public pageSize6 As Integer = 6
    Public pageSize5 As Integer = 5
    Public totalPage As Integer = 0
    Public listPaging As New List(Of Paging)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            pageNum = CInt(Request.QueryString("page"))
            If IsDBNull(pageNum) Then
                pageNum = 0
            End If
            catId = Request.QueryString("id")
            intMenu = Request.QueryString("mId")
            parentId = Request.QueryString("cId")
            bllNewsCategory.Id = CInt(catId)
            Dim pgUrl As String = Request.RawUrl
            Dim lstCats As New List(Of NewsCategory)

            Dim totalNews As Integer = 0
            lstCats = bllNewsCategory.getListChild(CN.ConnectionString)

            If parentId <> "" Then
                bolType = True
                Dim listIds As New List(Of Integer)
                If lstCats.Count > 0 Then
                    For Each newsCategory As NewsCategory In lstCats
                        listTopCat.Add(newsCategory)
                        listIds.Add(newsCategory.Id)
                        Dim bllItemNews As IList(Of News)
                        bllItemNews = NewsServices.getListNewsByCategory(newsCategory.Id, CN.ConnectionString)
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
                    listNewsInCat = NewsServices.getListNewsByCategoryIds(listIds, pageNum, pageSize6, 0, "created", CN.ConnectionString, totalNews)
                Else
                    lstCats = NewsServices.getListCategoryChild(CInt(parentId), CN.ConnectionString)
                    For Each newsCategory As NewsCategory In lstCats
                        listTopCat.Add(newsCategory)
                        Dim bllItemNews As IList(Of News)
                        bllItemNews = NewsServices.getListNewsByCategory(newsCategory.Id, CN.ConnectionString)
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
                    listIds.Add(catId)
                    listNewsInCat = NewsServices.getListNewsByCategoryIds(listIds, pageNum, pageSize6, 0, "created", CN.ConnectionString, totalNews)
                End If

                If totalNews > 0 Then
                    GeneratePaging(listPaging, totalNews, pageSize6, pgUrl, totalPage)
                End If

            Else
                bolType = False
                'listNewsInCat = SonyAlphaLibs.Services.NewsServices.getListNewsByCategory(catId, CN.ConnectionString)
                Dim listIds As New List(Of Integer)
                listIds.Add(catId)
                listNewsInCat = NewsServices.getListNewsByCategoryIds(listIds, pageNum, pageSize5, 1, "", CN.ConnectionString, totalNews)
                If totalNews > 0 Then
                    GeneratePaging(listPaging, totalNews, pageSize6, pgUrl, totalPage)
                End If

                Dim bllSetting As New Setting
                Dim bllPage As New Page
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

    Private Sub GeneratePaging(ByRef listPaging As List(Of Paging), ByVal totalNews As Integer, _
                               ByVal pageSize As Integer, ByVal pgUrl As String, ByRef totalPage As Integer)
        totalPage = (totalNews / pageSize) - 1
        If totalPage > 0 Then
            If Not pageNum = 0 And totalPage > 1 Then
                Dim pagingPrev As New Paging
                pagingPrev.PageNum = (pageNum - 1).ToString()
                pagingPrev.PageText = "<< Trước"
                If pgUrl.Contains("&page=") Then
                    pgUrl = pgUrl.Substring(0, pgUrl.IndexOf("&page="))
                End If
                pagingPrev.PageUrl = pgUrl + "&page=" + (pageNum - 1).ToString()
                listPaging.Add(pagingPrev)
            End If
            For i As Integer = 0 To totalPage + 1 Step 1
                Dim paging As New Paging
                paging.PageNum = i.ToString()
                paging.PageText = (i + 1).ToString()
                If pgUrl.Contains("&page=") Then
                    pgUrl = pgUrl.Substring(0, pgUrl.IndexOf("&page="))
                End If
                paging.PageUrl = pgUrl + "&page=" + i.ToString()
                listPaging.Add(paging)
            Next
            If totalPage > 1 And pageNum <= totalPage Then
                Dim pagingNext As New Paging
                pagingNext.PageNum = (pageNum + 1).ToString()
                pagingNext.PageText = "Sau >>"
                If pgUrl.Contains("&page=") Then
                    pgUrl = pgUrl.Substring(0, pgUrl.IndexOf("&page="))
                End If
                pagingNext.PageUrl = pgUrl + "&page=" + (pageNum + 1).ToString()
                listPaging.Add(pagingNext)
            End If
        End If
    End Sub

End Class