Partial Class Surveyor
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("role") <> "surveyor" Then
            Response.Redirect("Default.aspx")
        End If

        If Not IsPostBack Then
            ' For now, just a sample question
            lblQuestion.Text = "What is your favorite color?"
            rblAnswers.Items.Add("Red")
            rblAnswers.Items.Add("Blue")
            rblAnswers.Items.Add("Green")
            rblAnswers.Items.Add("Yellow")
        End If
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs)
        lblThanks.Text = "Thank you for your response!"
    End Sub
End Class
