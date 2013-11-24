Public Class uc_register
    Inherits System.Web.UI.UserControl
    Public randomCode As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim r As New Random()
        Dim startIndex As Integer = r.[Next](1, 5)
        Dim length As Integer = r.[Next](5, 10)
        randomCode = Guid.NewGuid().ToString().Replace("-", "0").Substring(startIndex, length)
    End Sub

End Class