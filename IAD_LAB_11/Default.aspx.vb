Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs)
        Dim user As String = txtUsername.Text.ToLower()
        Dim pass As String = txtPassword.Text

        Select Case user
            Case "admin"
                If pass = "admin" Then
                    Session("role") = "admin"
                    Response.Redirect("Admin.aspx")
                End If
            Case "builder"
                If pass = "builder" Then
                    Session("role") = "builder"
                    Response.Redirect("Builder.aspx")
                End If
            Case "surveyor"
                If pass = "surveyor" Then
                    Session("role") = "surveyor"
                    Response.Redirect("Surveyor.aspx")
                End If
            Case Else
                lblMessage.Text = "Invalid username or password."
        End Select
    End Sub
End Class
