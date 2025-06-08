Imports System.Data.SqlClient

Partial Class CustomerRegistration
    Inherits System.Web.UI.Page

    Protected Sub btnRegister_Click(sender As Object, e As EventArgs)
        Dim connStr As String = "Data Source=WIN-333ABQIFIBO\MSSQLSERVER01;Initial Catalog=AilineManagementDatabase;Integrated Security=True"
        Dim con As New SqlConnection(connStr)

        Dim cmd As New SqlCommand("INSERT INTO Customer (CustomerID, Name, Email, Phone, Address, Gender, DOB) " &
                                  "VALUES ((SELECT ISNULL(MAX(CustomerID), 0) + 1 FROM Customer), @Name, @Email, @Phone, @Address, @Gender, @DOB)", con)

        cmd.Parameters.AddWithValue("@Name", txtName.Text)
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text)
        cmd.Parameters.AddWithValue("@Phone", txtPhone.Text)
        cmd.Parameters.AddWithValue("@Address", txtAddress.Text)
        cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue)
        cmd.Parameters.AddWithValue("@DOB", txtDOB.Text)

        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
    End Sub
End Class
