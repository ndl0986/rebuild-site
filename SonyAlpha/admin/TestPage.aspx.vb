Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Imports System.Configuration

Public Class TestPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim myUser As New User
        myUser.UserName = "luannd3"
        myUser.FullName = "Nguyen Dinh Luan 1"
        myUser.PassWord = "123456"
        myUser.Status = True
        myUser.Registered = DateTime.Now
        myUser.Updated = DateTime.Now

        Dim connString As String
        connString = ConfigurationManager.ConnectionStrings("ApplicationServices").ConnectionString


        If Not String.IsNullOrEmpty(connString) Then
            txtTest.Text = connString.ToString
            ' test add user
            'txtTest.Text = myUser.add(connString.ToString)
            ' test login
            'txtTest.Text = myUser.login(connString.ToString)
            ' test update user
            txtTest.Text = myUser.update(connString.ToString)
        End If

    End Sub

End Class