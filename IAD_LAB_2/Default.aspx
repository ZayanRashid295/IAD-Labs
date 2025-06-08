<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="LoggerPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page Lifecycle Tracker</title>
</head>
<body>
    <form id="formLogger" runat="server">
        <div>
            <asp:Button ID="btnLogLifecycle" runat="server" Text="Track Lifecycle Events" OnClick="btnLogLifecycle_Click" />
            <br /><br />
            <asp:Button ID="btnDisplayLogs" runat="server" Text="Display Logs" OnClick="btnDisplayLogs_Click" />
            <br /><br />
            <asp:Literal ID="outputLogs" runat="server" />
        </div>
    </form>
</body>
</html>
