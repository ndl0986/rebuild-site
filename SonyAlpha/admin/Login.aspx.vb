Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class Login
    Inherits System.Web.UI.Page
    ' How to add user
    ' Dim myUser as User
    ' ...set info for myUser
    ' call method to add user: myUser.add(connectionString)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            InitDatabase()

        Catch ex As Exception
            ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('" & ex.Message.Replace("'", "\'") & "');", True)
        End Try
    End Sub

    Private Sub btnLogIn_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogIn.ServerClick

        Dim user As New User
        Dim userGroup As New UserGroup

        user.UserName = txtAccount.Text.Trim
        user.PassWord = base64Encode(txtPassword.Text.Trim)

        If (user.login(CN.ConnectionString)) Then
            user = user.getByUserName(CN.ConnectionString)
            Session("accountid") = user.UserName
            'Session("accountpass") = user.PassWord
            Session("accountname") = user.FullName

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
            If userGroup.IsSuper = True Then
                Dim sUrl As String = Page.ClientQueryString
                Response.Redirect("/admin/?" & sUrl)
            Else
                Response.Redirect("/")
            End If

        Else
            Session("accountid") = ""
            'Session("accountpass") = ""
            Session("accountname") = ""
            Session("accountgroup") = ""
            txtAccount.Text = "100"
            txtAccount.CssClass.Insert(0, "error")
        End If
    End Sub

    Private Sub btnCancel_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel.ServerClick
        Response.Redirect("/")
    End Sub
End Class