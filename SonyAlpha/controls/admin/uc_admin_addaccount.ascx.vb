Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_addaccount
    Inherits System.Web.UI.UserControl
    Public listUserGroups As New List(Of UserGroup)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            If listUserGroups.Count = 0 Then
                listUserGroups = UserGroupServices.getListAll(CN.ConnectionString)
            End If
            ddlUserGroup.DataSource = listUserGroups
            ddlUserGroup.DataTextField = "GroupName"
            ddlUserGroup.DataValueField = "Id"
            ddlUserGroup.DataBind()
        End If
    End Sub
    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            Try
                Dim user As New User
                user.UserName = txtUName.Text
                user.PassWord = base64Encode(txtPWD.Text)
                user.FullName = txtFullName.Text
                user.Status = chkStatus.Checked
                user.GroupId = ddlUserGroup.SelectedValue
                If user.add(CN.ConnectionString) Then
                    Dim newId As Integer = UserServices.getCurrentMaxId("sony_user", CN.ConnectionString)
                    Response.Redirect("?tpl=editaccount&id=" & CStr(newId))
                End If
            Catch ex As Exception
                UserServices.writeLog("", "Add/Update User fail: " + ex.Message, CN.ConnectionString)
            End Try
        End If
    End Sub
End Class