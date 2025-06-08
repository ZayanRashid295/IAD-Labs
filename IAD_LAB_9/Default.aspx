<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          
            <asp:ListBox ID="ListBox" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ListBox_SelectedIndexChanged">
                <asp:ListItem Text="Java" Value="Java"></asp:ListItem>
                <asp:ListItem Text="JavaScript" Value="JavaScript"></asp:ListItem>
                <asp:ListItem Text="C#" Value="C#"></asp:ListItem>
                <asp:ListItem Text="C++" Value="C++"></asp:ListItem>      
                <asp:ListItem Text="C" Value="C"></asp:ListItem>
                <asp:ListItem Text="Python" Value="Python"></asp:ListItem>     
                <asp:ListItem Text="SQL" Value="SQL"></asp:ListItem>
                <asp:ListItem Text="HTML" Value="HTML"></asp:ListItem>
                <asp:ListItem Text="CSS" Value="CSS"></asp:ListItem>
                <asp:ListItem Text="PHP" Value="PHP"></asp:ListItem>
            </asp:ListBox>
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </div>
    </form>
</body>
</html>
