Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_editproduct
    Inherits System.Web.UI.UserControl
    Public listProductCategory As New List(Of ProductCategory)

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
            Dim id As String = Request.QueryString("id")
            If Not String.IsNullOrEmpty(id) Then
                LoadProductToForm(id)
            End If
        End If
    End Sub

    Private Sub LoadProductToForm(ByVal id As String)
        Dim product As New Product
        product = ProductServices.getById(id, CN.ConnectionString)
        If Not product.Id = 0 Then
            txtName.Text = product.Name
            ddlProductType.SelectedValue = product.ProductType
            ddlProductCategory.SelectedValue = product.CategoryId
            txtFileName.Text = product.ImageUrl
            txtShortDesc.Text = product.ShortDesc
            txtDescription.Value = product.Description
            chkStatus.Checked = product.Status
            txtFStop.Text = product.FStop
            txtFMax.Text = product.FMax
            txtFMin.Text = product.FMin
            txtLensDetails.Text = product.LensDetails
            txtNumOfPiece.Text = product.NumOfPiece
            txtMinDistance.Text = product.MinDistance
            txtMaxDistance.Text = product.MaxDistance
            txtLensDiameter.Text = product.LensDiameter
            txtCreated.Text = product.Created
            txtUpdated.Text = product.Updated
        End If
    End Sub
    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            Try
                Dim product As New Product
                product.Id = CInt(Request.QueryString("id"))
                product.Name = txtName.Text
                product.ProductType = ddlProductType.SelectedValue
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
                If product.update(CN.ConnectionString) Then
                    ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu Sản phẩm thành công !!!');", True)
                Else
                    ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu Sản phẩm không thành công !!!');", True)
                End If
            Catch ex As Exception
                ProductServices.writeLog(Session("accountname"), "Update Product fail: " + ex.Message, CN.ConnectionString)
            End Try

        End If
    End Sub
End Class