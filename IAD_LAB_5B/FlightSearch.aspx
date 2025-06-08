<%@ Page Language="VB" AutoEventWireup="true" CodeFile="FlightSearch.aspx.vb" Inherits="FlightSearch" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Search Flights</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            background-color: #E0E1DD;
            color: #0D1B2A;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .header {
            background-color: #1B263B;
            color: #E0E1DD;
            text-align: center;
            font-size: 40px;
            padding: 20px 0;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
        }

        h2 {
            margin: 30px 20px 10px;
            color: #1B263B;
        }

        .search-info {
            display: flex;
            flex-direction: column;
            gap: 15px;
            padding: 30px 50px;
            max-width: 600px;
            margin: auto;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .form-group {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .form-group label {
            width: 200px;
            font-weight: bold;
            color: #1B263B;
        }

        input[type="text"] {
            flex: 1;
            padding: 8px 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .search-btn {
            width: fit-content;
            background-color: #415A77;
            color: #E0E1DD;
            padding: 10px 24px;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            margin-top: 10px;
        }

        .search-btn:hover {
            background-color: #1B263B;
        }

        .grid-container {
            padding: 30px 50px;
            max-width: 900px;
            margin: auto;
        }

        .aspNetDisabled, .aspNetDisabled input {
            background-color: #f5f5f5 !important;
            color: #666 !important;
        }

        .gridview {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        .gridview th, .gridview td {
            border: 1px solid #ccc;
            padding: 8px;
        }

        .gridview th {
            background-color: #1B263B;
            color: #fff;
        }
    </style>
</head>
<body>
    <header class="header">Search Flights Here</header>

    <form id="form1" runat="server">
        <div class="search-info">
            <h2>Search Flights</h2>

            <div class="form-group">
                <label for="txtScheduleID">Schedule ID:</label>
                <asp:TextBox ID="txtScheduleID" runat="server" />
            </div>

            <div class="form-group">
                <label for="txtDepartureAirportID">Departure Airport ID:</label>
                <asp:TextBox ID="txtDepartureAirportID" runat="server" />
            </div>

            <div class="form-group">
                <label for="txtArrivalAirportID">Arrival Airport ID:</label>
                <asp:TextBox ID="txtArrivalAirportID" runat="server" />
            </div>

            <asp:Button ID="btnSearch" runat="server" CssClass="search-btn" Text="Search" OnClick="btnSearch_Click" />
        </div>

        <div class="grid-container">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" CssClass="gridview" />
        </div>
    </form>
</body>
</html>
