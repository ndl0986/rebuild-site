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


        Dim myBanner As New Banner
        myBanner.Name = "Banner8"
        myBanner.BannerType = 0
        myBanner.Visible = True
        myBanner.ListPhotos = New List(Of BannerPhoto)

        
        'Dim connString As String
        'connString = ConfigurationManager.ConnectionStrings("ApplicationServices").ConnectionString


        'If Not String.IsNullOrEmpty(connString) Then
        '    txtTest.Text = connString.ToString
        '    ' test add user
        '    'txtTest.Text = myUser.add(connString.ToString)
        '    ' test login
        '    'txtTest.Text = myUser.login(connString.ToString)
        '    ' test update user
        '    'txtTest.Text = myUser.update(connString.ToString)
        '    If myBanner.add(connString) Then
        '        Dim id As Integer = myBanner.getCurrentMaxId(connString)
        '        myBanner.Id = id
        '        For i As Integer = 0 To 3 Step 1
        '            Dim bannerPhoto As New BannerPhoto
        '            bannerPhoto.BannerId = id
        '            bannerPhoto.ImageUrl = "ImageUrl_" + i.ToString()
        '            bannerPhoto.Link2 = "LinkTo_" + i.ToString()
        '            myBanner.ListPhotos.Add(bannerPhoto)
        '        Next
        '        myBanner.setPhoto2Banner(connString)
        '        txtTest.Text = id.ToString()
        '    End If

        'End If

    End Sub

End Class