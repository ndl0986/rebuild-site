Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_photo
    Inherits System.Web.UI.UserControl
    Public bllDetail As New SonyAlphaLibs.Photo
    Dim bllAlbum As New SonyAlphaLibs.Album
    Public voted As Boolean = False
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            bllAlbum.Id = CInt(Request.QueryString("cId"))
            bllAlbum.increaseView(CN.ConnectionString)
            bllAlbum = bllAlbum.getById(CN.ConnectionString)
            bllDetail.Id = CInt(Request.QueryString("id"))
            bllDetail.increaseViewCount(CN.ConnectionString)
            bllDetail = bllDetail.getById(CN.ConnectionString)
            hplUploader.Text = bllAlbum.AlbumCreator
            hplUploader.NavigateUrl = "~/"

            Dim lstPhotos As New List(Of SonyAlphaLibs.Photo)
            lstPhotos = bllAlbum.ListPhotos
            If lstPhotos.Count > 1 Then
                Dim i As Integer
                Dim prevPhoto As New SonyAlphaLibs.Photo
                Dim nextPhoto As New SonyAlphaLibs.Photo
                For i = 0 To lstPhotos.Count - 1
                    If lstPhotos(i).Id = bllDetail.Id Then
                        If i > 0 Then
                            prevPhoto = lstPhotos(i - 1)
                        End If
                        If i < lstPhotos.Count - 1 Then
                            nextPhoto = lstPhotos(i + 1)
                        End If
                    End If
                Next
                If prevPhoto.Id <> 0 Then
                    hplPrev.NavigateUrl = "/photo/" & prevPhoto.Id & "?cId=" & bllAlbum.Id & "&mId=" & Request.QueryString("mId")
                Else
                    hplPrev.CssClass = "hidden"
                End If
                If nextPhoto.Id <> 0 Then
                    hplNext.NavigateUrl = "/photo/" & nextPhoto.Id & "?cId=" & bllAlbum.Id & "&mId=" & Request.QueryString("mId")
                Else
                    hplNext.CssClass = "hidden"
                End If
            Else
                hplPrev.CssClass = "hidden"
                hplNext.CssClass = "hidden"
            End If

            hdfAlbumId.Value = bllAlbum.Id

            Dim username As String = Session("accountid")
            voted = PhotoServices.checkIfVoted(bllDetail.Id, username, CN.ConnectionString)
        Catch ex As Exception

        End Try
    End Sub

End Class