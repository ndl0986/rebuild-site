Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_sellerdetail
    Inherits System.Web.UI.UserControl
    Public tblDetail As New SonyAlphaLibs.SonyCenter
    Public tblAlbum As New SonyAlphaLibs.Album
    Public tblImages As New List(Of SonyAlphaLibs.Photo)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Dim id As Integer
            id = CInt(Request.QueryString("id"))
            tblDetail = SonyAlphaLibs.Services.SonyCenterServices.getCenterById(id, CN.ConnectionString)
            tblAlbum = SonyAlphaLibs.Services.AlbumServices.getById(tblDetail.CenterImage, CN.ConnectionString)
            tblImages = tblAlbum.ListPhotos

        Catch ex As Exception

        End Try
    End Sub

End Class