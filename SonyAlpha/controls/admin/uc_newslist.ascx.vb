Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_newslist
    Inherits System.Web.UI.UserControl
    Dim myNews As New SonyAlphaLibs.News
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objNews.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim myNewsCategory As New SonyAlphaLibs.NewsCategory
            ddlNewsCategory.DataSource = myNewsCategory.getListAll(CN.ConnectionString)
            ddlNewsCategory.DataTextField = "Name"
            ddlNewsCategory.DataValueField = "Id"
            ddlNewsCategory.DataBind()

            Dim item As New ListItem
            item.Value = 0
            item.Text = "--- Tất cả ---"
            ddlNewsCategory.Items.Insert(0, item)
        End If
    End Sub

    Private Sub grvNews_PageIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvNews.PageIndexChanged
        If CInt(ddlNewsCategory.SelectedValue) <> 0 Then
            objNews.SelectMethod = "getListByCategory"
            objNews.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
            If objNews.SelectParameters.Count = 1 Then
                objNews.SelectParameters.Add("categoryId", ddlNewsCategory.SelectedValue)
            Else
                objNews.SelectParameters.Item("categoryId").DefaultValue = ddlNewsCategory.SelectedValue
            End If
        Else
            If objNews.SelectParameters.Count = 2 Then
                objNews.SelectParameters.RemoveAt(1)
            End If
            objNews.SelectMethod = "getListAll"
            objNews.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
        End If
        grvNews.PageSize = ddlPageSize.SelectedValue
        grvNews.DataSourceID = ""
        grvNews.DataSourceID = "objNews"
        grvNews.DataBind()
    End Sub

    Private Sub grvNews_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grvNews.RowCommand
        If e.CommandName = "DeleteRow" Then
            myNews.Id = CInt(e.CommandArgument)
            myNews = myNews.getById(CN.ConnectionString)
            myNews.removeById(CN.ConnectionString)

            grvNews.DataSourceID = ""
            grvNews.DataSourceID = "objNews"
        End If
    End Sub

    Private Sub grvNews_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvNews.SelectedIndexChanged
        Dim strURL As String
        strURL = "?tpl=editnews&id=" & grvNews.Rows(grvNews.SelectedIndex).Cells(0).Text
        Response.Redirect(strURL)
    End Sub

    Private Sub ddlPageSize_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlPageSize.SelectedIndexChanged
        If CInt(ddlNewsCategory.SelectedValue) <> 0 Then
            objNews.SelectMethod = "getListByCategory"
            objNews.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
            If objNews.SelectParameters.Count = 1 Then
                objNews.SelectParameters.Add("categoryId", ddlNewsCategory.SelectedValue)
            Else
                objNews.SelectParameters.Item("categoryId").DefaultValue = ddlNewsCategory.SelectedValue
            End If
        Else
            If objNews.SelectParameters.Count = 2 Then
                objNews.SelectParameters.RemoveAt(1)
            End If
            objNews.SelectMethod = "getListAll"
            objNews.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
        End If
        grvNews.PageSize = ddlPageSize.SelectedValue
        grvNews.DataSourceID = ""
        grvNews.DataSourceID = "objNews"
        grvNews.DataBind()
    End Sub

    Private Sub ddlNewsCategory_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlNewsCategory.SelectedIndexChanged
        If CInt(ddlNewsCategory.SelectedValue) <> 0 Then
            objNews.SelectMethod = "getListByCategory"
            objNews.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
            If objNews.SelectParameters.Count = 1 Then
                objNews.SelectParameters.Add("categoryId", ddlNewsCategory.SelectedValue)
            Else
                objNews.SelectParameters.Item("categoryId").DefaultValue = ddlNewsCategory.SelectedValue
            End If
        Else
            If objNews.SelectParameters.Count = 2 Then
                objNews.SelectParameters.RemoveAt(1)
            End If
            objNews.SelectMethod = "getListAll"
            objNews.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
        End If
        grvNews.PageSize = ddlPageSize.SelectedValue
        grvNews.DataSourceID = ""
        grvNews.DataSourceID = "objNews"
        grvNews.DataBind()
    End Sub
End Class