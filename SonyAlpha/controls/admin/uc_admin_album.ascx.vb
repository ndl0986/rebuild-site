Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_album
    Inherits System.Web.UI.UserControl
    Dim myAlbum As New SonyAlphaLibs.Album
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objAlbums.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub

    Private Sub grvAlbums_PageIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvAlbums.PageIndexChanged
        grvAlbums.PageSize = ddlPageSize.SelectedValue
        Select Case ddlAlbumType.SelectedValue
            Case 0
                objAlbums.SelectMethod = "getListNormal"
            Case 1
                objAlbums.SelectMethod = "getListTypeCenter"
            Case 2
                objAlbums.SelectMethod = "getListTypeProduct"
            Case Else
                objAlbums.SelectMethod = "getListAll"
        End Select
        objAlbums.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
        grvAlbums.DataSourceID = ""
        grvAlbums.DataSourceID = "objAlbums"
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

    Private Sub grvAlbums_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvAlbums.SelectedIndexChanged
        Dim strURL As String
        strURL = "?tpl=editalbum&id=" & grvAlbums.Rows(grvAlbums.SelectedIndex).Cells(0).Text
        Response.Redirect(strURL)
    End Sub

    Private Sub ddlPageSize_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlPageSize.SelectedIndexChanged
        grvAlbums.PageSize = ddlPageSize.SelectedValue
        Select Case ddlAlbumType.SelectedValue
            Case 0
                objAlbums.SelectMethod = "getListNormal"
            Case 1
                objAlbums.SelectMethod = "getListTypeCenter"
            Case 2
                objAlbums.SelectMethod = "getListTypeProduct"
            Case Else
                objAlbums.SelectMethod = "getListAll"
        End Select
        objAlbums.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
        grvAlbums.DataSourceID = ""
        grvAlbums.DataSourceID = "objAlbums"
    End Sub

    Private Sub ddlAlbumType_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlAlbumType.SelectedIndexChanged
        grvAlbums.PageSize = ddlPageSize.SelectedValue
        Select Case ddlAlbumType.SelectedValue
            Case 0
                objAlbums.SelectMethod = "getListNormal"
            Case 1
                objAlbums.SelectMethod = "getListTypeCenter"
            Case 2
                objAlbums.SelectMethod = "getListTypeProduct"
            Case Else
                objAlbums.SelectMethod = "getListAll"
        End Select
        objAlbums.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
        grvAlbums.DataSourceID = ""
        grvAlbums.DataSourceID = "objAlbums"
        grvAlbums.DataBind()

    End Sub
End Class