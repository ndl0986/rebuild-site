Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_addproductcategory
    Inherits System.Web.UI.UserControl
    Public listAlbums As New List(Of Album)
    Public listOtherCategory As New List(Of ProductCategory)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.ClientScript.RegisterOnSubmitStatement(txtDescription.GetType(), "txtMessage", "FCKUpdateLinkedField('" + txtDescription.ClientID + "');")
        If Not Page.IsPostBack Then
            If listAlbums.Count = 0 Then
                listAlbums = AlbumServices.getListAllAlbumForProductCategory(CN.ConnectionString)
            End If
            If listOtherCategory.Count = 0 Then
                listOtherCategory = ProductServices.getListAllProductCategory(CN.ConnectionString)
                If listOtherCategory.Count = 0 Then
                    Dim rootCategory As New ProductCategory
                    rootCategory.Id = 0
                    rootCategory.Name = "---"
                    listOtherCategory.Add(rootCategory)
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
        End If
    End Sub
    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            Try
                Dim productCategory As New ProductCategory
                productCategory.Name = txtName.Text
                productCategory.ParentId = ddlParentCategory.SelectedValue
                productCategory.AlbumId = ddlAlbums.SelectedValue
                productCategory.Description = txtDescription.Value
                productCategory.CoverPhoto = txtPhotoURL.Value
                If productCategory.add(CN.ConnectionString) Then
                    Dim newId As Integer = ProductServices.getCurrentMaxId("sony_product_category", CN.ConnectionString)
                    productCategory.Id = newId
                    productCategory.SeoUrl = ProductCategorySeUrl(newId, productCategory.Name)
                    productCategory.update(CN.ConnectionString)
                    Response.Redirect("?tpl=editproductcategory&id=" & CStr(newId))
                End If
            Catch ex As Exception
                SonyCenterServices.writeLog("", "Add/Update Product Category fail: " + ex.Message, CN.ConnectionString)
            End Try
        End If
    End Sub
End Class