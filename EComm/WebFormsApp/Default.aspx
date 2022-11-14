<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormsApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox> 
            <asp:Button ID="ShowGreetingButton" runat="server" Text="Button" OnClick="ShowGreetingButton_Click" />
            <br /><br />
            <asp:Label ID="GreetingLabel" runat="server" Text="Label"></asp:Label>    
        </div>
    </form>
</body>
</html>
