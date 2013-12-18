Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class FilePhotos
    Inherits System.Web.UI.Page
    Dim myListPhoto As New List(Of SonyAlphaLibs.Photo)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim user As New User
            user = UserServices.getByUserName(Session("accountid"), CN.ConnectionString)
            If Not user.isAdmin(CN.ConnectionString) Then
                Response.Redirect("/")
            End If
        End If
        InitDatabase()
        myListPhoto = SonyAlphaLibs.Services.PhotoServices.getListAll(CN.ConnectionString)
        grvPhotos.DataSource = myListPhoto
        grvPhotos.DataBind()

    End Sub

    Private Sub grvPhotos_PageIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvPhotos.PageIndexChanged

    End Sub

    Private Sub grvPhotos_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles grvPhotos.PageIndexChanging
        grvPhotos.PageIndex = e.NewPageIndex
        grvPhotos.DataSource = myListPhoto
        grvPhotos.DataBind()
    End Sub
End Class