<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Hidden Field Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HiddenField ID="HiddenFieldW" runat="server" Value="43854" />
        
        <asp:Button ID="btnShowW" runat="server" Text="Show W Value" OnClick="btnShowW_Click" />
        <br /><br />
        <asp:Label ID="lblResult" runat="server" />
    </form>
</body>
</html>
