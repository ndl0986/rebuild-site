﻿Imports Microsoft.VisualBasic.CompilerServices
Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Imports System.Web
Imports System.Web.Services
Imports System.Web.Script.Services
Imports System.Web.Script.Serialization
Public Class Service
    Inherits System.Web.UI.Page
    Dim name As String
    Dim act As String

    Class MyResponse
        Property status As String = ""
        Property message As String = ""
    End Class

    Sub GetMyResponse(ByVal status As String, ByVal message As String)
        Dim myResponse As New MyResponse
        myResponse.status = status
        myResponse.message = message
        Response.Write(New JavaScriptSerializer().Serialize(myResponse))
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' get params
        InitDatabase()
        name = Request.QueryString("name")
        If Request.RequestType = "POST" Then
            If Not String.IsNullOrEmpty(name) Then
                Select Case name
                    Case "register"
                        DoRegister()
                    Case "login"
                        DoLogin()
                    Case "loginmail"
                        DoLoginMail()
                    Case "sendmailfaq"
                        DoSendMailFaq()
                    Case "postcomment"
                        DoPostComment()
                    Case "deletecomment"
                        DoDeleteComment()
                    Case "updatecomment"
                        DoUpdateComment()
                    Case "userupdate"
                        DoUserUpdate()
                    Case "votephoto"
                        DoVotePhoto()
                    Case "forgotpass"
                        DoForgotPass()
                End Select
            Else
                GetMyResponse("500", "Nothing todo!")
            End If
        Else
            If Not String.IsNullOrEmpty(name) Then
                Select Case name
                    Case "testconnection"
                        GetTestConnection()
                    Case "getuserinfo"
                        GetUserInfo()
                    Case "getpage"
                        GetPage()
                    Case "getlastestnews"
                        GetLastestNews()
                    Case "getlistcomment"
                        GetListComment()
                    Case "getlistproductbycategoryid"
                        GetListProductByCategory()
                    Case "getproductbyid"
                        GetProductById()
                    Case "getuserbyusername"
                        GetUserByUserName()
                    Case "getproductcategorybyid"
                        GetProductCategoryById()
                    Case "activeuser"
                        DoActiveUser()
                    Case "getlistphotobyalbum"
                        GetListPhotoByAlbum()
                    Case "getCenterByProvince"
                        GetListSonyCenterByProvince()
                    Case "getOwnerOfPhoto"
                        GetOwnerOfPhoto()
                    Case "getIfVoted"
                        GetIfVoted()
                    Case "getlistphotos"
                        GetListPhotos()
                End Select
            Else
                GetMyResponse("500", "Nothing todo!")
            End If
        End If

    End Sub
    Private Sub GetProductCategoryById()
        Try
            Dim categoryId As Integer = CInt(Request.QueryString("categoryid"))
            Dim categoryP As New ProductCategory
            categoryP = ProductServices.getProductCategoryById(categoryId, CN.ConnectionString)
            GetMyResponse("200", New JavaScriptSerializer().Serialize(categoryP))
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub GetListPhotos()
        Try
            Dim photoIds As String = Request.QueryString("ids")
            Dim listPhotos As New List(Of Photo)
            listPhotos = PhotoServices.getListPhotos(photoIds, CN.ConnectionString)
            GetMyResponse("200", New JavaScriptSerializer().Serialize(listPhotos))
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub DoLogin()
        Try
            Dim username As String = Request.Params.Get("username")
            Dim password As String = Request.Params.Get("password")
            If Not String.IsNullOrEmpty(username) And Not String.IsNullOrEmpty(password) Then
                Dim user As New User
                user.UserName = username
                user.PassWord = base64Encode(password)
                If user.login(CN.ConnectionString) Then
                    user = user.getByUserName(CN.ConnectionString)
                    Session("accountid") = user.UserName
                    'Session("accountpass") = user.PassWord
                    Session("accountname") = user.FullName
                    Dim userGroup As New UserGroup
                    userGroup.Id = user.GroupId
                    userGroup = userGroup.getById(CN.ConnectionString)
                    Session("accountgroup") = userGroup.GroupName

                    If Request.Browser.Cookies = True Then
                        Dim c As HttpCookie = New HttpCookie("SonyAlpha")
                        If Request.Cookies("SonyAlpha") Is Nothing Then
                            c.Expires = DateAdd(DateInterval.Day, 30, Now())
                            c.Values("accountid") = Session("accountid")
                            'c.Values("accountpass") = Session("accountpass")
                            c.Values("accountgroup") = Session("accountgroup")
                            c.Values("accountname") = Session("accountname")
                            Response.Cookies.Add(c)
                        Else
                            c.Values("accountid") = Session("accountid")
                            'c.Values("accountpass") = Session("accountpass")
                            c.Values("accountgroup") = Session("accountgroup")
                            c.Values("accountname") = Session("accountname")
                        End If
                    End If

                    GetMyResponse("200", "ok")
                Else
                    GetMyResponse("400", "fail")
                End If
            Else
                GetMyResponse("500", "invalid user account!")
            End If
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try

    End Sub

    Private Sub GetUserInfo()
        Dim username As String = Request.QueryString("username")
        If Not String.IsNullOrEmpty(username) Then
            Dim user As New User
            user = UserServices.getByUserName(username, CN.ConnectionString)
            If Not user.Id = 0 Then
                GetMyResponse("200", New JavaScriptSerializer().Serialize(user))
            Else
                GetMyResponse("400", "fail")
            End If
        Else
            GetMyResponse("500", "invalid user account!")
        End If
    End Sub

    Private Sub DoRegister()
        Try
            Dim username As String = Request.Params.Get("username")
            Dim password As String = Request.Params.Get("password")
            Dim fullname As String = Request.Params.Get("fullname")
            Dim phone As String = Request.Params.Get("phone")
            Dim email As String = Request.Params.Get("email")
            Dim productused As String = Request.Params.Get("productused")
            Dim status As Boolean = False

            Dim user As New User
            user.UserName = username
            user.PassWord = base64Encode(password)
            user.FullName = fullname
            user.Status = status
            user.Phone = phone
            user.Email = email
            user.ProductUsed = productused

            Dim errCode As String = String.Empty
            ' return errCode = 900 - Khong xac dinh
            ' return errCode = 901 - Trung username
            ' return errCode = 902 - Trung email
            If user.add(CN.ConnectionString, errCode) Then
                Dim http As String = ConfigurationManager.AppSettings("URL")
                Dim activeUrl As String = http + GetParamsActive(username, email)
                Dim mailFrom As String = SettingServices.getByName("adminMailFrom", CN.ConnectionString)
                Dim mailFromPass As String = SettingServices.getByName("adminMailPass", CN.ConnectionString)
                Dim subject As String = "Active Userinfo from SonyAlpha"
                Dim mailcontent As String = "Please complete your registration by click on url : " + activeUrl
                Sendmail(mailFrom, mailFromPass, email, subject, mailcontent)
                GetMyResponse("200", "ok")
            Else
                GetMyResponse("200", errCode)
            End If
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try

    End Sub

    Private Sub GetPage()
        Try
            Dim pageId As Integer = CInt(Request.QueryString("pageid"))
            Dim page As Page = PageServices.getById(pageId, CN.ConnectionString)
            If Not page.Id = 0 Then
                GetMyResponse("200", New JavaScriptSerializer().Serialize(page))
            Else
                GetMyResponse("400", "fail")
            End If
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub GetLastestNews()
        Try
            Dim num As Integer = CInt(Request.QueryString("num"))
            Dim listNews As New List(Of News)
            listNews = NewsServices.getListLastestNews(num, CN.ConnectionString)
            GetMyResponse("200", New JavaScriptSerializer().Serialize(listNews))
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub DoSendMailFaq()
        Try
            Dim email As String = Request.Params.Get("email")
            Dim fullname As String = Request.Params.Get("fullname")
            Dim phone As String = Request.Params.Get("phone")
            Dim productName As String = Request.Params.Get("productname")
            Dim content As String = Request.Params.Get("mailcontent")

            Dim toAddress As String = SettingServices.getByName("adminMailTo", CN.ConnectionString)
            Dim mailFrom As String = SettingServices.getByName("adminMailFrom", CN.ConnectionString)
            Dim mailFromPass As String = SettingServices.getByName("adminMailPass", CN.ConnectionString)
            Dim subject As String = fullname + "_" + phone + "_" + productName
            Dim mailcontent As String = "From: " + email + " " + content
            Sendmail(mailFrom, mailFromPass, toAddress, subject, mailcontent)
            GetMyResponse("200", "ok")
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub Sendmail(ByVal mailFrom As String, ByVal mailFromPass As String, ByVal mailTo As String, ByVal subject As String, ByVal content As String)
        Try
            Dim fromAddress As New Net.Mail.MailAddress(mailFrom, mailTo)
            Dim smtpClient As New Net.Mail.SmtpClient
            Dim message As New Net.Mail.MailMessage
            smtpClient.Host = SettingServices.getByName("smtpHost", CN.ConnectionString)
            smtpClient.Port = SettingServices.getByName("smtpPort", CN.ConnectionString)
            smtpClient.Credentials = New Net.NetworkCredential(mailFrom, mailFromPass)
            smtpClient.EnableSsl = True

            message.From = fromAddress
            message.To.Add(mailTo)
            message.Subject = subject
            message.IsBodyHtml = False
            message.Body = content
            smtpClient.Send(message)
        Catch ex As Exception

        End Try
    End Sub

    Private Sub DoPostComment()
        Try
            Dim albumId As Integer = CInt(Request.Params.Get("albumid"))
            Dim photoId As Integer = CInt(Request.Params.Get("photoid"))
            Dim comment As String = Request.Params.Get("comment")

            If Not Session("accountid") = Nothing Then
                Dim albumComment As New AlbumComment
                albumComment.UserName = Session("accountid")
                albumComment.AlbumId = albumId
                albumComment.PhotoId = photoId
                albumComment.Status = True
                albumComment.Comment = comment

                If AlbumServices.setComment2Album(albumComment, CN.ConnectionString) Then
                    Dim commentId As Integer = AlbumServices.getCurrentMaxId("sony_album_comment", CN.ConnectionString)
                    GetMyResponse("200", commentId)
                Else
                    GetMyResponse("200", "-1")
                End If
            Else
                GetMyResponse("500", "Not login!")
            End If

        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub DoDeleteComment()
        Try
            Dim commentId As Integer = CInt(Request.Params.Get("commentid"))

            Dim albumComment As New AlbumComment
            albumComment = AlbumServices.getCommentById(commentId, CN.ConnectionString)
            Dim user As New User
            user = UserServices.getByUserName(Session("accountid"), CN.ConnectionString)
            If albumComment.UserName = Session("accountid") Or user.isAdmin(CN.ConnectionString) Then
                Dim c As HttpCookie = Request.Cookies("SonyAlpha")
                If Not c Is Nothing Then
                    If c.Values("accountid") = Session("accountid") Then
                        If AlbumServices.removeCommentById(commentId, CN.ConnectionString) Then
                            GetMyResponse("200", "ok")
                        Else
                            GetMyResponse("200", "fail")
                        End If
                    End If
                Else
                    GetMyResponse("200", "fail")
                End If
            Else
                GetMyResponse("200", "fail")
            End If
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub DoUpdateComment()
        Try
            Dim commentId As Integer = CInt(Request.Params.Get("commentId"))
            Dim comment As String = Request.Params.Get("comment")

            Dim albumComment As New AlbumComment
            albumComment = AlbumServices.getCommentById(commentId, CN.ConnectionString)
            Dim user As New User
            user = UserServices.getByUserName(Session("accountid"), CN.ConnectionString)
            If albumComment.UserName = Session("accountid") Then
                Dim c As HttpCookie = Request.Cookies("SonyAlpha")
                If Not c Is Nothing Then
                    If c.Values("accountid") = Session("accountid") Then
                        If AlbumServices.updateAlbumComment(commentId, comment, CN.ConnectionString) Then
                            GetMyResponse("200", "ok")
                        Else
                            GetMyResponse("200", "fail")
                        End If
                    End If
                Else
                    GetMyResponse("200", "fail")
                End If
            Else
                GetMyResponse("200", "fail")
            End If
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub GetListComment()
        Try
            Dim photoId As Integer = CInt(Request.QueryString("photoid"))
            Dim listComments As New List(Of AlbumComment)
            listComments = AlbumServices.getListCommentOfAlbum(photoId, CN.ConnectionString)
            GetMyResponse("200", New JavaScriptSerializer().Serialize(listComments))
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub GetListProductByCategory()
        Try
            Dim categoryId As Integer = CInt(Request.QueryString("categoryid"))
            Dim listProducts As New List(Of Product)
            listProducts = ProductServices.getListProductByCategoryId(categoryId, CN.ConnectionString)
            GetMyResponse("200", New JavaScriptSerializer().Serialize(listProducts))
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub GetProductById()
        Try
            Dim productId As Integer = CInt(Request.QueryString("productid"))
            Dim product As New Product
            product = ProductServices.getById(productId, CN.ConnectionString)
            GetMyResponse("200", New JavaScriptSerializer().Serialize(product))
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub GetUserByUserName()
        Try
            Dim username As String = Request.QueryString("username")
            Dim listUsers As New List(Of UserSearch)
            listUsers = UserServices.getListUserByUserName(username, CN.ConnectionString)
            GetMyResponse("200", New JavaScriptSerializer().Serialize(listUsers))
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub DoActiveUser()
        Try
            Dim query As String = Request.QueryString("q")
            Dim usnEmail As String = System.Web.HttpUtility.UrlDecode(base64Decode(query))
            Dim arrs As String() = usnEmail.Split("_")
            Dim username As String = arrs(0)
            Dim mail As String = arrs(1)
            Dim user As New User
            user = UserServices.getByUserName(username, CN.ConnectionString)
            If Not user.Id = 0 Then
                user.Status = True
                Dim http As String = ConfigurationManager.AppSettings("URL")
                Dim content As String = ""
                If user.update(CN.ConnectionString) Then
                    content = GetContentActive(http, "Congratulations! Your account has been actived!")
                Else
                    content = GetContentActive(http, "Opps! Activate account fail!")
                End If
                Response.Write(content)
            End If
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub GetListPhotoByAlbum()
        Try
            Dim albumId As Integer = CInt(Request.QueryString("albumid"))
            Dim listPhotos As New List(Of Photo)
            Dim album As New Album
            album = AlbumServices.getById(albumId, CN.ConnectionString)
            If Not album.Id = 0 Then
                listPhotos = AlbumServices.getPhotoOfAlbum(album.AlbumImage, CN.ConnectionString)
            End If
            GetMyResponse("200", New JavaScriptSerializer().Serialize(listPhotos))
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub DoLoginMail()
        Try
            Dim email As String = Request.Params.Get("username")
            Dim password As String = Request.Params.Get("password")
            If Not String.IsNullOrEmpty(email) And Not String.IsNullOrEmpty(password) Then
                Dim user As New User
                user.Email = email
                user.PassWord = base64Encode(password)
                If user.loginEmail(CN.ConnectionString) Then
                    GetMyResponse("200", "ok")
                Else
                    GetMyResponse("400", "fail")
                End If
            Else
                GetMyResponse("500", "invalid user account!")
            End If
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub GetTestConnection()
        Try
            If BaseService.testConnection(CN.ConnectionString) Then
                GetMyResponse("200", "ok")
            Else
                GetMyResponse("200", "fail")
            End If
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub DoUserUpdate()
        Try
            Dim username As String = Session("accountid")
            Dim password As String = Request.Params.Get("password")
            Dim fullname As String = Request.Params.Get("fullname")
            Dim phone As String = Request.Params.Get("phone")
            Dim productused As String = Request.Params.Get("productused")

            Dim user As New User
            user = UserServices.getFullByUserName(username, CN.ConnectionString)
            If Not user.Id = 0 Then
                If Not String.IsNullOrEmpty(password) Then
                    user.PassWord = base64Encode(password)
                End If
                user.FullName = fullname
                user.Phone = phone
                user.ProductUsed = productused

                If UserServices.updateIncludePass(user, CN.ConnectionString) Then
                    Dim http As String = ConfigurationManager.AppSettings("URL")
                    Dim activeUrl As String = http + GetParamsActive(username, user.Email)
                    Dim mailFrom As String = SettingServices.getByName("adminMailFrom", CN.ConnectionString)
                    Dim mailFromPass As String = SettingServices.getByName("adminMailPass", CN.ConnectionString)
                    Dim subject As String = "Cập nhật thông tin người dùng "
                    Dim mailcontent As String = "Thông tin của bạn tại SonyAlpha vừa được thay đổi !!!"
                    Sendmail(mailFrom, mailFromPass, user.Email, subject, mailcontent)
                    GetMyResponse("200", "ok")
                Else
                    GetMyResponse("200", "fail")
                End If
            Else
                GetMyResponse("200", "fail")
            End If

        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub GetListSonyCenterByProvince()
        Try
            Dim centerProvince As String = CInt(Request.QueryString("province"))
            Dim listCenters As New List(Of SonyCenter)
            listCenters = SonyCenterServices.getCenterByProvince(centerProvince, CN.ConnectionString)
            GetMyResponse("200", New JavaScriptSerializer().Serialize(listCenters))
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub DoVotePhoto()
        Try
            Dim photoId As Integer = CInt(Request.Params.Get("id"))
            Dim username As String = Session("accountid")
            Dim myVal As Integer = PhotoServices.increaseVoteCount(photoId, username, CN.ConnectionString)
            If myVal > 0 Then
                GetMyResponse("200", myVal.ToString())
            Else
                GetMyResponse("200", "0")
            End If
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub GetOwnerOfPhoto()
        Try
            Dim photoId As Integer = CInt(Request.Params.Get("id"))
            Dim username As String = PhotoServices.getOwnerOfPhoto(photoId, CN.ConnectionString)
            GetMyResponse("200", username)
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub GetIfVoted()
        Try
            Dim photoId As Integer = CInt(Request.QueryString("id"))
            Dim username As String = Session("accountid")
            If PhotoServices.checkIfVoted(photoId, username, CN.ConnectionString) Then
                GetMyResponse("200", "1")
            Else
                GetMyResponse("200", "0")
            End If
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

    Private Sub DoForgotPass()
        Try
            Dim email As String = Request.Params.Get("email")
            Dim randompass As String = GenerateRandomString(7, False)
            Dim rs As Integer = UserServices.forGotPass(email, base64Encode(randompass), CN.ConnectionString)
            If rs = 1 Then
                Dim mailFrom As String = SettingServices.getByName("adminMailFrom", CN.ConnectionString)
                Dim mailFromPass As String = SettingServices.getByName("adminMailPass", CN.ConnectionString)
                Dim subject As String = "SonyAlpha - Cấp lại mật khẩu mới"
                Dim mailcontent As String = "Mật khẩu của bạn tại SonyAlpha vừa được thay đổi !!! Mật khẩu mới: " + randompass
                Sendmail(mailFrom, mailFromPass, email, subject, mailcontent)
            End If
            GetMyResponse("200", rs.ToString())
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub

End Class