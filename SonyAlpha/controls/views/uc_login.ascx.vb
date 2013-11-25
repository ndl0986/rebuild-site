Public Class uc_login
    Inherits System.Web.UI.UserControl
    Public randomCode As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim r As New Random()
        Dim startIndex As Integer = r.[Next](1, 5)
        Dim length As Integer = r.[Next](5, 10)
        randomCode = Guid.NewGuid().ToString().Replace("-", "0").Substring(startIndex, length)
        If randomCode.Length > 8 Then
            randomCode = randomCode.Substring(0, randomCode.Length - 8)
        End If
    End Sub

End Class