Imports Microsoft.VisualBasic
Imports System.Configuration
Imports System.Data
Imports System.Data.SqlClient
Imports System.Text
Imports System.Security.Cryptography

Public Module Db
    Public _DataSet As DataSet
    Public CN As New SqlConnection
    Public Function InitDatabase() As Boolean
        Try
            CN.ConnectionString = ConfigurationManager.ConnectionStrings("ApplicationServices").ConnectionString

            If CN.State <> Data.ConnectionState.Open Then
                CN.Open()
                Return True
            Else
                CN.Close()
                CN.Open()
            End If
            Return True
        Catch ex As Exception
            Return False
        End Try
    End Function

    Public Function GetData(ByVal cmd As SqlCommand) As DataTable
        Try
            Dim ds As New DataSet
            Dim da As New SqlDataAdapter

            da.SelectCommand = cmd
            cmd.Connection = CN
            da.Fill(ds)

            Return ds.Tables(0)
        Catch ex As Exception
            Return New DataTable
        End Try
    End Function
    Public Function ExecuteScalar(ByVal cmd As SqlCommand) As Integer
        Try
            cmd.Connection = CN
            Return cmd.ExecuteScalar
        Catch ex As Exception
            Return 0
        End Try
    End Function
    Public Sub DataToControl(ByRef objControl As Object, ByVal DataSource As Object)
        objControl.DataSource = DataSource
        objControl.DataBind()
    End Sub
    Public Function FillDataPaging(ByVal tmpTable As DataTable, ByVal intRec As Integer, ByVal page As Integer) As DataTable
        Dim tmp As New DataTable
        Dim reccount As Integer = tmpTable.Rows.Count
        Dim i As Integer
        Dim intMinRec As Integer = (intRec * page) - intRec
        Dim intMaxRec As Integer = (intRec * page) - 1
        If intMinRec >= reccount Then intMinRec = reccount - 1
        If intMaxRec >= reccount Then intMaxRec = reccount - 1
        tmp = tmpTable.Clone
        For i = intMinRec To intMaxRec
            tmp.ImportRow(tmpTable.Rows(i))
        Next
        tmp.AcceptChanges()
        Return tmp
    End Function

    Public Function PagingPage(ByVal records As Integer, ByVal intPages As Integer, ByVal TotalPages As Integer, ByVal PageCurrent As Integer, ByVal strURL As String)
        Dim startNo, endNo, Segment, strPage, No

        If records = 0 Then
            PagingPage = ""
            Exit Function
        End If

        strPage = ""
        If TotalPages <= 1 Then
            PagingPage = ""
            Exit Function
        End If
        strURL = strURL.Replace(".aspx", "")
        'Có bao nhiêu phân đoạn
        Segment = PageCurrent \ intPages
        If PageCurrent Mod intPages > 0 Then
            Segment = Segment + 1
        End If

        startNo = Segment * intPages - intPages + 1
        If Segment * intPages > TotalPages Then
            endNo = TotalPages
        Else
            endNo = Segment * intPages
        End If

        'liên kết Previous
        strPage = ""
        If Segment > 1 Then
            strPage = strPage & "<a  href="""
            strPage = strPage & strURL & "_page"
            strPage = strPage & (PageCurrent - 1) & ".aspx"
            strPage = strPage & """,target='_main'><</a>"
        End If
        'Liên kết 1,2,3,4,5
        For No = startNo To endNo
            If No = CInt(PageCurrent) Then
                strPage = strPage & "<span class=""pagepadactive"">"
                strPage = strPage & No & "</span>"
            Else
                strPage = strPage & "<a href="""
                strPage = strPage & strURL & "_page"
                strPage = strPage & No & ".aspx" & """,target='_main'>"
                strPage = strPage & No & "</a>"
            End If
        Next

        'Liên kết Next
        If TotalPages > intPages * Segment Then
            strPage = strPage & "<a href="""
            strPage = strPage & strURL & "_page"
            strPage = strPage & PageCurrent + 1 & ".aspx"
            strPage = strPage & """,target='_main'>></a>"
        End If
        strPage = strPage

        PagingPage = "<div class=""Paperpad"">" & strPage & "<br style=""clear:both;""/></div>"
    End Function
    Public Function CleanURL(ByVal strUrl As String) As String
        Dim cleaned As String = ""

        strUrl = strUrl.ToLower()
        If (strUrl.Length > 60) Then
            strUrl = strUrl.Substring(0, 60)
        End If
        Dim arr1() = {"á", "à", "ả", "ã", "ạ", "â", "ấ", "ầ", "ẩ", "ẫ", "ậ", "ặ", "ắ", "ằ", "ẳ", "ẵ", "ă"}
        Dim arr2() = {"đ"}
        Dim arr3() = {"é", "è", "ẻ", "ẽ", "ẹ", "ê", "ệ", "ế", "ể", "ề", "ễ", "iệ"}
        Dim arr4() = {"ọ", "ó", "ò", "ỏ", "õ", "ô", "ồ", "ố", "ộ", "ổ", "ỗ", "ơ", "ớ", "ờ", "ở", "ỡ", "ợ"}
        Dim arr5() = {"í", "ì", "ỉ", "ĩ", "ị", "ịê"}
        Dim arr6() = {"ý", "ỳ", "ỷ", "ỹ"}
        Dim arr7() = {"ú", "ù", "ủ", "ũ", "ụ", "ư", "ứ", "ừ", "ử", "ữ", "ự"}
        ' trim...
        strUrl = strUrl.Trim()

        ' fix quotes and ampersand...
        strUrl = strUrl.Replace("#", "")
        strUrl = strUrl.Replace("@", "")
        strUrl = strUrl.Replace("$", "")
        strUrl = strUrl.Replace(" ", "")
        strUrl = strUrl.Replace("-", "")
        strUrl = strUrl.Replace("_", "")
        strUrl = strUrl.Replace(".", "")
        strUrl = strUrl.Replace(",", "")
        strUrl = strUrl.Replace("`", "")
        strUrl = strUrl.Replace(":", "")
        strUrl = strUrl.Replace("|", "")
        strUrl = strUrl.Replace(";", "")
        strUrl = strUrl.Replace("~", "")
        strUrl = strUrl.Replace("/", "")
        strUrl = strUrl.Replace("\", "")
        strUrl = strUrl.Replace("'", "")
        strUrl = strUrl.Replace("''", "")
        strUrl = strUrl.Replace("?", "")
        strUrl = strUrl.Replace(">", "")
        strUrl = strUrl.Replace("<", "")
        strUrl = strUrl.Replace("[", "")
        strUrl = strUrl.Replace("]", "")
        strUrl = strUrl.Replace("{", "")
        strUrl = strUrl.Replace("}", "")
        strUrl = strUrl.Replace("(", "")
        strUrl = strUrl.Replace(")", "")
        strUrl = strUrl.Replace("%", "")
        strUrl = strUrl.Replace("*", "")
        strUrl = strUrl.Replace("!", "")
        strUrl = strUrl.Replace("+", "")
        strUrl = strUrl.Replace("&quot;", "")
        strUrl = strUrl.Replace("&nbsp;", "")
        strUrl = strUrl.Replace("&amp;", "va")
        strUrl = strUrl.Replace("&", "va")
        strUrl = strUrl.Replace(Chr(34), "")
        strUrl = strUrl.Replace(ChrW(&H22), "")

        Dim y As Integer
        For y = 0 To arr1.Length - 1
            If strUrl.IndexOf(arr1(y)) <> -1 Then
                strUrl = strUrl.Replace(arr1(y), "a")
            End If
        Next
        For y = 0 To arr2.Length - 1
            If strUrl.IndexOf(arr2(y)) <> -1 Then
                strUrl = strUrl.Replace(arr2(y), "d")
            End If
        Next
        For y = 0 To arr3.Length - 1
            If strUrl.IndexOf(arr3(y)) <> -1 Then
                strUrl = strUrl.Replace(arr3(y), "e")
            End If
        Next
        For y = 0 To arr4.Length - 1
            If strUrl.IndexOf(arr4(y)) <> -1 Then
                strUrl = strUrl.Replace(arr4(y), "o")
            End If
        Next
        For y = 0 To arr5.Length - 1
            If strUrl.IndexOf(arr5(y)) <> -1 Then
                strUrl = strUrl.Replace(arr5(y), "i")
            End If
        Next
        For y = 0 To arr6.Length - 1
            If strUrl.IndexOf(arr6(y)) <> -1 Then
                strUrl = strUrl.Replace(arr6(y), "y")
            End If
        Next
        For y = 0 To arr7.Length - 1
            If strUrl.IndexOf(arr7(y)) <> -1 Then
                strUrl = strUrl.Replace(arr7(y), "u")
            End If
        Next

        cleaned = strUrl
        Return cleaned
    End Function
    Public Function ShowTip(ByVal str As String) As String
        ShowTip = "Tip('" & str & "');"
    End Function
    Public Function GoURL(ByVal str As String) As String
        GoURL = "window.open('/tool/" & str & "');"
    End Function
    Public Function English2Vietnamese(ByVal strDate As String) As String
        Dim strResult As String = ""
        'Convert day
        Dim sD As String = Day(strDate)
        Dim sM As String = Month(strDate)
        Dim sY As String = Year(strDate)
        If strDate.IndexOf("Monday") <> -1 Then
            strResult = "Thứ hai"
        End If
        If strDate.IndexOf("Tuesday") <> -1 Then
            strResult = "Thứ ba"
        End If
        If strDate.IndexOf("Wednesday") <> -1 Then
            strResult = "Thứ tư"
        End If
        If strDate.IndexOf("Thursday") <> -1 Then
            strResult = "Thứ năm"
        End If
        If strDate.IndexOf("Friday") <> -1 Then
            strResult = "Thứ sáu"
        End If
        If strDate.IndexOf("Saturday") <> -1 Then
            strResult = "Thứ bảy"
        End If
        If strDate.IndexOf("Sunday") <> -1 Then
            strResult = "Chủ nhật"
        End If
        strResult = strResult & ", " & sD & "/" & sM & "/" & sY
        Return strResult
    End Function
    Public Sub MakeTextBoxNumberable(ByVal obj As TextBox)
        obj.Attributes.Add("onkeypress", "var key;if(window.event){ key = event.keyCode;}else if(event.which){ key = event.which;} return (key == 23 || key == 45 || key == 13 || key == 8 || key == 9 || key == 189 || (key >= 48 && key <= 58) )")
    End Sub

    Public Function ProductCategorySeUrl(ByVal id As Integer, ByVal Title As String, Optional ByVal page As Integer = 1) As String
        Dim result As String
        Title = CleanURL(Title)
        If ConfigurationManager.AppSettings("vird") <> "" Then
            result = "/" & ConfigurationManager.AppSettings("vird") & "/product/category/" & id & "_" & Title
        Else
            result = "/product/category/" & id & "_" & Title
        End If
        result = result & ".aspx"
        Return result
    End Function
    Public Function ProductSeUrl(ByVal id As Integer, ByVal CatId As Integer, ByVal Title As String) As String
        Dim result As String
        Title = CleanURL(Title)
        If ConfigurationManager.AppSettings("vird") <> "" Then
            result = "/" & ConfigurationManager.AppSettings("vird") & "/productdetail" & CatId & "_" & id & "_" & Title
        Else
            result = "/productdetail" & CatId & "_" & id & "_" & Title
        End If
        result = result & ".aspx"
        Return result
    End Function
    Public Function NewsCategorySeUrl(ByVal id As Integer, ByVal Title As String, Optional ByVal page As Integer = 1) As String
        Dim result As String
        Title = CleanURL(Title)
        If ConfigurationManager.AppSettings("vird") <> "" Then
            result = "/" & ConfigurationManager.AppSettings("vird") & "/news/category/" & id & "_" & Title
        Else
            result = "/news/category/" & id & "_" & Title
        End If
        If page <> vbNull And page > 1 Then
            result = result & "_page" & page
        End If
        result = result & ".aspx"
        Return result
    End Function
    Public Function NewsSeUrl(ByVal id As Integer, ByVal Title As String) As String
        Dim result As String
        Title = CleanURL(Title)
        If ConfigurationManager.AppSettings("vird") <> "" Then
            result = "/" & ConfigurationManager.AppSettings("vird") & "/news/detail/" & id & "_" & Title
        Else
            result = "/news/detail/" & id & "_" & Title
        End If
        result = result & ".aspx"
        Return result
    End Function
    Public Function PageSeUrl(ByVal id As Integer, ByVal Title As String) As String
        Dim result As String
        Title = CleanURL(Title)
        If ConfigurationManager.AppSettings("vird") <> "" Then
            result = "/" & ConfigurationManager.AppSettings("vird") & "/page/" & id & "_" & Title
        Else
            result = "/page/" & id & "_" & Title
        End If
        result = result & ".aspx"
        Return result
    End Function
    Public Function PhotoAlbumSeUrl(ByVal id As Integer) As String
        Dim result As String

        Return result
    End Function
    Public Function base64Encode(ByVal sData As String) As String
        Try
            Dim encData_byte As Byte() = New Byte(sData.Length - 1) {}
            encData_byte = System.Text.Encoding.UTF8.GetBytes(sData)
            Dim encodedData As String = Convert.ToBase64String(encData_byte)
            Return (encodedData)
        Catch ex As Exception
            Throw (New Exception("Error in base64Encode" & ex.Message))
        End Try
    End Function
    Public Function base64Decode(ByVal sData As String) As String
        Dim encoder As New System.Text.UTF8Encoding()
        Dim utf8Decode As System.Text.Decoder = encoder.GetDecoder()
        Dim todecode_byte As Byte() = Convert.FromBase64String(sData)
        Dim charCount As Integer = utf8Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length)
        Dim decoded_char As Char() = New Char(charCount - 1) {}
        utf8Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0)
        Dim result As String = New [String](decoded_char)
        Return result
    End Function

    Public Function GetBannerPos(ByVal pos As Integer) As String
        Try

            Select Case pos
                Case 0
                    Return "Full width"
                Case 1
                    Return "Trái"
                Case 2
                    Return "Phải"
                Case Else
                    Return "error"
            End Select


        Catch ex As Exception
            Return "error"
        End Try
    End Function
    Public Function GetURL(ByVal strPath As String) As String
        Try
            Dim str As String
            str = strPath.Substring(strPath.IndexOf("\upload\"))
            str = str.Replace("\", "/")
            GetURL = ConfigurationManager.AppSettings("URL") & str
        Catch ex As Exception
            Return ""
        End Try
    End Function
End Module
