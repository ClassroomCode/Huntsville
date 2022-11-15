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
                SelectCommand="SELECT Id, ProductName, UnitPrice FROM Products ORDER BY UnitPrice;">
            </asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="ProductsSqlDataSource" DataKeyNames="Id">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFF8DC;">
                        <td>
                            <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("ProductName") %>' runat="server" ID="ProductNameLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("UnitPrice", "{0:c}") %>' runat="server" ID="UnitPriceLabel" /></td>
                    </tr>
                </AlternatingItemTemplate>
           
                <ItemTemplate>
                    <tr style="background-color: #DCDCDC; color: #000000;">
                        <td>
                            <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("ProductName") %>' runat="server" ID="ProductNameLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("UnitPrice", "{0:c}") %>' runat="server" ID="UnitPriceLabel" /></td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                                    <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                        <th runat="server">Id</th>
                                        <th runat="server">Name</th>
                                        <th runat="server">Price</th>
                                    </tr>
                                    <tr runat="server" id="itemPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                                <asp:DataPager runat="server" ID="DataPager1">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">
                        <td>
                            <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("ProductName") %>' runat="server" ID="ProductNameLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("UnitPrice") %>' runat="server" ID="UnitPriceLabel" /></td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
        </div>
    </form>
</body>
</html>
