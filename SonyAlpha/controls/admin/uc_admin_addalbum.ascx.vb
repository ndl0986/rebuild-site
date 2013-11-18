Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_addalbum
    Inherits System.Web.UI.UserControl
    Dim myAlbum As New SonyAlphaLibs.Album

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            myAlbum.FullName = txtName.Text.Trim
            myAlbum.AlbumCreator = Session("accountname")
            myAlbum.AlbumImage = ""
            myAlbum.ViewCount = 0
            myAlbum.IsForCenter = chkIsForCenter.Checked
            Dim result
            result = myAlbum.add(CN.ConnectionString)
            'ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu album thành công !!!');", True)
            If result = True Then
                'ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu album thành công !!!');", True)
                Response.Redirect("?tpl=addphotos&aid=" & myAlbum.getCurrentMaxId(CN.ConnectionString).ToString)
            Else
                'ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('lưu album không thành công !!!');", False)
            End If
        End If
    End Sub
End Class