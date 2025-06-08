Partial Class Admin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("role") <> "admin" Then
            Response.Redirect("Default.aspx")
        End If
    End Sub

    Protected Sub btnSaveSettings_Click(sender As Object, e As EventArgs)
        If chkAnonymity.Checked Then
            lblSaveStatus.Text = "Anonymity Enabled"
        Else
            lblSaveStatus.Text = "Anonymity Disabled"
        End If

        ' Dummy result for now
        lblResults.Text = "Surveyor 1: Red<br />Surveyor 2: Blue<br />"
    End Sub
End Class
