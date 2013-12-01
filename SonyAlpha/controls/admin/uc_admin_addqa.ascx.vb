Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_addqa
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.ClientScript.RegisterOnSubmitStatement(txtAnswer.GetType(), "txtMessage", "FCKUpdateLinkedField('" + txtAnswer.ClientID + "');")
    End Sub
    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            Try
                Dim questionAnswer As New QuestionAnswer
                questionAnswer.Question = txtQuestion.Text
                questionAnswer.Answer = txtAnswer.Value
                If questionAnswer.add(CN.ConnectionString) Then
                    Dim newId As Integer = QAServices.getCurrentMaxId("sony_faq", CN.ConnectionString)
                    Response.Redirect("?tpl=editqa&id=" & CStr(newId))
                End If
            Catch ex As Exception
                QAServices.writeLog("", "Add/Update QA fail: " + ex.Message, CN.ConnectionString)
            End Try
        End If
    End Sub
End Class