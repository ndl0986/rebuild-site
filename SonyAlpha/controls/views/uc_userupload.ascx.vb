Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_userupload
    Inherits System.Web.UI.UserControl
    Public user As New User
    Public username As String
    Public message As String = ""
    Public listAlbums As New List(Of Album)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        username = Session("accountid")
        If Not Page.IsPostBack Then
            If Not String.IsNullOrEmpty(username) Then
                user = UserServices.getByUserName(username, CN.ConnectionString)
                listAlbums = AlbumServices.getListAllNormalAlbum(CN.ConnectionString)

            Else
                message = "Bạn chưa đăng nhập hoặc không thể tìm được thông tin của bạn trong hệ thống!!"
            End If
        End If
    End Sub

End Class