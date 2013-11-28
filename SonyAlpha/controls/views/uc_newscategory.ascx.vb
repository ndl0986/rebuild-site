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
    Public pageNum As Integer
    Public pageSize As Integer = 6
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
            bllNewsCategory.Id = CInt(catId)
            Dim pgUrl As String = Request.RawUrl
            Dim lstCats As New List(Of SonyAlphaLibs.NewsCategory)

            Dim totalNews As Integer = 0
            lstCats = bllNewsCategory.getListChild(CN.ConnectionString)
            If lstCats.Count > 0 Then
                bolType = True
                Dim listIds As New List(Of Integer)
                For Each newsCategory As NewsCategory In lstCats
                    listIds.Add(newsCategory.Id)
                Next
                listNewsInCat = NewsServices.getListNewsByCategoryIds(listIds, pageNum, pageSize, 0, "created", CN.ConnectionString, totalNews)
                If totalNews > 0 Then
                    GeneratePaging(listPaging, totalNews, pageSize, pgUrl, totalPage)
                End If
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
            For i As Integer = 0 To totalPage Step 1
                Dim paging As New Paging
                paging.PageNum = i.ToString()
                paging.PageText = i.ToString()
                If pgUrl.Contains("&page=") Then
                    pgUrl = pgUrl.Substring(0, pgUrl.IndexOf("&page="))
                End If
                paging.PageUrl = pgUrl + "&page=" + i.ToString()
                listPaging.Add(paging)
            Next
            If totalPage > 1 And pageNum < totalPage Then
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