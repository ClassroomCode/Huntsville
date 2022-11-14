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
        <div>
            <asp:CheckBox ID="ShowAddressCheckBox" runat="server" AutoPostBack="true" OnCheckedChanged="ShowAddressCheckBox_CheckedChanged" />
            <asp:Panel ID="AddressPanel" runat="server">
                <asp:TextBox ID="StreetTextBox" runat="server"></asp:TextBox>
                <br /><br />
                <asp:TextBox ID="CityTextBox" runat="server"></asp:TextBox>
                <br /><br />
                <asp:DropDownList ID="StateDropDownList" runat="server">
                    <asp:ListItem Text="Alabama" Value="AL"></asp:ListItem>
                    <asp:ListItem Text="Oregon" Value="OR"></asp:ListItem>
                    <asp:ListItem Text="Iowa" Value="IA"></asp:ListItem>
                </asp:DropDownList>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
