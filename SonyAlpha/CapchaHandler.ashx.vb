Imports System.Web
Imports System.Web.Services
Imports System.Drawing
Imports System.Drawing.Imaging

Public Class CapchaHandler
    Implements System.Web.IHttpHandler

    Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest

        Dim drawString As String
        drawString = context.Request.QueryString("query")
        Using b As New Bitmap(150, 40, PixelFormat.Format32bppArgb)
            Using g As Graphics = Graphics.FromImage(b)
                Dim rect As New Rectangle(0, 0, 149, 39)
                g.FillRectangle(Brushes.Black, rect)

                ' Create font and brush.
                Dim drawFont As New Font("Arial", 16, FontStyle.Italic Or FontStyle.Strikeout)
                Using drawBrush As New SolidBrush(Color.WhiteSmoke)
                    ' Create point for upper-left corner of drawing.
                    Dim drawPoint As New PointF(15, 10)

                    ' Draw string to screen.
                    'g.DrawRectangle(New Pen(Color.Red, 0), rect)
                    g.DrawString(drawString, drawFont, drawBrush, drawPoint)
                End Using
                b.Save(context.Response.OutputStream, ImageFormat.Jpeg)
                context.Response.ContentType = "image/jpeg"
                context.Response.[End]()
            End Using
        End Using
    End Sub

    ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class