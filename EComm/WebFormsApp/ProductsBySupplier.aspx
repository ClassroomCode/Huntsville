<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductsBySupplier.aspx.cs" Inherits="WebFormsApp.ProductsBySupplier" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <h1>This is the page</h1>
            <h3>This is a description</h3>
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <div>
            <asp:SqlDataSource ID="SupplierSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ECommConnStr %>" SelectCommand="SELECT [Id], [CompanyName] FROM [Suppliers] ORDER BY [CompanyName]"></asp:SqlDataSource>
            <asp:DropDownList ID="SupplierDropDownList" runat="server" DataTextField="CompanyName" DataValueField="Id" DataSourceID="SupplierSqlDataSource" AutoPostBack="True"></asp:DropDownList>
            </div>
            <div>
                <asp:SqlDataSource ID="ProductSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ECommConnStr %>" SelectCommand="SELECT [Id], [ProductName], [UnitPrice] FROM [Products] WHERE ([SupplierId] = @SupplierId) ORDER BY [UnitPrice]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="SupplierDropDownList" PropertyName="SelectedValue" Name="SupplierId" Type="Int32"></asp:ControlParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:ListView ID="ProductListView" runat="server" DataSourceID="ProductSqlDataSource" DataKeyNames="Id">
                    <AlternatingItemTemplate>
                        <tr style="background-color: #FFFFFF; color: #284775;">
                            <td>
                                <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                            <td>
                                <asp:Label Text='<%# Eval("ProductName") %>' runat="server" ID="ProductNameLabel" /></td>
                            <td>
                                <asp:Label Text='<%# Eval("UnitPrice") %>' runat="server" ID="UnitPriceLabel" /></td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="background-color: #999999;">
                            <td>
                                <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                                <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                            </td>
                            <td>
                                <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel1" /></td>
                            <td>
                                <asp:TextBox Text='<%# Bind("ProductName") %>' runat="server" ID="ProductNameTextBox" /></td>
                            <td>
                                <asp:TextBox Text='<%# Bind("UnitPrice") %>' runat="server" ID="UnitPriceTextBox" /></td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                                <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:TextBox Text='<%# Bind("ProductName") %>' runat="server" ID="ProductNameTextBox" /></td>
                            <td>
                                <asp:TextBox Text='<%# Bind("UnitPrice") %>' runat="server" ID="UnitPriceTextBox" /></td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color: #E0FFFF; color: #333333;">
                            <td>
                                <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                            <td>
                                <asp:Label Text='<%# Eval("ProductName") %>' runat="server" ID="ProductNameLabel" /></td>
                            <td>
                                <asp:Label Text='<%# Eval("UnitPrice") %>' runat="server" ID="UnitPriceLabel" /></td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                                        <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                            <th runat="server">Id</th>
                                            <th runat="server">ProductName</th>
                                            <th runat="server">UnitPrice</th>
                                        </tr>
                                        <tr runat="server" id="itemPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF"></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
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
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                <h1>Working....</h1>
            </ProgressTemplate>
        </asp:UpdateProgress>
    </form>
</body>
</html>
