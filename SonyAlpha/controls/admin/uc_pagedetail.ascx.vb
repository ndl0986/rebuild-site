Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_pagedetail
    Inherits System.Web.UI.UserControl
    Dim myPage As New SonyAlphaLibs.Page

    Dim bolUpdate As Boolean
    Sub LoadPage(id As String)
        myPage.Id = CInt(id)
        myPage = myPage.getById(CN.ConnectionString)
        txtTitle.Text = myPage.Title
        txtLongTitle.Text = myPage.LongTitle
        fckEditor.Value = myPage.PageContent
        txtUrl.Text = myPage.SeoUrl

        Dim str As List(Of Integer)
        Dim listBanner As New List(Of SonyAlphaLibs.Banner)
        str = myPage.getListBannerId(CN.ConnectionString)

        For Each bId As Integer In str
            Dim pBanner As New SonyAlphaLibs.Banner
            pBanner = pBanner.getById(bId)
            listBanner.Add(pBanner)
        Next

        rptListBanner.DataSource = listBanner
        rptListBanner.DataBind()

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim id As String
        id = Request.QueryString("id")
        If id = "" Then
            'thêm 
            bolUpdate = False
        Else
            bolUpdate = True
        End If

        If bolUpdate Then
            LoadPage(id)
        End If
    End Sub

    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        myPage.LongTitle = txtLongTitle.Text.Trim
        If txtTitle.Text = "" Then
            myPage.Title = txtLongTitle.Text.Trim
        Else
            myPage.Title = txtTitle.Text
        End If

        myPage.PageContent = fckEditor.Value
        Dim result
        If bolUpdate = False Then
            myPage.SeoUrl = PageSeUrl(myPage.getCurrentMaxId(CN.ConnectionString) + 1, myPage.Title)
            result = myPage.add(CN.ConnectionString)
        Else
            myPage.SeoUrl = PageSeUrl(myPage.Id, myPage.Title)
            result = myPage.update(CN.ConnectionString)
        End If
        If result Then
            ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu page thành công !!!');", True)
        Else
            ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('lưu page không thành công !!!');", True)
        End If
    End Sub
End Class