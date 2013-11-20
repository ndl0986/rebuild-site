Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_photocomments
    Inherits System.Web.UI.UserControl
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objAlbumComments.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

End Class