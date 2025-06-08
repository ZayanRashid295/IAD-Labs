Imports System.Data
Imports System.Data.SqlClient

Partial Class FlightSearch
    Inherits System.Web.UI.Page

    Private Sub BindFlightGrid()
        Dim connStr As String = "Data Source=WIN-333ABQIFIBO\MSSQLSERVER01;Initial Catalog=AilineManagementDatabase;Integrated Security=True"

        Using con As New SqlConnection(connStr)
            Dim query As String = "SELECT f.FlightID, a.Model AS AircraftModel, s.FlightDate, s.DepartureTime, s.ArrivalTime, " &
                                  "da.Name AS DepartureAirport, aa.Name AS ArrivalAirport, f.Duration " &
                                  "FROM Flight f " &
                                  "INNER JOIN Aircraft a ON f.AircraftID = a.AircraftID " &
                                  "INNER JOIN Schedule s ON f.ScheduleID = s.ScheduleID " &
                                  "INNER JOIN Airport da ON f.DepartureAirportID = da.AirportID " &
                                  "INNER JOIN Airport aa ON f.ArrivalAirportID = aa.AirportID " &
                                  "WHERE f.ScheduleID = @ScheduleID AND f.DepartureAirportID = @DepartureAirportID AND f.ArrivalAirportID = @ArrivalAirportID"

            Dim cmd As New SqlCommand(query, con)
            cmd.Parameters.AddWithValue("@ScheduleID", txtScheduleID.Text)
            cmd.Parameters.AddWithValue("@DepartureAirportID", txtDepartureAirportID.Text)
            cmd.Parameters.AddWithValue("@ArrivalAirportID", txtArrivalAirportID.Text)

            Dim dt As New DataTable()
            Dim da As New SqlDataAdapter(cmd)

            Try
                da.Fill(dt)
                GridView1.DataSource = dt
                GridView1.DataBind()
            Catch ex As Exception
                Response.Write("<script>alert('Error occurred: " & ex.Message & "');</script>")
            End Try
        End Using
    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs)
        BindFlightGrid()
    End Sub
End Class
