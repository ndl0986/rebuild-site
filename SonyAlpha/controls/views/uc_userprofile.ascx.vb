Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_userprofile
    Inherits System.Web.UI.UserControl
    Public username As String
    Public fullname As String
    Public user As New User
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            username = Session("accountid")

            user = UserServices.getByUserName(username, CN.ConnectionString)
            If Not user.Id = 0 Then
                fullname = user.FullName
            End If
        End If
    End Sub

End Class