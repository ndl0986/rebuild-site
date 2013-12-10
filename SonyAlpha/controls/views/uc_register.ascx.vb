Public Class uc_register
    Inherits System.Web.UI.UserControl
    Public randomCode As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        randomCode = GenerateRandomString(7, False)
    End Sub

End Class