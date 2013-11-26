Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_useraddphoto
    Inherits System.Web.UI.UserControl
    Public username As String
    Public fullname As String
    Public user As New User
    Public message As String = ""
    Public listAlbums As New List(Of Album)

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

End Class