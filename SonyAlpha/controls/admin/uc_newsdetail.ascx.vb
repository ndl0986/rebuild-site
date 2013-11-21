Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_newsdetail1
    Inherits System.Web.UI.UserControl
    Dim bolUpdate As Boolean
    Dim myNews As New SonyAlphaLibs.News
    Sub LoadNews(ByVal id As String)
        Dim news As New News
        news = NewsServices.getById(id, CN.ConnectionString)
        If Not news.Id = 0 Then
            txtTitle.Text = news.Title
            ddlGroup.SelectedValue = news.CategoryId
            chkPublished.Checked = news.Published
            txtDescription.Text = news.Description
            fckEditor.Value = news.Detail
            news.NewsImage = news.NewsImage
        End If
    End Sub
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objNewsCategory.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.ClientScript.RegisterOnSubmitStatement(fckEditor.GetType(), "txtMessage", "FCKUpdateLinkedField('" + fckEditor.ClientID + "');")
        Dim id As String
        id = Request.QueryString("id")
        If id = "" Then
            'thêm 
            bolUpdate = False
        Else
            bolUpdate = True
        End If

        If bolUpdate Then
            LoadNews(id)
        End If
    End Sub

    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            myNews.Title = txtTitle.Text.Trim
            myNews.Description = txtDescription.Text.Trim
            myNews.Detail = fckEditor.Value
            myNews.CategoryId = ddlGroup.SelectedValue
            myNews.Published = CBool(chkPublished.Checked)
            myNews.NewsImage = txtPhotoURL.Value

            Dim result As Boolean
            If bolUpdate = False Then
                myNews.SeoUrl = NewsSeUrl(myNews.getCurrentMaxId(CN.ConnectionString) + 1, myNews.Title)
                result = myNews.add(CN.ConnectionString)
            Else
                myNews.SeoUrl = NewsSeUrl(myNews.Id, myNews.Title)
                result = myNews.update(CN.ConnectionString)
            End If
            If result Then
                ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu page thành công !!!');", True)

            Else
                ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('lưu page không thành công !!!');", True)
            End If
        End If
    End Sub
End Class