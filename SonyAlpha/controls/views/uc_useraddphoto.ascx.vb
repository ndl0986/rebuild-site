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
    Dim listFiles As New List(Of String)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        username = Session("accountid")
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

        strPath = Context.Server.MapPath("~/upload/image/album/1/")
        Dim filename As String = e.FileName
        If Not Directory.Exists(strPath) Then
            Directory.CreateDirectory(strPath)
        End If

        AjaxFileUpload1.SaveAs((strPath & "\") + filename)
        e.PostedUrl = GetURL(strPath)
        listFiles.Add(filename)

        Dim _exif As New ExifTagCollection((strPath & "\") + filename)
        Dim str As String
        For Each info In _exif
            str = str & info.FieldName & ":" & info.Value & "<br/>"
        Next
        testExif.InnerHtml = str
    End Sub

    Private Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim album As String = ddlAlbums.SelectedValue
        Dim str As String = Context.Server.MapPath("~/upload/image/album/" & album & "/")

        For Each item In listFiles
            My.Computer.FileSystem.MoveFile(strPath & "\" & item.Trim, str & item)
        Next

    End Sub
End Class