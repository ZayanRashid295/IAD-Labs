<%@ Page Language="vb" AutoEventWireup="false" CodeFile="Surveyor.aspx.vb" Inherits="Surveyor" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Surveyor Panel</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Answer Survey</h2>

        <asp:Label ID="lblQuestion" runat="server" Text="(Your question will appear here)"></asp:Label><br /><br />

        <asp:RadioButtonList ID="rblAnswers" runat="server" /><br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit Answer" OnClick="btnSubmit_Click" /><br /><br />

        <asp:Label ID="lblThanks" runat="server" ForeColor="Green" />
    </form>
</body>
</html>
