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
            <asp:Panel ID="EmployeePanel" runat="server">
                <asp:Table runat="server">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label runat="server" Text="First Name"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label runat="server" Text="Last Name"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label runat="server" Text="Postal Code"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="PostalCode" Width="60" MaxLength="5" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
