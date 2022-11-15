<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductsBySupplier.aspx.cs" Inherits="WebFormsApp.ProductsBySupplier" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SupplierSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ECommConnStr %>" SelectCommand="SELECT [Id], [CompanyName] FROM [Suppliers] ORDER BY [CompanyName]"></asp:SqlDataSource>
            <asp:DropDownList ID="SupplierDropDownList" runat="server" DataTextField="CompanyName" DataValueField="Id" DataSourceID="SupplierSqlDataSource" AutoPostBack="True"></asp:DropDownList>
        </div>
    </form>
</body>
</html>
