<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<html>
<head><title>Survey System</title></head>
<body>
    <form runat="server">
        <h2>Select Your Role</h2>
        <asp:DropDownList ID="ddlRole" runat="server">
            <asp:ListItem Text="Select Role" Value="" />
            <asp:ListItem Text="Admin" Value="Admin" />
            <asp:ListItem Text="Builder" Value="Builder" />
            <asp:ListItem Text="Surveyor" Value="Surveyor" />
        </asp:DropDownList><br /><br />
        <asp:Button ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click" />
    </form>
</body>
</html>