Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Imports System.IO
Imports System.Configuration
Public Class uc_admin_addphoto
    Inherits System.Web.UI.UserControl
    Dim myAlbum As New SonyAlphaLibs.Album
    Dim myPhoto As New SonyAlphaLibs.Photo
    Dim bolUpdate As Boolean
    Dim UploadFolderPath As String = ""
    Sub LoadPhoto(ByVal id As String)
        myPhoto.Id = CInt(id)
        myPhoto = myPhoto.getById(CN.ConnectionString)
        txtFileName.Text = myPhoto.FileName
        txtName.Text = myPhoto.Title
        txtCamera.Text = myPhoto.CameraName
        txtCameraModel.Text = myPhoto.CameraModel
        txtDes.Text = myPhoto.Description
        txtExposureBlas.Text = myPhoto.ExposureBlas
        txtExposureTime.Text = myPhoto.ExposureTime
        txtFlashEnergy.Text = myPhoto.FlashEnergy
        txtFlashMode.Text = myPhoto.FlashMode
        txtFocalLengh.Text = myPhoto.FocalLengh
        txtFstop.Text = myPhoto.FStop
        txtMateringMode.Text = myPhoto.MateringMode
        txtMaxAperture.Text = myPhoto.MaxAperture
        txtISO.Text = myPhoto.ISO
        txtSubjectDistance.Text = myPhoto.SubjectDistance
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

        myAlbum.Id = CInt(Request.QueryString("aid"))
        myAlbum = myAlbum.getById(CN.ConnectionString)
        txtAlbum.Text = myAlbum.FullName

        If bolUpdate Then
            LoadPhoto(id)
        Else
            Try
                Dim filePath As String
                Dim NewsPath As String = Server.MapPath("~/upload/image/album/")
                filePath = Request.QueryString("aid")
                Dim oFolder As DirectoryInfo
                If filePath <> "" Then
                    oFolder = Directory.CreateDirectory(NewsPath & "\" & filePath)
                End If
                UploadFolderPath = GetURL(Server.MapPath("~/upload/image/album/" & Request.QueryString("aid") & "/"))
                urlPath.Value = UploadFolderPath
            Catch ex As Exception

            End Try
        End If
    End Sub

    Private Sub fileUpload_UploadedComplete(ByVal sender As Object, ByVal e As AjaxControlToolkit.AsyncFileUploadEventArgs) Handles fileUpload.UploadedComplete
        Dim filePath As String
        filePath = Server.MapPath("~/upload/image/album/" & Request.QueryString("aid") & "/")
        fileUpload.SaveAs(filePath + e.FileName)
    End Sub

    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick

        If Page.IsPostBack Then
            Try
                myPhoto.FileName = txtFileName.Text
                myPhoto.Title = txtName.Text
                myPhoto.CameraName = txtCamera.Text
                myPhoto.CameraModel = txtCameraModel.Text
                myPhoto.Description = txtDes.Text
                myPhoto.ExposureBlas = txtExposureBlas.Text
                myPhoto.ExposureTime = txtExposureTime.Text
                myPhoto.FlashEnergy = txtFlashEnergy.Text
                myPhoto.FlashMode = txtFlashMode.Text
                myPhoto.FocalLengh = txtFocalLengh.Text
                myPhoto.FStop = txtFstop.Text
                myPhoto.MateringMode = txtMateringMode.Text
                myPhoto.MaxAperture = txtMaxAperture.Text
                myPhoto.ISO = txtISO.Text
                myPhoto.SubjectDistance = txtSubjectDistance.Text

                Dim result As Boolean
                If bolUpdate = False Then
                    myPhoto.add(CN.ConnectionString)
                    myPhoto.Id = SonyAlphaLibs.Services.PhotoServices.getCurrentMaxId("sony_photo", CN.ConnectionString)

                    result = myAlbum.setPhoto2Album(myPhoto, CN.ConnectionString)
                Else
                    result = myPhoto.update(CN.ConnectionString)
                End If
                Response.Redirect("?tpl=editalbum&id=" & myAlbum.Id.ToString)
            Catch ex As Exception

            End Try
        End If
    End Sub
End Class