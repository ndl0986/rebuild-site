Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_lastestnews
    Inherits System.Web.UI.UserControl
    Public listNews As New List(Of News)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim num As Integer = CInt(Request.QueryString("num"))
            If num = 0 Then num = 5
            listNews = NewsServices.getListLastestNews(num, CN.ConnectionString)

        End If
    End Sub

End Class