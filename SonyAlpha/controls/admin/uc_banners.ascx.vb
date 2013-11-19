Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_banners
    Inherits System.Web.UI.UserControl
    Dim myBanner As SonyAlphaLibs.Banner
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objBanner.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub grvBanner_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grvBanner.RowCommand
        Try
            If e.CommandName = "DeleteRow" Then
                myBanner.Id = CInt(e.CommandArgument)
                myBanner = myBanner.getById(CN.ConnectionString)
                myBanner.removeById(CN.ConnectionString)

                grvBanner.DataSourceID = ""
                grvBanner.DataSourceID = "objBanner"
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub grvBanner_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles grvBanner.RowDataBound
        Try
            If e.Row.RowType = DataControlRowType.DataRow Then
                Dim lbl As New Label

                lbl = e.Row.Cells(4).FindControl("lblBannerType")
                Dim rowBanner As New Banner
                rowBanner = e.Row.DataItem
                lbl.Text = GetBannerPos(rowBanner.BannerType)
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub grvBanner_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvBanner.SelectedIndexChanged
        Dim strURL As String
        strURL = "?tpl=editbanner&id=" & grvBanner.Rows(grvBanner.SelectedIndex).Cells(0).Text
        Response.Redirect(strURL)
    End Sub
End Class