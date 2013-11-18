Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_addsonycenter
    Inherits System.Web.UI.UserControl
    Public bolUpdate As Boolean
    Dim filePath As String
    Public listProvince As New List(Of Province)
    Public listAlbums As New List(Of Album)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.ClientScript.RegisterOnSubmitStatement(txtDescription.GetType(), "txtMessage", "FCKUpdateLinkedField('" + txtDescription.ClientID + "');")
        If Not Page.IsPostBack Then
            If listProvince.Count = 0 Then
                listProvince = ProvinceServices.getListAllProvince(CN.ConnectionString)
            End If
            If listAlbums.Count = 0 Then
                listAlbums = AlbumServices.getListAllAlbumForCenter(CN.ConnectionString)
            End If
            ddlProvince.DataSource = listProvince
            ddlProvince.DataTextField = "SProvince"
            ddlProvince.DataValueField = "Id"
            ddlProvince.DataBind()
            ddlAlbumList.DataSource = listAlbums
            ddlAlbumList.DataTextField = "FullName"
            ddlAlbumList.DataValueField = "Id"
            ddlAlbumList.DataBind()
        End If

    End Sub

    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            Try
                Dim sonyCenter As New SonyCenter
                sonyCenter.Name = txtName.Text
                sonyCenter.Address = txtAddress.Text
                sonyCenter.Phone = txtPhone.Text
                sonyCenter.Fax = txtFax.Text
                sonyCenter.Province = ddlProvince.SelectedValue
                sonyCenter.Description = txtDescription.Value
                sonyCenter.RetailLevel = ddlRetailLevel.SelectedValue
                sonyCenter.CenterImage = ddlAlbumList.SelectedValue
                sonyCenter.OpenTime = txtOpenTime.Text
                sonyCenter.CloseTime = txtCloseTime.Text
                sonyCenter.Longitude = txtLongitude.Text
                sonyCenter.Latitude = txtLatitude.Text
                If sonyCenter.add(CN.ConnectionString) Then
                    Dim newId As Integer = SonyCenterServices.getCurrentMaxId("sony_center", CN.ConnectionString)
                    Response.Redirect("?tpl=editsonycenter&id=" & CStr(newId))
                End If
            Catch ex As Exception
                SonyCenterServices.writeLog("", "Add/Update Sony Center fail: " + ex.Message, CN.ConnectionString)
            End Try
        End If
    End Sub

    Private Sub LoadCenterToForm(ByVal id)
        Dim sonyCenter As New SonyCenter
        sonyCenter.Id = id
        sonyCenter = sonyCenter.getById(CN.ConnectionString)
        If sonyCenter.Id <> 0 Then
            txtName.Text = sonyCenter.Name
            txtAddress.Text = sonyCenter.Address
            txtPhone.Text = sonyCenter.Phone
            txtFax.Text = sonyCenter.Fax
            ddlProvince.Text = sonyCenter.Province
            txtDescription.Value = sonyCenter.Description
            ddlRetailLevel.SelectedValue = sonyCenter.RetailLevel
            ddlAlbumList.SelectedValue = sonyCenter.CenterImage
            txtOpenTime.Text = sonyCenter.OpenTime
            txtCloseTime.Text = sonyCenter.CloseTime
            txtLongitude.Text = sonyCenter.Longitude
            txtLatitude.Text = sonyCenter.Latitude
        End If
    End Sub

End Class