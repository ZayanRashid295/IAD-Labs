<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Customer.aspx.vb" Inherits="Customer" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Customer Info</title>
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
            font-size: 36px;
            padding: 20px 0;
            box-shadow: 0px 3px 8px rgba(0,0,0,0.2);
        }

        .container {
            padding: 40px 60px;
        }

        h2 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #1B263B;
        }

        .gridview-container {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 25px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.08);
        }

        .gridview-container table {
            width: 100%;
            border-collapse: collapse;
            font-size: 16px;
        }

        .gridview-container th {
            background-color: #415A77;
            color: #E0E1DD;
            padding: 12px;
        }

        .gridview-container td {
            padding: 12px;
            border: 1px solid #ccc;
            color: #0D1B2A;
        }

        .gridview-container tr:nth-child(even) {
            background-color: #F5F7FA;
        }

        .gridview-container tr:hover {
            background-color: #DCE3EA;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">Customer Information</header>
        <div class="container">
            <h2>Latest 5 Customers</h2>
            <div class="gridview-container">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True" />
            </div>
        </div>
    </form>
</body>
</html>
