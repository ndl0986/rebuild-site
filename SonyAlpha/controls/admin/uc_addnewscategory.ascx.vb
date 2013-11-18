Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services

Public Class uc_addnewscategory
    Inherits System.Web.UI.UserControl
    Dim myNewsCategory As New SonyAlphaLibs.NewsCategory
    Dim bolUpdate As Boolean
    Sub LoadNewsCategory(ByVal id As String)
        myNewsCategory.Id = CInt(id)
        myNewsCategory = myNewsCategory.getById(CN.ConnectionString)
        txtName.Text = myNewsCategory.Name
        If myNewsCategory.ParentId <> 0 Then
            ddlGroup.SelectedValue = myNewsCategory.ParentId
        End If


    End Sub

    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objGroup.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
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
            LoadNewsCategory(id)
        End If
    End Sub

    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            myNewsCategory.Name = txtName.Text
            If ddlGroup.SelectedValue <> "" Then
                myNewsCategory.ParentId = ddlGroup.SelectedValue
            Else
                myNewsCategory.ParentId = 0
            End If
            Dim result As Boolean
            If bolUpdate = False Then
                myNewsCategory.SeoUrl = NewsCategorySeUrl(myNewsCategory.getCurrentMaxId(CN.ConnectionString) + 1, myNewsCategory.Name)
                result = myNewsCategory.add(CN.ConnectionString)
            Else
                myNewsCategory.SeoUrl = NewsCategorySeUrl(myNewsCategory.Id, myNewsCategory.Name)
                result = myNewsCategory.update(CN.ConnectionString)
            End If
            If result Then
                ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu nhóm tin thành công !!!');", True)
            Else
                ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('lưu nhóm tin không thành công !!!');", True)
            End If
            Response.Redirect("?tpl=addnewscategory&id=" & myNewsCategory.Id)
        End If
    End Sub

    Private Sub ddlGroup_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlGroup.DataBound
        Dim item As New ListItem
        item.Value = "0"
        item.Text = "Root"
        ddlGroup.Items.Insert(0, item)
    End Sub
End Class