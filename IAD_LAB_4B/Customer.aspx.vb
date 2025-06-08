Imports System.Data
Imports System.Data.SqlClient

Partial Class Customer
    Inherits System.Web.UI.Page

    Private ReadOnly connStr As String = "Data Source=WIN-333ABQIFIBO\MSSQLSERVER01;Initial Catalog=AilineManagementDatabase;Integrated Security=True"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            LoadCustomers()
        End If
    End Sub

    Private Sub LoadCustomers()
        Dim query As String = "SELECT * FROM Customer"

        Try
            Using conn As New SqlConnection(connStr),
                  adapter As New SqlDataAdapter(query, conn)

                Dim dt As New DataTable()
                adapter.Fill(dt)
                GridView1.DataSource = dt
                GridView1.DataBind()
            End Using

        Catch ex As Exception
            Response.Write("<script>alert('Error loading customers.')</script>")
        End Try
    End Sub
End Class
