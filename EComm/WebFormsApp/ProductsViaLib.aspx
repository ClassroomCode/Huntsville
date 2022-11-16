<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductsViaLib.aspx.cs" Inherits="WebFormsApp.ProductsViaLib" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ObjectDataSource ID="SupplierObjectDataSource" runat="server" SelectMethod="GetSuppliers" TypeName="ECommLib.Repository"></asp:ObjectDataSource>
            <asp:DropDownList ID="SupplierDropDownList" runat="server" DataTextField="CompanyName" DataValueField="Id" DataSourceID="SupplierObjectDataSource" AutoPostBack="True"></asp:DropDownList>
        </div>
    </form>
</body>
</html>
