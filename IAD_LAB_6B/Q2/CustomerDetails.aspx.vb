Imports System.Data.SqlClient

Partial Class CustomerDetails
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim customerId As String = Request.QueryString("cid")
            If Not String.IsNullOrEmpty(customerId) Then
                ShowCustomerDetails(customerId)
            End If
        End If
    End Sub

    Private Sub ShowCustomerDetails(customerId As String)
        Dim connStr As String = "Data Source=WIN-333ABQIFIBO\MSSQLSERVER01;Initial Catalog=AilineManagementDatabase;Trusted_Connection=True"
        Dim query As String = "SELECT * FROM Customer WHERE CustomerID = @CustomerID"

        Using conn As New SqlConnection(connStr)
            Using cmd As New SqlCommand(query, conn)
                cmd.Parameters.AddWithValue("@CustomerID", customerId)
                conn.Open()

                Dim reader As SqlDataReader = cmd.ExecuteReader()
                If reader.Read() Then
                    lblDetails.Text = "<strong>Customer ID:</strong> " & reader("CustomerID") & "<br/>" &
                                      "<strong>Name:</strong> " & reader("Name") & "<br/>" &
                                      "<strong>Email:</strong> " & reader("Email") & "<br/>" &
                                      "<strong>Gender:</strong> " & reader("Gender") & "<br/>"
                Else
                    lblDetails.Text = "Customer not found."
                End If
            End Using
        End Using
    End Sub
End Class
