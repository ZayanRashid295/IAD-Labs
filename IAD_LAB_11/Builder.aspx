<%@ Page Language="vb" AutoEventWireup="false" CodeFile="Builder.aspx.vb" Inherits="Builder" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Survey Builder</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Create Survey Question</h2>

        <asp:Label ID="lblQuestion" runat="server" Text="Question:" /><br />
        <asp:TextBox ID="txtQuestion" runat="server" Width="400" /><br /><br />

        <asp:Label ID="lblType" runat="server" Text="Question Type:" /><br />
        <asp:DropDownList ID="ddlType" runat="server">
            <asp:ListItem Text="Multiple Choice" Value="MCQ" />
            <asp:ListItem Text="True/False" Value="TF" />
        </asp:DropDownList><br /><br />

        <asp:Label ID="lblOptions" runat="server" Text="Answer Options (Comma Separated):" /><br />
        <asp:TextBox ID="txtOptions" runat="server" Width="400" /><br /><br />

        <asp:Button ID="btnSave" runat="server" Text="Save Question" OnClick="btnSave_Click" /><br /><br />

        <asp:Label ID="lblStatus" runat="server" ForeColor="Green" />
    </form>
</body>
</html>
