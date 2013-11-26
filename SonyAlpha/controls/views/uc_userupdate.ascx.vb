Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_userupdate
    Inherits System.Web.UI.UserControl
    Public randomCode As String
    Public user As New User
    Public username As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        randomCode = GenerateRandomString(7, False)
        username = Session("accountid")
        If Not String.IsNullOrEmpty(username) Then
            user = UserServices.getByUserName(username, CN.ConnectionString)
        Else

        End If
    End Sub

End Class