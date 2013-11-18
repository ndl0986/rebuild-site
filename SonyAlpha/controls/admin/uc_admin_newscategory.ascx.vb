Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_newscategory
    Inherits System.Web.UI.UserControl
    Dim myNewsCategory As New SonyAlphaLibs.NewsCategory
    Private Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        objNewsCategory.SelectParameters.Item("connString").DefaultValue = CN.ConnectionString
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub grvNewsCategory_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles grvNewsCategory.RowCommand
        If e.CommandName = "DeleteRow" Then
            myNewsCategory.Id = e.CommandArgument
            myNewsCategory = myNewsCategory.getById(CN.ConnectionString)
            Dim lstNC As List(Of SonyAlphaLibs.NewsCategory)
            lstNC = myNewsCategory.getListNewsSameParent(CN.ConnectionString)
            If lstNC.Count > 0 Then
                ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Không thể xóa nhóm tin này vì còn có nhóm tin phụ thuộc');", True)
            Else
                myNewsCategory.removeById(CN.ConnectionString)
            End If
        End If
    End Sub

    Private Sub grvNewsCategory_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grvNewsCategory.SelectedIndexChanged
        Dim strURL As String
        strURL = "?tpl=addnewscategory&id=" & grvNewsCategory.Rows(grvNewsCategory.SelectedIndex).Cells(0).Text
        Response.Redirect(strURL)
    End Sub
End Class