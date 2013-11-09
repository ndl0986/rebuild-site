Public Class _Default1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        InitDatabase()
        Dim tpl As New System.Web.UI.UserControl
        If Request.Browser.Cookies Then
            If Request.Cookies("SonyAlpha") IsNot Nothing Then
                Session("accountid") = Request.Cookies("SonyAlpha").Values("accountid")
                'Session("accountpass") = Request.Cookies("DealBox").Values("accountpass")
                Session("accountname") = Request.Cookies("SonyAlpha").Values("accountname")
                Session("accountgroup") = Request.Cookies("SonyAlpha").Values("accountgroup")
            End If
        End If

        If Session("accountid") = "" Then
            Response.Redirect("LogIn.aspx")
        Else
            Try
                '-----------------------------------------'
                Select Case LCase(Request.QueryString("tpl"))
                    Case "accounts"
                        tpl = Page.LoadControl("../controls/admin/uc_account.ascx")
                    Case "editaccount", "profile"
                        tpl = Page.LoadControl("../controls/admin/uc_editaccount.ascx")
                    Case "accountgroup"
                        tpl = Page.LoadControl("../controls/admin/uc_accountgroup.ascx")
                    Case "editaccount"
                        tpl = Page.LoadControl("../controls/admin/uc_editaccount.ascx")
                    Case "permissions"
                        tpl = Page.LoadControl("../controls/admin/uc_permission.ascx")
                    Case "productcategory"
                        tpl = Page.LoadControl("../controls/admin/uc_productcategory.ascx")
                    Case "products"
                        tpl = Page.LoadControl("../controls/admin/uc_products.ascx")
                    Case "addproduct"
                        tpl = Page.LoadControl("../controls/admin/uc_addproduct.ascx")
                    Case "logout"
                        Session("accountid") = ""
                        'Session("accountpass") = ""
                        Session("accountname") = ""
                        Session("accountgroup") = ""
                        Response.Cookies("SonyAlpha").Expires = DateAdd(DateInterval.Day, -1, Now())
                        Response.Redirect("/")
                    Case Else
                        tpl = Page.LoadControl("../controls/admin/uc_account.ascx")
                End Select
                hplUser.Text = Session("accountname")
                hplUser.NavigateUrl = "?tpl=profile"
                lblClientIP.Text = Request.UserHostAddress()
                plhMain.Controls.Add(tpl)
            Catch ex As Exception
                ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('" & Server.HtmlEncode(ex.Message) & "');", True)
            End Try
        End If
    End Sub

End Class