Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_faq
    Inherits System.Web.UI.UserControl
    Public tblFAQ As New List(Of SonyAlphaLibs.QuestionAnswer)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            tblFAQ = SonyAlphaLibs.Services.QAServices.getListAll(CN.ConnectionString)
        Catch ex As Exception

        End Try
    End Sub

End Class