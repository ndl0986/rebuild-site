Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_albumdetail
    Inherits System.Web.UI.UserControl
    Public bllPhoto As IList(Of SonyAlphaLibs.Photo)
    Public intMenu As String
    Public catId As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Dim id As String
            id = Request.QueryString("id")
            catId = id
            intMenu = Request.QueryString("mId")

            Dim tblAlbum As New SonyAlphaLibs.Album
            tblAlbum.Id = CInt(id)
            tblAlbum = tblAlbum.getById(CN.ConnectionString)
            uc_albumInfo.Value = tblAlbum.FullName
            bllPhoto = tblAlbum.ListPhotos
        Catch ex As Exception

        End Try
    End Sub

End Class