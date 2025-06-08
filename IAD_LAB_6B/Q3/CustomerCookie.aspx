<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CustomerCookie.aspx.vb" Inherits="CustomerCookie" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Cookie Example</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            background-color: #F0F4F8;
            color: #2C3E50;
            font-family: 'Segoe UI', sans-serif;
        }

        .header {
            background-color: #2C3E50;
            color: #ECF0F1;
            text-align: center;
            font-size: 40px;
            padding: 20px 0;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .messageBox {
            background-color: #ECF0F1;
            padding: 20px;
            border: 1px solid #BDC3C7;
            width: calc(100% - 40px);
            margin: 20px 0;
            border-radius: 5px;
            font-size: 18px;
            text-align: center;
        }

        #form1 {
            display: flex;
            flex-direction: column;
            width: fit-content;
            gap: 20px;
            margin-left: 30px;
        }

        label {
            font-weight: bold;
            font-size: 18px;
            color: #2C3E50;
        }

        .textbox {
            padding: 10px;
            width: 250px;
            border: 1px solid #BDC3C7;
            border-radius: 5px;
            font-size: 16px;
        }

        .button {
            padding: 10px 20px;
            background-color: #2C3E50;
            color: #ECF0F1;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: fit-content;
        }

        .button:hover {
            background-color: #34495E;
        }

    </style>
</head>
<body>
    <div class="header">Customer Cookie System</div>

    <form id="form1" runat="server">
        <asp:Label ID="lblMessage" runat="server" CssClass="messageBox" Text="Unknown Customer"></asp:Label>

        <div class="form-container">
            <label for="txtName">Name:</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="textbox" />
        </div>
        
        <asp:Button ID="btnCreateCookie" runat="server" Text="Create Cookie" CssClass="button" OnClick="btnCreateCookie_Click" />
    </form>
</body>
</html>
