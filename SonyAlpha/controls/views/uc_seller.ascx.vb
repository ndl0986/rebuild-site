Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_seller
    Inherits System.Web.UI.UserControl
    Public tblProShop As New List(Of SonyCenter)
    Public tblAlphaShop As New List(Of SonyCenter)
    Public tblShop As New List(Of SonyCenter)
    Public intMenu As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            intMenu = Request.QueryString("mId")

            Dim intProvince As String
            intProvince = Request.QueryString("pId")
            Dim tblProvince As New SonyAlphaLibs.Province
            ddlProvince.DataSource = tblProvince.getListAll(CN.ConnectionString)
            ddlProvince.DataTextField = "SProvince"
            ddlProvince.DataValueField = "Id"
            ddlProvince.DataBind()

            Dim ddlTitle As New ListItem
            ddlTitle.Value = 0
            ddlTitle.Text = "--- Lựa chọn ---"
            ddlProvince.Items.Insert(0, ddlTitle)

            Dim tblCenters As New List(Of SonyCenter)
            If intProvince = "" Or CInt(intProvince) = 0 Then
                tblCenters = SonyCenterServices.getListAllCenter(CN.ConnectionString)
            Else
                tblCenters = SonyCenterServices.getCenterByProvince(intProvince, CN.ConnectionString)
                ddlProvince.SelectedValue = intProvince
            End If
            For Each item As SonyCenter In tblCenters
                Select Case item.RetailLevel
                    Case 0
                        tblProShop.Add(item)
                    Case 1
                        tblAlphaShop.Add(item)
                    Case Else
                        tblShop.Add(item)
                End Select
            Next


        Catch ex As Exception
            Response.Redirect("Error.aspx")
        End Try
    End Sub
End Class