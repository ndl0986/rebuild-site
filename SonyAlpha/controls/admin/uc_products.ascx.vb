Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_products
    Inherits System.Web.UI.UserControl
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objProducts.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim tblCategory As New SonyAlphaLibs.ProductCategory
            ddlProductCategory.DataSource = tblCategory.getListAllChild(CN.ConnectionString)
            ddlProductCategory.DataTextField = "Name"
            ddlProductCategory.DataValueField = "Id"
            ddlProductCategory.DataBind()

            Dim item As New ListItem
            item.Text = "--- All ---"
            item.Value = 0
            ddlProductCategory.Items.Insert(0, item)

        End If
    End Sub

    Private Sub grvProducts_PageIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvProducts.PageIndexChanged
        If CInt(ddlProductCategory.SelectedValue) <> 0 Then
            objProducts.SelectMethod = "getListByCategory"
            objProducts.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
            If objProducts.SelectParameters.Count = 1 Then
                objProducts.SelectParameters.Add("categoryId", ddlProductCategory.SelectedValue)
            Else
                objProducts.SelectParameters.Item("categoryId").DefaultValue = ddlProductCategory.SelectedValue
            End If
        Else
            If objProducts.SelectParameters.Count = 2 Then
                objProducts.SelectParameters.RemoveAt(1)
            End If
            objProducts.SelectMethod = "getListAll"
            objProducts.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
        End If
        grvProducts.PageSize = ddlPageSize.SelectedValue
        grvProducts.DataSourceID = ""
        grvProducts.DataSourceID = "objProducts"
        grvProducts.DataBind()
    End Sub
    Private Sub grvProducts_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvProducts.SelectedIndexChanged
        Dim strURL As String = "?tpl=editproduct&id=" & grvProducts.Rows(grvProducts.SelectedIndex).Cells(0).Text
        Response.Redirect(strURL)
    End Sub
    Private Sub grvProducts_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grvProducts.RowCommand
        Try
            If e.CommandName = "DeleteRow" Then
                Dim product As New Product
                product.Id = CInt(e.CommandArgument)
                product.removeById(CN.ConnectionString)

                grvProducts.DataSourceID = ""
                grvProducts.DataSourceID = "objProducts"
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ddlProductCategory_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlProductCategory.SelectedIndexChanged
        If CInt(ddlProductCategory.SelectedValue) <> 0 Then
            objProducts.SelectMethod = "getListByCategory"
            objProducts.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
            If objProducts.SelectParameters.Count = 1 Then
                objProducts.SelectParameters.Add("categoryId", ddlProductCategory.SelectedValue)
            Else
                objProducts.SelectParameters.Item("categoryId").DefaultValue = ddlProductCategory.SelectedValue
            End If
        Else
            If objProducts.SelectParameters.Count = 2 Then
                objProducts.SelectParameters.RemoveAt(1)
            End If
            objProducts.SelectMethod = "getListAll"
            objProducts.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
        End If
        grvProducts.PageSize = ddlPageSize.SelectedValue
        grvProducts.DataSourceID = ""
        grvProducts.DataSourceID = "objProducts"
        grvProducts.DataBind()
    End Sub

    Private Sub ddlPageSize_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlPageSize.SelectedIndexChanged
        If CInt(ddlProductCategory.SelectedValue) <> 0 Then
            objProducts.SelectMethod = "getListByCategory"
            objProducts.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
            If objProducts.SelectParameters.Count = 1 Then
                objProducts.SelectParameters.Add("categoryId", ddlProductCategory.SelectedValue)
            Else
                objProducts.SelectParameters.Item("categoryId").DefaultValue = ddlProductCategory.SelectedValue
            End If
        Else
            If objProducts.SelectParameters.Count = 2 Then
                objProducts.SelectParameters.RemoveAt(1)
            End If
            objProducts.SelectMethod = "getListAll"
            objProducts.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
        End If
        grvProducts.PageSize = ddlPageSize.SelectedValue
        grvProducts.DataSourceID = ""
        grvProducts.DataSourceID = "objProducts"
        grvProducts.DataBind()
    End Sub
End Class