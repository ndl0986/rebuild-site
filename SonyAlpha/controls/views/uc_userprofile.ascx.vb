﻿Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_userprofile
    Inherits System.Web.UI.UserControl
    Public username As String
    Public fullname As String
    Public user As New User
    Public message As String = ""
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        username = Session("accountid")
        If Not Page.IsPostBack Then
            If Not String.IsNullOrEmpty(username) Then
                user = UserServices.getByUserName(username, CN.ConnectionString)
                If Not user.Id = 0 Then
                    fullname = user.FullName
                End If
            Else
                message = "Bạn chưa đăng nhập hoặc không thể tìm được thông tin của bạn trong hệ thống!!"
            End If
        End If
    End Sub

End Class