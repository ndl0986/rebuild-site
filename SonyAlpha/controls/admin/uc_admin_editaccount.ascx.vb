Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_editaccount
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

            Dim id As Integer = CInt(Request.QueryString("id"))
            If Not id = 0 Then
                Dim user As New User
                user = UserServices.getById(id, CN.ConnectionString)
                If Not user.Id = 0 Then
                    txtFullName.Text = user.FullName
                    txtUName.Text = user.UserName
                    ddlUserGroup.SelectedValue = user.GroupId
                    chkStatus.Checked = user.Status
                    txtPhone.Text = user.Phone
                    txtEmail.Text = user.Email
                End If
            End If
        End If
    End Sub
    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            Try
                Dim user As New User
                user.UserName = txtUName.Text
                user.FullName = txtFullName.Text
                user.Status = chkStatus.Checked
                user.GroupId = ddlUserGroup.SelectedValue
                user.Phone = txtPhone.Text
                user.Email = txtEmail.Text
                If user.update(CN.ConnectionString) Then
                    ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu User thành công !!!');", True)
                Else
                    ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu User không thành công !!!');", True)
                End If
            Catch ex As Exception
                UserServices.writeLog("", "Add/Update User fail: " + ex.Message, CN.ConnectionString)
            End Try
        End If
    End Sub

    Private Sub btnResetPass_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnResetPass.ServerClick
        If Page.IsPostBack Then
            Try
                Dim user As New User
                user.UserName = txtUName.Text
                user.DefaultPass = base64Encode(DEFAULT_PASS)
                If user.resetPasswordToDefault(CN.ConnectionString) Then
                    ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Reset Mật khẩu thành công !!! Mật khẩu mới: " + DEFAULT_PASS + "');", True)
                Else
                    ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu User không thành công !!!');", True)
                End If
            Catch ex As Exception
                UserServices.writeLog("", "Add/Update User fail: " + ex.Message, CN.ConnectionString)
            End Try
        End If
    End Sub
End Class