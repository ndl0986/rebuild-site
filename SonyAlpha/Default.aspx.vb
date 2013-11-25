
Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Imports System.Configuration
Public Class _Default
    Inherits System.Web.UI.Page
    Dim intMenu As Integer
    Public absoluteURL As String
    Public hasBanner As Boolean = False
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            InitDatabase()
        End If

        If Request.QueryString("mId") = "" Then
            intMenu = 0
        Else
            intMenu = CInt(Request.QueryString("mId"))
        End If

        GenMenu()
        LoadMyTemplate()
        hdfMenu.Value = intMenu
        absoluteURL = ConfigurationManager.AppSettings("URL")

        Dim tpl As New System.Web.UI.UserControl
        If Request.Browser.Cookies Then
            If Request.Cookies("SonyAlpha") IsNot Nothing Then
                Session("accountid") = Request.Cookies("SonyAlpha").Values("accountid")
                Session("accountname") = Request.Cookies("SonyAlpha").Values("accountname")
                Session("accountgroup") = Request.Cookies("SonyAlpha").Values("accountgroup")
                isLoged.Value = 1
                lblUser.Text = Session("accountname")
            End If
        End If

        Try
            Select Case LCase(Request.QueryString("tpl"))
                Case "logout"
                    Session("accountid") = ""
                    Session("accountname") = ""
                    Session("accountgroup") = ""
                    Response.Cookies("SonyAlpha").Expires = DateAdd(DateInterval.Day, -1, Now())
                    Response.Redirect("/")
                Case "album"
                    tpl = Page.LoadControl("controls/views/uc_album.ascx")
                Case "albumdetail"
                    tpl = Page.LoadControl("controls/views/uc_albumdetail.ascx")
                Case "photo"
                    tpl = Page.LoadControl("controls/views/uc_photo.ascx")
                Case "profile"
                    tpl = Page.LoadControl("controls/views/uc_profile.ascx")
                Case "newsdetail"
                    tpl = Page.LoadControl("controls/views/uc_newsdetail.ascx")
                Case "news"
                    tpl = Page.LoadControl("controls/views/uc_newscategory.ascx")
                Case "seller"
                    tpl = Page.LoadControl("controls/views/uc_seller.ascx")
                Case "sellerdetail"
                    tpl = Page.LoadControl("controls/views/uc_sellerdetail.ascx")
                Case "productcate"
                    tpl = Page.LoadControl("controls/views/uc_productcategory.ascx")
                Case "page"
                    tpl = Page.LoadControl("controls/views/uc_page.ascx")
                Case "register"
                    tpl = Page.LoadControl("controls/views/uc_register.ascx")
                Case "login"
                    tpl = Page.LoadControl("controls/views/uc_login.ascx")
                Case "emailfaq"
                    tpl = Page.LoadControl("controls/views/uc_email_faq.ascx")
                Case "map"
                    tpl = Page.LoadControl("controls/views/uc_map.ascx")
                Case "lastestnews"
                    tpl = Page.LoadControl("controls/views/uc_lastestnews.ascx")
                Case Else
                    intMenu = 1
                    tpl = Page.LoadControl("controls/views/uc_page.ascx")
            End Select
            hdfPage.Value = LCase(Request.QueryString("tpl"))
            LoadBanner(intMenu)
            plhMain.Controls.Add(tpl)


        Catch ex As Exception
            'ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "openAlert('" & ex.Message & "');", True)
            'Response.Redirect("Error.aspx")
        End Try
    End Sub
    Sub LoadBanner(ByVal intMenu As Integer)
        Dim topBanner As New List(Of SonyAlphaLibs.Banner)
        topBanner = SonyAlphaLibs.Services.MenuServices.getListBanner(intMenu, CN.ConnectionString)
        If topBanner.Count > 0 Then
            hasBanner = True
        Else
            hasBanner = False
        End If
        Dim html As String = ""
        For Each oBanner As SonyAlphaLibs.Banner In topBanner
            oBanner = oBanner.getById(CN.ConnectionString)
            html = html & "<div class=""banner_container type_" & oBanner.BannerType & """><ul>"
            Dim lstPhotos As New List(Of SonyAlphaLibs.BannerPhoto)
            lstPhotos = oBanner.ListPhotos
            For Each iPhoto As SonyAlphaLibs.BannerPhoto In lstPhotos
                html = html & "<li><a class=img href=""" & iPhoto.Link2 & """><img class=item src=""" & iPhoto.ImageUrl & """ alt /></a></li>"
            Next
            html = html & "</ul></div>"
        Next
        banner.InnerHtml = html
    End Sub
    Sub LoadMyTemplate()
        Try
            Dim bllSetting As New SonyAlphaLibs.Setting
            Dim bllPage As New SonyAlphaLibs.Page
            bllSetting.Name = "footer"
            Dim intFooter As Integer = CInt(bllSetting.getByName(CN.ConnectionString))

            Dim strHeader As String
            bllPage.Id = intFooter
            strHeader = bllPage.getById(CN.ConnectionString).PageContent
            footer.InnerHtml = strHeader
        Catch ex As Exception

        End Try

    End Sub

    Public Sub GenMenu()
        Dim tbl As New List(Of SonyAlphaLibs.Menu)
        Dim bllMenu As New SonyAlphaLibs.Menu
        tbl = MenuServices.getListRootMenu(CN.ConnectionString)

        topmenu.InnerHtml = "<ul id=""nav"">"
        For Each rRoot As SonyAlphaLibs.Menu In tbl
            topmenu.InnerHtml = topmenu.InnerHtml & "<li id=""menu_" & rRoot.Id & """><a href=""" & rRoot.SeoUrl & "?mId=" & rRoot.Id & """>" & rRoot.Name & "</a>"
            Dim tblSe As New List(Of SonyAlphaLibs.Menu)
            tblSe = MenuServices.getListMenuByParent(rRoot.Id, CN.ConnectionString)
            If (tblSe.Count > 0) Then
                topmenu.InnerHtml = topmenu.InnerHtml & "<ul>"
                For Each rSe As SonyAlphaLibs.Menu In tblSe
                    topmenu.InnerHtml = topmenu.InnerHtml & "<li id=""menu_" & rRoot.Id & """><a href=""" & rSe.SeoUrl & "?mId=" & rRoot.Id & """>" & rSe.Name & "</a>"
                Next
                topmenu.InnerHtml = topmenu.InnerHtml & "</ul>"
            End If
            topmenu.InnerHtml = topmenu.InnerHtml & "</li>"
        Next
        topmenu.InnerHtml = topmenu.InnerHtml & "</ul>"

    End Sub

End Class