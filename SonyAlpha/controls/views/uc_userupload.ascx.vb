Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_userupload
    Inherits System.Web.UI.UserControl
    Public user As New User
    Public username As String
    Public message As String = ""
    Public listAlbums As New List(Of Album)
    Public listPhotoOfUser As New List(Of Photo)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        username = Session("accountid")
        If Not Page.IsPostBack Then
            If Not String.IsNullOrEmpty(username) Then
                user = UserServices.getByUserName(username, CN.ConnectionString)
                listAlbums = AlbumServices.getListAllNormalAlbum(CN.ConnectionString)
                listPhotoOfUser = PhotoServices.getListPhotoOfUser(username, CN.ConnectionString)
                For Each myAlbum As Album In listAlbums
                    Dim listPhotos As String = myAlbum.AlbumImage
                    Dim totalPhoto As Integer = 0
                    If Not String.IsNullOrEmpty(listPhotos) Then
                        Dim isUpdateCover As Boolean = False
                        For Each myPhoto As Photo In listPhotoOfUser
                            If listPhotos.Contains(myPhoto.Id.ToString().Trim()) Then
                                totalPhoto += 1
                                If Not isUpdateCover Then
                                    myAlbum.AlbumCover = myPhoto.FileName
                                    isUpdateCover = True
                                End If
                            End If
                        Next
                    End If
                    myAlbum.TotalPhoto = totalPhoto
                Next
            Else
                message = "Bạn chưa đăng nhập hoặc không thể tìm được thông tin của bạn trong hệ thống!!"
            End If
        End If
    End Sub

End Class