Imports System.IO
Imports System.Configuration

Public Class FileManager
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim strDir As String = Server.MapPath("~/upload")
            Dim fRootNode As New TreeNode("Root", strDir, "/img/folder/root.gif")
            trvFolder.Nodes.Add(fRootNode)
            BindFolder(strDir, fRootNode)
        End If
    End Sub
    Public Sub BindFolder(ByVal strPath As String, ByVal node As TreeNode)
        Dim strDpath As String
        For Each strDpath In System.IO.Directory.GetDirectories(strPath)
            Dim oDirectory As New DirectoryInfo(strDpath)
            Dim fNode As New TreeNode(oDirectory.Name, oDirectory.FullName, "/img/folder/folder_closed.gif")
            node.ChildNodes.Add(fNode)
            BindFolder(strDpath, fNode)
        Next
    End Sub
    Function GetURL(ByVal strPath As String) As String
        Try
            Dim str As String
            str = strPath.Substring(strPath.IndexOf("\upload\"))
            str = str.Replace("\", "/")
            GetURL = ConfigurationManager.AppSettings("URL") & str
        Catch ex As Exception
            Return ""
        End Try
    End Function

    Private Sub lstImage_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles lstImage.SelectedIndexChanged
        Try
            txtURL.Text = GetURL(trvFolder.SelectedNode.Value) & "/" & lstImage.SelectedValue
            ifrBrowse.Attributes.Add("src", txtURL.Text)
        Catch ex As Exception
        End Try
    End Sub

    Private Sub btnOK_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnOK.Click
        Try
            Dim filePath As String
            Dim fileName As String
            Dim NewsPath As String = trvFolder.SelectedNode.Value

            filePath = FileUpload1.PostedFile.FileName
            fileName = Path.GetFileName(filePath)
            If fileName <> "" Then
                Select Case LCase(Path.GetExtension(filePath))
                    Case ".7z", ".doc", ".pdf", ".txt", ".xls", ".jpg", ".bmp", ".png", ".gif", ".zip", ".rar", ".wmv", ".wma", ".mp3", ".swf", ".flv", ".mp4", ".mov"
                        FileUpload1.PostedFile.SaveAs(NewsPath & "\" & fileName)
                        lstImage.Items.Insert(lstImage.Items.Count, fileName)
                    Case Else
                End Select
            End If

        Catch ex As Exception
            txtURL.Text = ex.Message
        End Try

    End Sub

    Private Sub btnCreateFolder_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCreateFolder.Click
        Try
            Dim filePath As String
            Dim NewsPath As String = trvFolder.SelectedNode.Value
            filePath = txtFolder.Text
            Dim oFolder As DirectoryInfo
            If filePath <> "" Then
                oFolder = Directory.CreateDirectory(NewsPath & "\" & filePath)
                Dim node As New TreeNode(filePath, oFolder.FullName, "../img/folder/folder_closed.gif")
                trvFolder.SelectedNode.ChildNodes.Add(node)
            End If
        Catch ex As Exception
            txtURL.Text = ex.Message
        End Try
    End Sub

    Private Sub trvFolder_SelectedNodeChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles trvFolder.SelectedNodeChanged
        Dim strDir As String = trvFolder.SelectedNode.Value
        Dim oFolder As New DirectoryInfo(strDir)
        Dim oFiles() As FileInfo = oFolder.GetFiles()
        Dim oFile As FileInfo
        lstImage.Items.Clear()
        For Each oFile In oFiles
            Select Case LCase(oFile.Extension)
                Case ".doc", ".pdf", ".txt", ".xls", ".jpg", ".bmp", ".png", ".gif", ".zip", ".rar", ".wmv", ".wma", ".mp3", ".swf", ".flv", ".mp4"
                    lstImage.Items.Insert(lstImage.Items.Count, oFile.Name)
                Case Else
            End Select
        Next
        txtURL.Text = GetURL(strDir)
    End Sub

    Private Sub btnDeleteFolder_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDeleteFolder.Click
        Try
            Dim NewsPath As String = trvFolder.SelectedNode.Value
            Directory.Delete(NewsPath)
            If trvFolder.SelectedNode.Parent IsNot Nothing Then
                trvFolder.SelectedNode.Parent.ChildNodes.Remove(trvFolder.SelectedNode)
            Else
                trvFolder.Nodes.Remove(trvFolder.SelectedNode)
            End If
        Catch ex As Exception
            txtURL.Text = "không thể xóa thư mục vì còn file trong đó"
        End Try
    End Sub

    Private Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        Try
            Dim NewsPath As String = trvFolder.SelectedNode.Value
            Dim oFile As FileInfo
            oFile = New FileInfo(NewsPath & "\" & lstImage.SelectedValue)
            If (oFile.Exists) Then
                File.Delete(oFile.FullName)
            End If
            lstImage.Items.Remove(lstImage.SelectedValue)
        Catch ex As Exception
            txtURL.Text = "Lỗi không thể xóa file "
        End Try
    End Sub
End Class