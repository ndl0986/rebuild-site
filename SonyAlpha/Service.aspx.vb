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
                End Select
            Else
                GetMyResponse("500", "Nothing todo!")
            End If
        End If
        
    End Sub

    Private Sub DoLogin()
        Try
            Dim username As String = Request.QueryString("username")
            Dim password As String = Request.QueryString("password")
            If Not String.IsNullOrEmpty(username) And Not String.IsNullOrEmpty(password) Then
                Dim user As New User
                user.UserName = username
                user.PassWord = password
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
            user.PassWord = password
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

End Class