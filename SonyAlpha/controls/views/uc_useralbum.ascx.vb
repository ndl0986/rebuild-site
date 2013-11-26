﻿Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_useralbum
    Inherits System.Web.UI.UserControl
    Public user As New User
    Public username As String
    Public message As String = ""
    Public listPhotos As New List(Of Photo)
    Public albumId As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        username = Session("accountid")
        albumId = CInt(Request.QueryString("albumid"))
        If Not Page.IsPostBack Then
            If Not String.IsNullOrEmpty(username) Then
                user = UserServices.getByUserName(username, CN.ConnectionString)
                listPhotos = PhotoServices.getListPhotoOfUser(username, albumId, CN.ConnectionString)
            Else
                message = "Bạn chưa đăng nhập hoặc không thể tìm được thông tin của bạn trong hệ thống!!"
            End If
        End If
    End Sub

End Class