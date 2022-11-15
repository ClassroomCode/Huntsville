<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="WebFormsApp.ProductList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource 
                ID="ProductsSqlDataSource" 
                runat="server" 
                ConnectionString="<%$ConnectionStrings:ConnStr%>"
                SelectCommand="SELECT Id, ProductName, UnitPrice FROM Products;">
            </asp:SqlDataSource>
            <asp:ListBox ID="ProductListBox" 
                runat="server"
                DataSourceID="ProductsSqlDataSource"
                DataTextField="ProductName" 
                DataValueField="ProductName"></asp:ListBox>
        </div>
    </form>
</body>
</html>
