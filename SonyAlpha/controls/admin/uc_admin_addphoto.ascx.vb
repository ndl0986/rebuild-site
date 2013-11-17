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
                myPhoto.add(CN.ConnectionString)
                myPhoto.Id = SonyAlphaLibs.Services.PhotoServices.getCurrentMaxId("sony_photo", CN.ConnectionString)

                Dim result As Boolean

                result = myAlbum.setPhoto2Album(myPhoto, CN.ConnectionString)

            Catch ex As Exception

            End Try
        End If
    End Sub
End Class