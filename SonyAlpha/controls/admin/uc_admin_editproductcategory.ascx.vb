Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_editproductcategory
    Inherits System.Web.UI.UserControl
    Public listAlbums As New List(Of Album)
    Public listOtherCategory As New List(Of ProductCategory)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.ClientScript.RegisterOnSubmitStatement(txtDescription.GetType(), "txtMessage", "FCKUpdateLinkedField('" + txtDescription.ClientID + "');")
        If Not Page.IsPostBack Then
            Dim id As Integer = CInt(Request.QueryString("id"))
            If listAlbums.Count = 0 Then
                listAlbums = AlbumServices.getListAllAlbumForProductCategory(CN.ConnectionString)
            End If
            If listOtherCategory.Count = 0 Then
                listOtherCategory = ProductServices.getListAllProductCategory(CN.ConnectionString)
                If listOtherCategory.Count > 0 Then
                    Dim index As Integer = 0
                    For Each category In listOtherCategory
                        If category.Id = id Then
                            Exit For
                        Else
                            index += 1
                        End If
                    Next
                    listOtherCategory.RemoveAt(index)
                End If
            End If
            ddlAlbums.DataSource = listAlbums
            ddlAlbums.DataTextField = "FullName"
            ddlAlbums.DataValueField = "Id"
            ddlAlbums.DataBind()

            ddlParentCategory.DataSource = listOtherCategory
            ddlParentCategory.DataTextField = "Name"
            ddlParentCategory.DataValueField = "Id"
            ddlParentCategory.DataBind()

            LoadDataToForm(ID)
        End If
    End Sub
    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            Try
                Dim productCategory As New ProductCategory
                Dim id As Integer = CInt(Request.QueryString("id"))
                If Not id = 0 Then
                    productCategory = ProductServices.getProductCategoryById(id, CN.ConnectionString)
                    productCategory.Name = txtName.Text
                    productCategory.ParentId = ddlParentCategory.SelectedValue
                    productCategory.AlbumId = ddlAlbums.SelectedValue
                    productCategory.Description = txtDescription.Value
                    productCategory.CoverPhoto = txtPhotoURL.Value
                    If String.IsNullOrEmpty(productCategory.SeoUrl) Then
                        productCategory.SeoUrl = ProductCategorySeUrl(id, productCategory.Name)
                    End If
                    If productCategory.update(CN.ConnectionString) Then
                        ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu Nhóm sản phẩm thành công !!!');", True)
                        Response.Redirect("?tpl=editproductcategory&id=" & CStr(id))
                    Else
                        ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu Nhóm sản phẩm không thành công !!!');", True)
                    End If
                End If
            Catch ex As Exception
                SonyCenterServices.writeLog("", "Add/Update Product Category fail: " + ex.Message, CN.ConnectionString)
            End Try
        End If
    End Sub

    Private Sub LoadDataToForm(ByVal id As Integer)
        Dim productCategory As New ProductCategory
        productCategory = ProductServices.getProductCategoryById(id, CN.ConnectionString)
        txtName.Text = productCategory.Name
        ddlParentCategory.SelectedValue = productCategory.ParentId
        ddlAlbums.SelectedValue = productCategory.AlbumId
        txtDescription.Value = productCategory.Description
        'If String.IsNullOrEmpty(productCategory.SeoUrl) Then
        '    productCategory.SeoUrl = ProductCategorySeUrl(id, productCategory.Name)
        'End If
        txtSeoUrl.Text = productCategory.SeoUrl
        txtPhotoURL.Value = productCategory.CoverPhoto
        txtCreated.Text = productCategory.Created
        txtUpdated.Text = productCategory.Updated
    End Sub

End Class