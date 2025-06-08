
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btnShowW_Click(sender As Object, e As EventArgs)
        Dim W As String = HiddenFieldW.Value
        lblResult.Text = "Value of W: " & W
    End Sub
End Class

