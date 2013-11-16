Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Public Class uc_banneraddphoto
    Inherits System.Web.UI.UserControl
    Dim myBanner As New SonyAlphaLibs.Banner
    Dim myPhotos As List(Of SonyAlphaLibs.BannerPhoto)
    Dim bannerPhoto As New SonyAlphaLibs.BannerPhoto
    Dim bolUpdate As Boolean
    Sub LoadBanner(ByVal id As String)
        myBanner.Id = CInt(id)
        myBanner = myBanner.getById(CN.ConnectionString)
        txtName.Text = myBanner.Name
        ddlBannerType.SelectedIndex = myBanner.BannerType

        myPhotos = myBanner.ListPhotos
        Dim arr As New ArrayList
        For Each Photo As SonyAlphaLibs.BannerPhoto In myPhotos
            Dim str As String = ""
            str = Photo.SortOrder & "*" & Photo.ImageUrl & "*" & Photo.Link2
            arr.Add(str)
        Next
        hdfPhotos.Value = String.Join("|", arr.ToArray)
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim id As String
        id = Request.QueryString("id")
        If id = "" Then
            'thêm 
            bolUpdate = False
        Else
            bolUpdate = True
        End If

        If bolUpdate Then
            LoadBanner(id)
        End If
    End Sub

    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        myBanner.Name = txtName.Text.Trim
        myBanner.BannerType = ddlBannerType.SelectedValue

        Dim str As String = hdfPhotos.Value

        Dim arr As Array
        arr = str.Split("|")

        myPhotos.Clear()
        For Each item As String In arr
            Dim arrItem As Array
            arrItem = item.Split("*")
            Dim bannerPhoto As New SonyAlphaLibs.BannerPhoto
            bannerPhoto.BannerId = myBanner.Id
            bannerPhoto.ImageUrl = arrItem(1).ToString
            bannerPhoto.SortOrder = CInt(arrItem(0))
            bannerPhoto.Link2 = arrItem(2).ToString
            myPhotos.Add(bannerPhoto)
        Next
        myBanner.ListPhotos = myPhotos

        Dim result
        result = myBanner.update(CN.ConnectionString)
        myBanner.setPhoto2Banner(CN.ConnectionString)

        If result Then
            ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('Lưu banner thành công !!!');", True)
        Else
            ScriptManager.RegisterStartupScript(Me, GetType(String), "Message", "alert('lưu banner không thành công !!!');", True)
        End If
    End Sub
End Class