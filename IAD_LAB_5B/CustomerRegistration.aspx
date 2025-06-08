<%@ Page Language="VB" AutoEventWireup="true" CodeFile="CustomerRegistration.aspx.vb" Inherits="CustomerRegistration" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Airline Management System</title>
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
            box-shadow: 0 2px 6px rgba(0,0,0,0.2);
        }

        h2 {
            margin: 30px 20px 10px;
            color: #1B263B;
        }

        .reg-info {
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
            width: 130px;
            font-weight: bold;
            color: #1B263B;
        }

        input[type="text"], input[type="email"], input[type="date"], select {
            flex: 1;
            padding: 8px 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .sub-btn {
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

        .sub-btn:hover {
            background-color: #1B263B;
        }
    </style>
</head>
<body>
    <header class="header">Airline Management System</header>
    <h2>Customer Registration</h2>
    <form runat="server" class="reg-info">
        <div class="form-group">
            <label for="txtName">Name:</label>
            <asp:TextBox ID="txtName" runat="server" />
        </div>
        <div class="form-group">
            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" />
        </div>
        <div class="form-group">
            <label for="txtPhone">Phone:</label>
            <asp:TextBox ID="txtPhone" runat="server" />
        </div>
        <div class="form-group">
            <label for="txtAddress">Address:</label>
            <asp:TextBox ID="txtAddress" runat="server" />
        </div>
        <div class="form-group">
            <label for="ddlGender">Gender:</label>
            <asp:DropDownList ID="ddlGender" runat="server">
                <asp:ListItem Text="Male" Value="M" />
                <asp:ListItem Text="Female" Value="F" />
                <asp:ListItem Text="Other" Value="O" />
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <label for="txtDOB">Date of Birth:</label>
            <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" />
        </div>
        <asp:Button ID="btnRegister" runat="server" CssClass="sub-btn" Text="Submit" OnClick="btnRegister_Click" />
    </form>
</body>
</html>
