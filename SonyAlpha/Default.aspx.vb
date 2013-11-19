Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            InitDatabase()
        End If

        GenMenu()

        Dim tpl As New System.Web.UI.UserControl
        If Request.Browser.Cookies Then
            If Request.Cookies("SonyAlpha") IsNot Nothing Then
                Session("accountid") = Request.Cookies("SonyAlpha").Values("accountid")
                Session("accountname") = Request.Cookies("SonyAlpha").Values("accountname")
                Session("accountgroup") = Request.Cookies("SonyAlpha").Values("accountgroup")
                isLoged.Value = 1
                lblUser.Text = "Xin chào, " + Session("membername") + "<em></em>"
            End If
        End If

        Try
            Select Case LCase(Request.QueryString("tpl"))
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
                Case "page"
                    tpl = Page.LoadControl("controls/views/uc_seller.ascx")
                Case Else
                    tpl = Page.LoadControl("controls/views/uc_page.ascx")
            End Select
            plhMain.Controls.Add(tpl)


        Catch ex As Exception
            'ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "openAlert('" & ex.Message & "');", True)
            Response.Redirect("Error.aspx")
        End Try
    End Sub

    Public Sub GenMenu()
        Dim tbl As New List(Of SonyAlphaLibs.Menu)
        Dim bllMenu As New SonyAlphaLibs.Menu
        tbl = MenuServices.getListRootMenu(CN.ConnectionString)

        topmenu.InnerHtml = "<ul id=""nav"">"
        For Each rRoot As SonyAlphaLibs.Menu In tbl
            topmenu.InnerHtml = topmenu.InnerHtml & "<li id=""menu_" & rRoot.Id & """><a href=""" & rRoot.SeoUrl & "#" & rRoot.Id & """>" & rRoot.Name & "</a>"
            Dim tblSe As New List(Of SonyAlphaLibs.Menu)
            tblSe = MenuServices.getListMenuByParent(rRoot.Id, CN.ConnectionString)
            If (tblSe.Count > 0) Then
                topmenu.InnerHtml = topmenu.InnerHtml & "<ul>"
                For Each rSe As SonyAlphaLibs.Menu In tblSe
                    topmenu.InnerHtml = topmenu.InnerHtml & "<li id=""menu_" & rRoot.Id & """><a href=""" & rSe.SeoUrl & "#" & rRoot.Id & """>" & rSe.Name & "</a>"
                Next
                topmenu.InnerHtml = topmenu.InnerHtml & "</ul>"
            End If
            topmenu.InnerHtml = topmenu.InnerHtml & "</li>"
        Next
        topmenu.InnerHtml = topmenu.InnerHtml & "</ul>"

    End Sub

End Class