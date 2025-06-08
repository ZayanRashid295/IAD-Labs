<%@ Page Language="vb" AutoEventWireup="false" CodeFile="Admin.aspx.vb" Inherits="Admin" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Admin Panel</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Admin Panel</h2>

        <asp:CheckBox ID="chkAnonymity" runat="server" Text="Enable Anonymity for Surveyors" /><br /><br />

        <asp:Button ID="btnSaveSettings" runat="server" Text="Save Settings" OnClick="btnSaveSettings_Click" /><br /><br />

        <asp:Label ID="lblSaveStatus" runat="server" ForeColor="Green" /><br /><br />

        <h3>Survey Results:</h3>
        <asp:Label ID="lblResults" runat="server" Text="(Results will be shown here.)" />
    </form>
</body>
</html>
