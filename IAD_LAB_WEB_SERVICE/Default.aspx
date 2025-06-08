<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Math Operations</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Simple Math Operations</h2>
        
        <asp:Label ID="lblA" runat="server" Text="Enter First Number (A): " />
        <asp:TextBox ID="txtA" runat="server" /><br /><br />
        
        <asp:Label ID="lblB" runat="server" Text="Enter Second Number (B): " />
        <asp:TextBox ID="txtB" runat="server" /><br /><br />
        
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
        <asp:Button ID="btnSubtract" runat="server" Text="Subtract" OnClick="btnSubtract_Click" />
        <asp:Button ID="btnMultiply" runat="server" Text="Multiply" OnClick="btnMultiply_Click" />
        <asp:Button ID="btnDivide" runat="server" Text="Divide" OnClick="btnDivide_Click" /><br /><br />

        <asp:Label ID="lblResult" runat="server" Font-Bold="true" />
    </form>
</body>
</html>
