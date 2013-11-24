Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_accountgroup
    Inherits System.Web.UI.UserControl

    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objGroupAccount.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then

        End If
    End Sub
    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            Dim userGroup As New UserGroup
            userGroup.GroupName = txtGroupName.Text
            userGroup.IsSuper = chkIsSupper.Checked
            If userGroup.add(CN.ConnectionString) Then
                'grvGroupAccount.DataSourceID = ""
                'grvGroupAccount.DataSourceID = "objGroupAccount"
                Response.Redirect("?tpl=accountsgroup")
            End If
        End If
    End Sub
End Class