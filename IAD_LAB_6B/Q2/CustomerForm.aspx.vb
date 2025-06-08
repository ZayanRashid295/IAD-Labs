Imports System.Data.SqlClient

Partial Class CustomerForm
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            LoadCustomerList()
        End If
    End Sub

    Private Sub LoadCustomerList()
        Dim connStr As String = "Data Source=WIN-333ABQIFIBO\MSSQLSERVER01;Initial Catalog=AilineManagementDatabase;Trusted_Connection=True"
        Using conn As New SqlConnection(connStr)
            Dim cmd As New SqlCommand("SELECT CustomerID, Name FROM Customer", conn)
            conn.Open()
            Dim reader As SqlDataReader = cmd.ExecuteReader()
            While reader.Read()
                lstCustomers.Items.Add(New ListItem(reader("Name").ToString(), reader("CustomerID").ToString()))
            End While
        End Using
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        If lstCustomers.SelectedIndex <> -1 Then
            Dim selectedId As String = lstCustomers.SelectedValue
            Response.Redirect("CustomerDetails.aspx?cid=" & selectedId)
        End If
    End Sub
End Class
