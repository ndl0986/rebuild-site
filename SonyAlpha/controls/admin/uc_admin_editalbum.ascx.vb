Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_editalbum
    Inherits System.Web.UI.UserControl
    Dim myAlbum As New SonyAlphaLibs.Album
    Dim myPhoto As New SonyAlphaLibs.Photo
    Dim myListPhoto As List(Of SonyAlphaLibs.Photo)
    Dim bolUpdate As Boolean
    Sub LoadAlbum(ByVal id As String)
        myAlbum.Id = CInt(id)
        myAlbum = myAlbum.getById(CN.ConnectionString)
        txtName.Text = myAlbum.FullName
        myListPhoto = myAlbum.getPhotoOfAlbum(CN.ConnectionString)
        ddlAlbumType.SelectedValue = myAlbum.AlbumType
        txtPhotoURL.Value = myAlbum.AlbumCover
        grvPhotos.DataSource = myListPhoto
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

    Private Sub grvPhotos_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grvPhotos.RowCommand
        Try
            If e.CommandName = "DeleteRow" Then
                Dim item As New SonyAlphaLibs.Photo
                item.Id = CInt(e.CommandArgument)
                item = item.getById(CN.ConnectionString)
                For Each iPhoto In myListPhoto
                    If iPhoto.Id = item.Id Then
                        myListPhoto.Remove(iPhoto)
                        Exit For
                    End If
                Next
                myAlbum.setPhoto2Album(myListPhoto, CN.ConnectionString)
                grvPhotos.DataSource = myListPhoto
                grvPhotos.DataBind()
            End If
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub grvPhotos_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles grvPhotos.SelectedIndexChanged
        Dim strURL As String
        strURL = "?tpl=addphotos&aid=" & Request.QueryString("id") & "&id=" & grvPhotos.Rows(grvPhotos.SelectedIndex).Cells(0).Text
        Response.Redirect(strURL)
    End Sub

    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            myAlbum.FullName = txtName.Text
            myAlbum.AlbumType = ddlAlbumType.SelectedValue
            myAlbum.AlbumCover = txtPhotoURL.Value
            If myAlbum.update(CN.ConnectionString) Then
                ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu Album thành công !!!');", True)
            Else
                ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu Album không thành công !!!');", True)
            End If
        End If
    End Sub
End Class