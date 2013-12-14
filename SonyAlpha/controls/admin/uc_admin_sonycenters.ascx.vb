Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_sonycenters
    Inherits System.Web.UI.UserControl
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objSonyCenters.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub grvSonyCenters_PageIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvSonyCenters.PageIndexChanged
        If ddlRetailLevel.SelectedValue <> "*" Then
            objSonyCenters.SelectMethod = "getListByType"
            objSonyCenters.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
            If objSonyCenters.SelectParameters.Count = 1 Then
                objSonyCenters.SelectParameters.Add("typeId", ddlRetailLevel.SelectedValue)
            Else
                objSonyCenters.SelectParameters.Item("typeId").DefaultValue = ddlRetailLevel.SelectedValue
            End If
        Else
            If objSonyCenters.SelectParameters.Count = 2 Then
                objSonyCenters.SelectParameters.RemoveAt(1)
            End If
            objSonyCenters.SelectMethod = "getListAll"
            objSonyCenters.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
        End If
        grvSonyCenters.PageSize = ddlPageSize.SelectedValue
        grvSonyCenters.DataSourceID = ""
        grvSonyCenters.DataSourceID = "objSonyCenters"
        grvSonyCenters.DataBind()
    End Sub
    Private Sub grvSonyCenters_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvSonyCenters.SelectedIndexChanged
        Dim strURL As String = "?tpl=editsonycenter&id=" & grvSonyCenters.Rows(grvSonyCenters.SelectedIndex).Cells(0).Text
        Response.Redirect(strURL)
    End Sub
    Private Sub grvSonyCenters_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grvSonyCenters.RowCommand
        Try
            If e.CommandName = "DeleteRow" Then
                Dim sonyCenter As New SonyCenter
                sonyCenter.Id = CInt(e.CommandArgument)
                sonyCenter.removeById(CN.ConnectionString)

                grvSonyCenters.DataSourceID = ""
                grvSonyCenters.DataSourceID = "objSonyCenters"
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ddlRetailLevel_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlRetailLevel.SelectedIndexChanged
        If ddlRetailLevel.SelectedValue <> "*" Then
            objSonyCenters.SelectMethod = "getListByType"
            objSonyCenters.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
            If objSonyCenters.SelectParameters.Count = 1 Then
                objSonyCenters.SelectParameters.Add("typeId", ddlRetailLevel.SelectedValue)
            Else
                objSonyCenters.SelectParameters.Item("typeId").DefaultValue = ddlRetailLevel.SelectedValue
            End If
        Else
            If objSonyCenters.SelectParameters.Count = 2 Then
                objSonyCenters.SelectParameters.RemoveAt(1)
            End If
            objSonyCenters.SelectMethod = "getListAll"
            objSonyCenters.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
        End If
        grvSonyCenters.PageSize = ddlPageSize.SelectedValue
        grvSonyCenters.DataSourceID = ""
        grvSonyCenters.DataSourceID = "objSonyCenters"
        grvSonyCenters.DataBind()
    End Sub

    Private Sub ddlPageSize_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlPageSize.SelectedIndexChanged
        If ddlRetailLevel.SelectedValue <> "*" Then
            objSonyCenters.SelectMethod = "getListByType"
            objSonyCenters.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
            If objSonyCenters.SelectParameters.Count = 1 Then
                objSonyCenters.SelectParameters.Add("typeId", ddlRetailLevel.SelectedValue)
            Else
                objSonyCenters.SelectParameters.Item("typeId").DefaultValue = ddlRetailLevel.SelectedValue
            End If
        Else
            If objSonyCenters.SelectParameters.Count = 2 Then
                objSonyCenters.SelectParameters.RemoveAt(1)
            End If
            objSonyCenters.SelectMethod = "getListAll"
            objSonyCenters.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
        End If
        grvSonyCenters.PageSize = ddlPageSize.SelectedValue
        grvSonyCenters.DataSourceID = ""
        grvSonyCenters.DataSourceID = "objSonyCenters"
        grvSonyCenters.DataBind()
    End Sub
End Class