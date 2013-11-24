Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_album
    Inherits System.Web.UI.UserControl
    Public bllAlbums As New List(Of SonyAlphaLibs.Album)
    Public intMenu As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            bllAlbums = SonyAlphaLibs.Services.AlbumServices.getListAllNormalAlbum(CN.ConnectionString)
            intMenu = Request.QueryString("mId")
        Catch ex As Exception
            Response.Redirect("Error.aspx")
        End Try
    End Sub

End Class