<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CustomerForm.aspx.vb" Inherits="CustomerForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Select Customer</title>
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
            color: #1B263B;
            text-align: center;
            margin-top: 20px;
        }

        .container {
            padding: 40px;
            width: 70%;
            margin: 0 auto;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .styled-btn {
            padding: 10px 20px;
            background-color: #1B263B;
            color: #E0E1DD;
            border: none;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
        }

        .styled-btn:hover {
            background-color: #3F4D69;
        }

        .listbox {
            width: 100%;
            padding: 10px;
            border: 1px solid #1B263B;
            border-radius: 5px;
            font-size: 16px;
        }

        .listbox option {
            padding: 10px;
        }
    </style>
</head>
<body>
    <div class="header">Customer Selection</div>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Select a Customer</h2>
            <asp:ListBox ID="lstCustomers" runat="server" CssClass="listbox"></asp:ListBox><br /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="View Details" CssClass="styled-btn" />
        </div>
    </form>
</body>
</html>
