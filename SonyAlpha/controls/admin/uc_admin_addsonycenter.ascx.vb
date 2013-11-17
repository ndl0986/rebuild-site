Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_addsonycenter
    Inherits System.Web.UI.UserControl
    Public bolUpdate As Boolean
    Dim filePath As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        filePath = Server.MapPath("~/upload/image/sonycenter/")
        If Not Page.IsPostBack Then
            Dim id As String
            id = Request.QueryString("id")
            If id = "" Then
                'thêm 
                bolUpdate = False
            Else
                bolUpdate = True
            End If

            If Not bolUpdate Then
                ' add
                ddlProvince.DataSource = ProvinceServices.getListAllProvince(CN.ConnectionString)
                ddlProvince.DataTextField = "SProvince"
                ddlProvince.DataValueField = "Id"
                ddlProvince.DataBind()

            Else
                LoadCenterToForm(id)
            End If
        End If

    End Sub
    Private Sub fileUpload_UploadedComplete(ByVal sender As Object, ByVal e As AjaxControlToolkit.AsyncFileUploadEventArgs) Handles fileUpload.UploadedComplete
        fileUpload.SaveAs(filePath + e.FileName)
    End Sub

    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            Dim id As String
            id = Request.QueryString("id")
            If id = "" Then
                'thêm 
                bolUpdate = False
            Else
                bolUpdate = True
            End If
            Try
                Dim sonyCenter As New SonyCenter
                sonyCenter.Name = txtName.Text
                sonyCenter.Address = txtAddress.Text
                sonyCenter.Phone = txtPhone.Text
                sonyCenter.Fax = txtFax.Text
                sonyCenter.Province = ddlProvince.SelectedValue
                sonyCenter.Description = txtDescription.Text
                sonyCenter.RetailLevel = ddlRetailLevel.SelectedValue
                If Not String.IsNullOrEmpty(txtcenterImage.Text) Then
                    sonyCenter.CenterImage = filePath + txtcenterImage.Text
                Else
                    sonyCenter.CenterImage = ""
                End If

                sonyCenter.OpenTime = txtOpenTime.Text
                sonyCenter.CloseTime = txtCloseTime.Text
                sonyCenter.Longitude = txtLongitude.Text
                sonyCenter.Latitude = txtLatitude.Text
                If Not bolUpdate Then
                    If sonyCenter.add(CN.ConnectionString) Then
                        Dim newId As Integer = SonyCenterServices.getCurrentMaxId("sony_center", CN.ConnectionString)
                        Response.Redirect("?tpl=addsonycenter&id=" & CStr(newId))
                    End If
                Else
                    sonyCenter.Id = id
                    If sonyCenter.update(CN.ConnectionString) Then
                        'Response.Redirect("?tpl=addsonycenter&id=" & CStr(sonyCenter.Id))
                        Response.Redirect("?tpl=sonycenters")
                    End If
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
            txtDescription.Text = sonyCenter.Description
            ddlRetailLevel.SelectedValue = sonyCenter.RetailLevel
            txtcenterImage.Text = sonyCenter.CenterImage
            txtOpenTime.Text = sonyCenter.OpenTime
            txtCloseTime.Text = sonyCenter.CloseTime
            txtLongitude.Text = sonyCenter.Longitude
            txtLatitude.Text = sonyCenter.Latitude
        End If
    End Sub

End Class