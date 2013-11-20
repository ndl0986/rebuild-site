Imports SonyAlphaLibs
Imports SonyAlphaLibs.Services
Imports System.Net.Mail

Public Class uc_email_faq
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub btnSave_ServerClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.ServerClick
        If Page.IsPostBack Then
            Try
                Dim smtpClient As New SmtpClient
                Dim message As New MailMessage
                Dim toAddress As String = SettingServices.getByName("adminMailTo", CN.ConnectionString)
                Dim mailFrom As String = SettingServices.getByName("adminMailFrom", CN.ConnectionString)
                Dim fromAddress As New MailAddress(SettingServices.getByName("adminMailFrom", CN.ConnectionString), toAddress)

                smtpClient.Host = SettingServices.getByName("smtpHost", CN.ConnectionString)
                smtpClient.Port = SettingServices.getByName("smtpPort", CN.ConnectionString)
                smtpClient.Credentials = New Net.NetworkCredential(mailFrom, SettingServices.getByName("adminMailPass", CN.ConnectionString))
                smtpClient.EnableSsl = True

                message.From = fromAddress
                message.To.Add(txtEmail.Text)
                message.Subject = txtFullName.Text + "_" + txtPhone.Text + "_" + txtProductName.Text
                message.IsBodyHtml = False
                message.Body = "From: " + txtEmail.Text + " " + txtContent.Text
                smtpClient.Send(message)

            Catch ex As Exception

            End Try
        End If
    End Sub
End Class