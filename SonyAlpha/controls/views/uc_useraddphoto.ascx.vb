Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Imports System.IO
Imports LevDan.Exif
Public Class uc_useraddphoto
    Inherits System.Web.UI.UserControl
    Dim username As String
    Dim fullname As String
    Dim user As New User
    Public message As String = ""
    Dim listAlbums As New List(Of Album)
    Dim strPath As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        username = Session("accountid")
        strPath = Context.Server.MapPath("~/upload/image/album/Temp/")
        If Not Page.IsPostBack Then
            If Not String.IsNullOrEmpty(username) Then
                user = UserServices.getByUserName(username, CN.ConnectionString)
                Dim blankAlbum As New Album
                blankAlbum.Id = 0
                blankAlbum.FullName = "Chọn album"
                listAlbums.Add(blankAlbum)
                listAlbums.AddRange(AlbumServices.getListAllNormalAlbum(CN.ConnectionString))
                If listAlbums.Count > 0 Then
                    ddlAlbums.DataSource = listAlbums
                    ddlAlbums.DataTextField = "FullName"
                    ddlAlbums.DataValueField = "Id"
                    ddlAlbums.DataBind()
                End If
            Else
                message = "Bạn chưa đăng nhập hoặc không thể tìm được thông tin của bạn trong hệ thống!!"
            End If
        End If
    End Sub


    Private Sub AjaxFileUpload1_UploadComplete(ByVal sender As Object, ByVal e As AjaxControlToolkit.AjaxFileUploadEventArgs) Handles AjaxFileUpload1.UploadComplete
        Dim filename As String = e.FileName
        If Not Directory.Exists(strPath) Then
            Directory.CreateDirectory(strPath)
        End If

        AjaxFileUpload1.SaveAs((strPath & "\") + filename)
        e.PostedUrl = GetURL(strPath)
        Session("Fileuploaded") = Session("Fileuploaded") & "," & filename
    End Sub

    Private Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim album As String = ddlAlbums.SelectedValue
        Dim strTarget As String = Context.Server.MapPath("~/upload/image/album/" & album & "/")
        Dim listFiles As List(Of String)
        listFiles = Session("Fileuploaded").ToString().Split(",").ToList()

        Dim listPhotos As New List(Of SonyAlphaLibs.Photo)
        For Each item In listFiles
            If item <> "" Then
                My.Computer.FileSystem.MoveFile(strPath & "\" & item, strTarget & item)
                Dim _exif As New ExifTagCollection(strTarget & "\" + item.ToString())
                Dim str As String = ""
                Dim photo As New SonyAlphaLibs.Photo
                photo.FileName = GetURL(strTarget & item)
                photo.Title = photo.FileName
                photo.UserUpload = Session("accountid")
                For Each info In _exif
                    Select Case info.FieldName
                        Case "Make"
                            photo.CameraName = info.Value
                        Case "Model"
                            photo.CameraModel = info.Value
                        Case "ExposureTime"
                            photo.ExposureTime = info.Value
                        Case "MaxApertureValue "
                            photo.MaxAperture = info.Value
                        Case "FocalLength"
                            photo.FocalLengh = info.Value
                        Case "FlashEnergy"
                            photo.FlashEnergy = info.Value
                        Case "Flash"
                            photo.FlashMode = info.Value
                        Case "FNumber"
                            photo.FStop = info.Value
                        Case "MeteringMode"
                            photo.MateringMode = info.Value
                        Case "ISOSpeedRatings"
                            photo.ISO = info.Value
                        Case "ExposureBiasValue"
                            photo.ExposureBlas = info.Value
                        Case "SubjectDistance"
                            photo.SubjectDistance = info.Value
                    End Select
                Next
                photo.add(CN.ConnectionString)
                photo.Id = PhotoServices.getCurrentMaxId("sony_photo", CN.ConnectionString)
                listPhotos.Add(photo)
            End If
        Next
        AlbumServices.setPhoto2Album(album, listPhotos, CN.ConnectionString)
        Session("Fileuploaded") = ""

        Response.Redirect("/useralbum/" & album & ".aspx")
    End Sub
End Class