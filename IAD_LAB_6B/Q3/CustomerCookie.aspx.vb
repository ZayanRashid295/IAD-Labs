Partial Class CustomerCookie
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Request.Cookies("CustomerInfo") IsNot Nothing Then
                Dim name As String = Request.Cookies("CustomerInfo")("Name")
                Dim dateTime As String = Request.Cookies("CustomerInfo")("DateTime")
                lblMessage.Text = "<strong>Cookie Found.</strong><br/>Welcome, Mr. " & name & "<br/>Last Visit: " & dateTime
                txtName.Text = name
            Else
                lblMessage.Text = "Unknown Customer"
            End If
        End If
    End Sub

    Protected Sub btnCreateCookie_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim name As String = txtName.Text.Trim()
        If name <> "" Then
            Dim customerCookie As New HttpCookie("CustomerInfo")
            customerCookie("Name") = name
            customerCookie("DateTime") = DateTime.Now.ToString("f")
            customerCookie.Expires = DateTime.Now.AddDays(30)
            Response.Cookies.Add(customerCookie)
            lblMessage.Text = "<strong>Cookie Created.</strong><br/>New Customer: Mr. " & name
        End If
    End Sub
End Class
