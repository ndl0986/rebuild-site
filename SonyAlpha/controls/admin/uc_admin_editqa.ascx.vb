Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_admin_editqa
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.ClientScript.RegisterOnSubmitStatement(txtQuestion.GetType(), "txtMessage", "FCKUpdateLinkedField('" + txtQuestion.ClientID + "');")
        Page.ClientScript.RegisterOnSubmitStatement(txtAnswer.GetType(), "txtMessage", "FCKUpdateLinkedField('" + txtAnswer.ClientID + "');")
        Dim id As String = Request.QueryString("id")
        If Not String.IsNullOrEmpty(id) Then
            LoadQAToForm(id)
        End If
    End Sub

    Private Sub LoadQAToForm(ByVal id)
        Dim qa As QuestionAnswer
        qa = QAServices.getById(CInt(id), CN.ConnectionString)
        If Not qa.Id = 0 Then
            txtQuestion.Text = qa.Question
            txtAnswer.Value = qa.Answer
        End If

    End Sub
    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            Try
                Dim qa As New QuestionAnswer
                id = Request.QueryString("id")
                qa.Id = ID
                qa.Question = txtQuestion.Text
                qa.Answer = txtAnswer.Value
                If qa.update(CN.ConnectionString) Then
                    ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu Hỏi đáp thành công !!!');", True)
                Else
                    ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu Hỏi đáp không thành công !!!');", True)
                End If
            Catch ex As Exception
                SonyCenterServices.writeLog("", "Add/Update QA fail: " + ex.Message, CN.ConnectionString)
            End Try
        End If
    End Sub
End Class