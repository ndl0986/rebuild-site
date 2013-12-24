Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_photocomments
    Inherits System.Web.UI.UserControl
    Dim myComment As New AlbumComment
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objAlbumComments.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim myAlbums As New Album
            ddlAlbums.DataSource = myAlbums.getListNormal(CN.ConnectionString)
            ddlAlbums.DataTextField = "Fullname"
            ddlAlbums.DataValueField = "Id"
            ddlAlbums.DataBind()

            Dim item As New ListItem
            item.Value = 0
            item.Text = "--- Tất cả ---"
            ddlAlbums.Items.Insert(0, item)
        End If
    End Sub

    Private Sub grvAlbumComments_PageIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvAlbumComments.PageIndexChanged
        If CInt(ddlAlbums.SelectedValue) <> 0 Then
            objAlbumComments.SelectMethod = "getListCommentByAlbum"
            objAlbumComments.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
            If objAlbumComments.SelectParameters.Count = 1 Then
                objAlbumComments.SelectParameters.Add("albumId", ddlAlbums.SelectedValue)
            Else
                objAlbumComments.SelectParameters.Item("albumId").DefaultValue = ddlAlbums.SelectedValue
            End If
        Else
            If objAlbumComments.SelectParameters.Count = 2 Then
                objAlbumComments.SelectParameters.RemoveAt(1)
            End If
            objAlbumComments.SelectMethod = "getListAll"
            objAlbumComments.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
        End If
        grvAlbumComments.PageSize = ddlPageSize.SelectedValue
        grvAlbumComments.DataSourceID = ""
        grvAlbumComments.DataSourceID = "objAlbumComments"
        grvAlbumComments.DataBind()
    End Sub

    Private Sub grvAlbumComments_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grvAlbumComments.RowCommand
        Try
            If e.CommandName = "DeleteRow" Then
                myComment.Id = CInt(e.CommandArgument)
                myComment = myComment.getById(CN.ConnectionString)
                myComment.removeById(CN.ConnectionString)

                If CInt(ddlAlbums.SelectedValue) <> 0 Then
                    objAlbumComments.SelectMethod = "getListCommentByAlbum"
                    objAlbumComments.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
                    If objAlbumComments.SelectParameters.Count = 1 Then
                        objAlbumComments.SelectParameters.Add("albumId", ddlAlbums.SelectedValue)
                    Else
                        objAlbumComments.SelectParameters.Item("albumId").DefaultValue = ddlAlbums.SelectedValue
                    End If
                Else
                    If objAlbumComments.SelectParameters.Count = 2 Then
                        objAlbumComments.SelectParameters.RemoveAt(1)
                    End If
                    objAlbumComments.SelectMethod = "getListAll"
                    objAlbumComments.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
                End If
                grvAlbumComments.PageSize = ddlPageSize.SelectedValue
                grvAlbumComments.DataSourceID = ""
                grvAlbumComments.DataSourceID = "objAlbumComments"
                grvAlbumComments.DataBind()
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ddlAlbums_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlAlbums.SelectedIndexChanged
        If CInt(ddlAlbums.SelectedValue) <> 0 Then
            objAlbumComments.SelectMethod = "getListCommentByAlbum"
            objAlbumComments.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
            If objAlbumComments.SelectParameters.Count = 1 Then
                objAlbumComments.SelectParameters.Add("albumId", ddlAlbums.SelectedValue)
            Else
                objAlbumComments.SelectParameters.Item("albumId").DefaultValue = ddlAlbums.SelectedValue
            End If
        Else
            If objAlbumComments.SelectParameters.Count = 2 Then
                objAlbumComments.SelectParameters.RemoveAt(1)
            End If
            objAlbumComments.SelectMethod = "getListAll"
            objAlbumComments.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
        End If
        grvAlbumComments.PageSize = ddlPageSize.SelectedValue
        grvAlbumComments.DataSourceID = ""
        grvAlbumComments.DataSourceID = "objAlbumComments"
        grvAlbumComments.DataBind()
    End Sub

    Private Sub ddlPageSize_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlPageSize.SelectedIndexChanged
        If CInt(ddlAlbums.SelectedValue) <> 0 Then
            objAlbumComments.SelectMethod = "getListCommentByAlbum"
            objAlbumComments.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
            If objAlbumComments.SelectParameters.Count = 1 Then
                objAlbumComments.SelectParameters.Add("albumId", ddlAlbums.SelectedValue)
            Else
                objAlbumComments.SelectParameters.Item("albumId").DefaultValue = ddlAlbums.SelectedValue
            End If
        Else
            If objAlbumComments.SelectParameters.Count = 2 Then
                objAlbumComments.SelectParameters.RemoveAt(1)
            End If
            objAlbumComments.SelectMethod = "getListAll"
            objAlbumComments.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
        End If
        grvAlbumComments.PageSize = ddlPageSize.SelectedValue
        grvAlbumComments.DataSourceID = ""
        grvAlbumComments.DataSourceID = "objAlbumComments"
        grvAlbumComments.DataBind()
    End Sub

    Private Sub grvAlbumComments_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles grvAlbumComments.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim img As New Image
            Dim myPhoto As New Photo
            img = e.Row.FindControl("photoImage")
            myPhoto.Id = CInt(e.Row.Cells(3).Text)
            img.ImageUrl = myPhoto.getById(CN.ConnectionString).FileName
        End If
    End Sub
End Class