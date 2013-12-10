Imports SonyAlpha
Imports SonyAlphaLibs.Services
Public Class uc_search_user
    Inherits System.Web.UI.UserControl
    Public keywords As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        keywords = Request.QueryString("key")
        Dim tblUser As New List(Of SonyAlphaLibs.UserSearch)
        tblUser = SonyAlphaLibs.Services.UserServices.getListUserByUserName(keywords, CN.ConnectionString)
        grvUsers.DataSource = tblUser
        grvUsers.DataBind()
    End Sub

End Class