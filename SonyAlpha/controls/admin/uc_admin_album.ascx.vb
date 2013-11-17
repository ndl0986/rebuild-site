Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_album
    Inherits System.Web.UI.UserControl
    Dim myAlbum As New SonyAlphaLibs.Album
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objAlbums.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub grvAlbums_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grvAlbums.RowCommand
        Try
            If e.CommandName = "DeleteRow" Then
                myAlbum.Id = CInt(e.CommandArgument)
                myAlbum = myAlbum.getById(CN.ConnectionString)
                myAlbum.removeById(CN.ConnectionString)

                grvAlbums.DataSourceID = ""
                grvAlbums.DataSourceID = "objAlbums"
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub grvAlbums_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles grvAlbums.RowDeleting
        Try
            grvAlbums.DataBind()
        Catch ex As Exception

        End Try
    End Sub

    Private Sub grvAlbums_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvAlbums.SelectedIndexChanged
        Dim strURL As String
        strURL = "?tpl=editalbum&id=" & grvAlbums.Rows(grvAlbums.SelectedIndex).Cells(0).Text
        Response.Redirect(strURL)
    End Sub
End Class