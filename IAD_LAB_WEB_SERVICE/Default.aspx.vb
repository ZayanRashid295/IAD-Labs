Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btnAdd_Click(sender As Object, e As EventArgs)
        Dim a As Double = Double.Parse(txtA.Text)
        Dim b As Double = Double.Parse(txtB.Text)
        lblResult.Text = "Result: " & (a + b).ToString()
    End Sub

    Protected Sub btnSubtract_Click(sender As Object, e As EventArgs)
        Dim a As Double = Double.Parse(txtA.Text)
        Dim b As Double = Double.Parse(txtB.Text)
        lblResult.Text = "Result: " & (a - b).ToString()
    End Sub

    Protected Sub btnMultiply_Click(sender As Object, e As EventArgs)
        Dim a As Double = Double.Parse(txtA.Text)
        Dim b As Double = Double.Parse(txtB.Text)
        lblResult.Text = "Result: " & (a * b).ToString()
    End Sub

    Protected Sub btnDivide_Click(sender As Object, e As EventArgs)
        Dim a As Double = Double.Parse(txtA.Text)
        Dim b As Double = Double.Parse(txtB.Text)
        If b = 0 Then
            lblResult.Text = "Cannot divide by zero."
        Else
            lblResult.Text = "Result: " & (a / b).ToString()
        End If
    End Sub
End Class
