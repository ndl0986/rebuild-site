Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_pagebanner
    Inherits System.Web.UI.UserControl
    Dim myPage As New SonyAlphaLibs.Menu
    Dim myBanner As New SonyAlphaLibs.Banner
    Dim myBannerPage As New SonyAlphaLibs.PageBanner
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objPageBanner.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ddlPage.DataSource = myPage.getListAll(CN.ConnectionString)
        ddlPage.DataBind()
        ddlBanner.DataSource = myBanner.getListAll(CN.ConnectionString)
        ddlBanner.DataBind()
    End Sub

    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        Try
            If Page.IsPostBack Then
                Dim chosenPage As New SonyAlphaLibs.Menu
                chosenPage.Id = ddlPage.SelectedValue
                chosenPage = chosenPage.getById(CN.ConnectionString)
                Dim result As Boolean
                result = chosenPage.setBanner2Page(ddlBanner.SelectedValue, CN.ConnectionString)
                If result = True Then
                    grvPageBanner.DataSourceID = ""
                    grvPageBanner.DataSourceID = "objPageBanner"
                    ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu liên kết menu banner thành công !!!');", True)
                Else
                    ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('lưu liên kết menu banner không thành công !!!');", True)
                End If
            End If

        Catch ex As Exception

        End Try

    End Sub

    Private Sub grvPageBanner_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grvPageBanner.RowCommand
        Try
            If e.CommandName = "DeleteRow" Then
                myBannerPage.Id = e.CommandArgument
                myBannerPage = myBannerPage.getById(CN.ConnectionString)
                myBannerPage.removeById(CN.ConnectionString)

                grvPageBanner.DataSourceID = ""
                grvPageBanner.DataSourceID = "objPageBanner"
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub grvPageBanner_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles grvPageBanner.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then

            Dim lbl As Label
            lbl = e.Row.FindControl("lblPage")
            myPage.Id = CInt(e.Row.Cells(1).Text.Trim)
            myPage = myPage.getById(CN.ConnectionString)
            lbl.Text = myPage.Name

            lbl = e.Row.FindControl("lblBanner")
            myBanner.Id = CInt(e.Row.Cells(2).Text.Trim)
            myBanner = myBanner.getById(CN.ConnectionString)
            lbl.Text = myBanner.Name
        End If
    End Sub
End Class