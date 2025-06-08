Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub btnGenerate_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim rows As Integer = Integer.Parse(ddlRows.SelectedValue)
        Dim columns As Integer = Integer.Parse(ddlColumns.SelectedValue)

        Dim table As New Table()
        table.BorderColor = System.Drawing.Color.Red
        table.BorderWidth = 1

        For i As Integer = 1 To rows
            Dim row As New TableRow()

            For j As Integer = 1 To columns
                Dim cell As New TableCell()

                If i = rows Then
                    Dim rbl As New RadioButtonList()
                    rbl.Items.Add(New ListItem("1"))
                    rbl.Items.Add(New ListItem("2"))
                    rbl.Items.Add(New ListItem("3"))
                    rbl.Items.Add(New ListItem("4"))
                    cell.Controls.Add(rbl)
                    cell.BackColor = System.Drawing.Color.Gray
                ElseIf j = 1 Then
                    Dim ddl As New DropDownList()
                    ddl.Items.Add(New ListItem("Urdu"))
                    ddl.Items.Add(New ListItem("English"))
                    ddl.Items.Add(New ListItem("Arabic"))
                    ddl.Items.Add(New ListItem("Chinese"))
                    cell.Controls.Add(ddl)
                Else
                    cell.Text = String.Format("{0},{1}", i, j)
                End If

                row.Cells.Add(cell)
            Next

            table.Rows.Add(row)
        Next

        phTable.Controls.Clear()
        phTable.Controls.Add(table)
    End Sub
End Class

