Partial Class Builder
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("role") <> "builder" Then
            Response.Redirect("Default.aspx")
        End If
    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs)
        ' Store survey question in session for now
        Dim question As String = txtQuestion.Text
        Dim qType As String = ddlType.SelectedValue
        Dim options As String = txtOptions.Text

        ' Ideally you would save to a database
        lblStatus.Text = "Question saved successfully!"
    End Sub
End Class
