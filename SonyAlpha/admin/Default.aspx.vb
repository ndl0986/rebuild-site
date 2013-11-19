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
                    Case "accountsgroup"
                        tpl = Page.LoadControl("../controls/admin/uc_accountgroup.ascx")
                    Case "newscategory"
                        tpl = Page.LoadControl("../controls/admin/uc_admin_newscategory.ascx")
                    Case "addnewscategory"
                        tpl = Page.LoadControl("../controls/admin/uc_addnewscategory.ascx")
                    Case "news"
                        tpl = Page.LoadControl("../controls/admin/uc_newslist.ascx")
                    Case "addnews", "editnews"
                        tpl = Page.LoadControl("../controls/admin/uc_newsdetail.ascx")
                    Case "pages"
                        tpl = Page.LoadControl("../controls/admin/uc_pages.ascx")
                    Case "addpage", "editpage"
                        tpl = Page.LoadControl("../controls/admin/uc_pagedetail.ascx")
                    Case "permissions"
                        tpl = Page.LoadControl("../controls/admin/uc_permission.ascx")
                    Case "productcategory"
                        tpl = Page.LoadControl("../controls/admin/uc_productcategory.ascx")
                    Case "addproductcategory"
                        tpl = Page.LoadControl("../controls/admin/uc_admin_addproductcategory.ascx")
                    Case "editproductcategory"
                        tpl = Page.LoadControl("../controls/admin/uc_admin_editproductcategory.ascx")
                    Case "products"
                        tpl = Page.LoadControl("../controls/admin/uc_products.ascx")
                    Case "addproduct"
                        tpl = Page.LoadControl("../controls/admin/uc_admin_addproduct.ascx")
                    Case "editproduct"
                        tpl = Page.LoadControl("../controls/admin/uc_admin_editproduct.ascx")
                    Case "banners"
                        tpl = Page.LoadControl("../controls/admin/uc_banners.ascx")
                    Case "addbanner"
                        tpl = Page.LoadControl("../controls/admin/uc_banneradd.ascx")
                    Case "editbanner"
                        tpl = Page.LoadControl("../controls/admin/uc_banneraddphoto.ascx")
                    Case "banerpage"
                        tpl = Page.LoadControl("../controls/admin/uc_pagebanner.ascx")
                    Case "addalbum"
                        tpl = Page.LoadControl("../controls/admin/uc_admin_addalbum.ascx")
                    Case "albums"
                        tpl = Page.LoadControl("../controls/admin/uc_admin_album.ascx")
                    Case "addphotos"
                        tpl = Page.LoadControl("../controls/admin/uc_admin_addphoto.ascx")
                    Case "editalbum"
                        tpl = Page.LoadControl("../controls/admin/uc_admin_editalbum.ascx")
                    Case "photocomments"
                        tpl = Page.LoadControl("../controls/admin/uc_admin_photocomments.ascx")
                    Case "sonycenters"
                        tpl = Page.LoadControl("../controls/admin/uc_admin_sonycenters.ascx")
                    Case "addsonycenter"
                        tpl = Page.LoadControl("../controls/admin/uc_admin_addsonycenter.ascx")
                    Case "editsonycenter"
                        tpl = Page.LoadControl("../controls/admin/uc_admin_editsonycenter.ascx")
                    Case "menus"
                        tpl = Page.LoadControl("../controls/admin/uc_admin_menulist.ascx")
                    Case "addmenu", "editmenu"
                        tpl = Page.LoadControl("../controls/admin/uc_admin_addmenu.ascx")
                    Case "settings"
                        tpl = Page.LoadControl("../controls/admin/uc_admin_settings.ascx")
                    Case "addsetting"
                        tpl = Page.LoadControl("../controls/admin/uc_admin_addsetting.ascx")
                    Case "editsetting"
                        tpl = Page.LoadControl("../controls/admin/uc_admin_editsetting.ascx")
                    Case "files"
                        Response.Redirect("FileManager.aspx")
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