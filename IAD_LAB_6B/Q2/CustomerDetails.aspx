<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CustomerDetails.aspx.vb" Inherits="CustomerDetails" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Details</title>
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
        }

        .container {
            background-color: #ffffff;
            border: 1px solid #1B263B;
            margin: 30px;
            padding: 20px;
            font-size: 16px;
            width: fit-content;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .details-box {
            font-size: 18px;
            line-height: 1.6;
        }

        .details-box strong {
            color: #1B263B;
        }
    </style>
</head>
<body>
    <div class="header">Customer Details</div>
    <form id="form1" runat="server">
        <div class="container">
            <asp:Label ID="lblDetails" runat="server" CssClass="details-box" />
        </div>
    </form>
</body>
</html>
