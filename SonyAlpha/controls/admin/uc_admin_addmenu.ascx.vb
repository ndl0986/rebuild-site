Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_addmenu
    Inherits System.Web.UI.UserControl
    Dim myMenu As New SonyAlphaLibs.Menu
    Dim bolUpdate As Boolean
    Sub LoadMenu(ByVal id As String)
        myMenu.Id = CInt(id)
        myMenu = myMenu.getById(CN.ConnectionString)
        txtName.Text = myMenu.Name
        txtSeoURL.Text = myMenu.SeoUrl
        txtSortOrder.Text = myMenu.Order
        ddlMenu.SelectedValue = myMenu.ParentId

        Dim str As List(Of Integer)
        Dim listBanner As New List(Of SonyAlphaLibs.Banner)
        str = myMenu.getListBannerId(CN.ConnectionString)

        'For Each bId As Integer In str
        'Dim pBanner As New SonyAlphaLibs.Banner
        'pBanner.Id = bId
        'pBanner = pBanner.getById(CN.ConnectionString)
        'listBanner.Add(pBanner)
        'Next
        listBanner = SonyAlphaLibs.Services.MenuServices.getListBanner(myMenu.Id, CN.ConnectionString)

        rptListBanner.DataSource = listBanner
        rptListBanner.DataBind()

    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim myListMenu As New List(Of SonyAlphaLibs.Menu)
        myListMenu = myMenu.getListAll(CN.ConnectionString)

        ddlMenu.DataSource = myListMenu
        ddlMenu.DataBind()

        Dim rootItem As New ListItem
        rootItem.Value = 0
        rootItem.Text = "Menu cấp 1"
        ddlMenu.Items.Insert(0, rootItem)

        Dim id As String
        id = Request.QueryString("id")
        If id = "" Then
            'thêm 
            bolUpdate = False
        Else
            bolUpdate = True
        End If

        If bolUpdate Then
            LoadMenu(id)
        End If

        MakeTextBoxNumberable(txtSortOrder)

    End Sub

    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            myMenu.Name = txtName.Text.Trim
            myMenu.SeoUrl = txtSeoURL.Text.Trim
            myMenu.ParentId = CInt(ddlMenu.SelectedValue)
            myMenu.Order = CInt(txtSortOrder.Text.Trim)
            If myMenu.ParentId <> 0 Then
                myMenu.IsParent = True
            End If
            myMenu.IsAdmin = False
            myMenu.Visible = True
            Dim result As Boolean
            If bolUpdate = False Then
                result = myMenu.add(CN.ConnectionString)
            Else
                result = myMenu.update(CN.ConnectionString)
            End If
            If result Then
                ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu menu thành công !!!');", True)
                Response.Redirect("?tpl=menus")
            Else
                ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('lưu menu không thành công !!!');", True)
            End If
        End If
    End Sub

    Private Sub rptListBanner_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.RepeaterItemEventArgs) Handles rptListBanner.ItemDataBound
        Dim lbl As Label
        lbl = DirectCast(e.Item.FindControl("bannername"), Label)
        'lbl.Text = e.Item.DataItem("name")
    End Sub
End Class