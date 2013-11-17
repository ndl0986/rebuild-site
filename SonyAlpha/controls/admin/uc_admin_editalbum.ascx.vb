Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_editalbum
    Inherits System.Web.UI.UserControl
    Dim myAlbum As New SonyAlphaLibs.Album
    Dim bolUpdate As Boolean
    Sub LoadAlbum(ByVal id As String)

        myAlbum.Id = CInt(id)
        myAlbum = myAlbum.getById(CN.ConnectionString)
        txtName.Text = myAlbum.FullName

        grvPhotos.DataSource = myAlbum.getPhotoOfAlbum(CN.ConnectionString)
        grvPhotos.DataBind()
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

        If bolUpdate Then
            LoadAlbum(id)
        End If
    End Sub

    Protected Sub grvPhotos_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles grvPhotos.SelectedIndexChanged

    End Sub
End Class