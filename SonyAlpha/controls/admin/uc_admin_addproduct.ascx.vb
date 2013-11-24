Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_addproduct
    Inherits System.Web.UI.UserControl
    Public listProductCategory As New List(Of ProductCategory)
    Public listAlbums As New List(Of Album)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.ClientScript.RegisterOnSubmitStatement(txtDescription.GetType(), "txtMessage", "FCKUpdateLinkedField('" + txtDescription.ClientID + "');")
        If Not Page.IsPostBack Then
            listProductCategory = ProductServices.getListAllProductCategory(CN.ConnectionString)
            If listProductCategory.Count > 0 Then
                ddlProductCategory.DataSource = listProductCategory
                ddlProductCategory.DataTextField = "Name"
                ddlProductCategory.DataValueField = "Id"
                ddlProductCategory.DataBind()
            End If
            listAlbums = AlbumServices.getListAllNormalAlbum(CN.ConnectionString)
            If Not listAlbums.Count = 0 Then
                ddlAlbumList.DataSource = listAlbums
                ddlAlbumList.DataTextField = "FullName"
                ddlAlbumList.DataValueField = "Id"
                ddlAlbumList.DataBind()
            End If
        End If
    End Sub
    Private Sub fileUpload_UploadedComplete(ByVal sender As Object, ByVal e As AjaxControlToolkit.AsyncFileUploadEventArgs) Handles fileUpload.UploadedComplete
        Dim filePath As String
        filePath = Server.MapPath("~/upload/image/product/")
        fileUpload.SaveAs(filePath + e.FileName)
    End Sub
    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            Dim product As New Product
            product.Name = txtName.Text
            'product.ProductType = ddlProductType.SelectedValue
            product.CategoryId = ddlProductCategory.SelectedValue
            product.ImageUrl = txtFileName.Text
            product.ShortDesc = txtShortDesc.Text
            product.Description = txtDescription.Value
            product.Status = chkStatus.Checked
            product.FStop = txtFStop.Text
            product.FMax = txtFMax.Text
            product.FMin = txtFMin.Text
            product.LensDetails = txtLensDetails.Text
            product.NumOfPiece = txtNumOfPiece.Text
            product.MinDistance = txtMinDistance.Text
            product.MaxDistance = txtMaxDistance.Text
            product.LensDiameter = txtLensDiameter.Text
            product.Price = txtPrice.Text
            product.AlbumId = ddlAlbumList.SelectedValue
            If product.add(CN.ConnectionString) Then
                Dim newId As String = CStr(ProductServices.getCurrentMaxId("sony_product", CN.ConnectionString))
                Response.Redirect("?tpl=editproduct&id=" & newId)
            End If
        End If
    End Sub
End Class