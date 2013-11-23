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
                    Case "sendmailfaq"
                        DoSendMailFaq()
                End Select
            Else
                GetMyResponse("500", "Nothing todo!")
            End If
        Else
            If Not String.IsNullOrEmpty(name) Then
                Select Case name
                    Case "getuserinfo"
                        GetUserInfo()
                    Case "getpage"
                        GetPage()
                    Case "getLastestNews"
                        GetLastestNews()
                End Select
            Else
                GetMyResponse("500", "Nothing todo!")
            End If
        End If
        
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
            Dim status As Boolean = True

            Dim user As New User
            user.UserName = username
            user.PassWord = base64Encode(password)
            user.FullName = fullname
            user.Status = status

            If user.add(CN.ConnectionString) Then
                GetMyResponse("200", "ok")
            Else
                GetMyResponse("200", "fail")
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

            Dim smtpClient As New Net.Mail.SmtpClient
            Dim message As New Net.Mail.MailMessage
            Dim toAddress As String = SettingServices.getByName("adminMailTo", CN.ConnectionString)
            Dim mailFrom As String = SettingServices.getByName("adminMailFrom", CN.ConnectionString)
            Dim fromAddress As New Net.Mail.MailAddress(SettingServices.getByName("adminMailFrom", CN.ConnectionString), toAddress)

            smtpClient.Host = SettingServices.getByName("smtpHost", CN.ConnectionString)
            smtpClient.Port = SettingServices.getByName("smtpPort", CN.ConnectionString)
            smtpClient.Credentials = New Net.NetworkCredential(mailFrom, SettingServices.getByName("adminMailPass", CN.ConnectionString))
            smtpClient.EnableSsl = True

            message.From = fromAddress
            message.To.Add(toAddress)
            message.Subject = fullname + "_" + phone + "_" + productName
            message.IsBodyHtml = False
            message.Body = "From: " + email + " " + content
            smtpClient.Send(message)
            GetMyResponse("200", "ok")
        Catch ex As Exception
            GetMyResponse("500", "fail: " + ex.Message)
        End Try
    End Sub
End Class