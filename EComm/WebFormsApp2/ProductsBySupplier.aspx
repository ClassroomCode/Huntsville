<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductsBySupplier.aspx.cs" Inherits="WebFormsApp2.ProductsBySupplier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Products by Supplier</h2>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:SqlDataSource ID="SupplierSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ECommConnStr %>" SelectCommand="SELECT [Id], [CompanyName] FROM [Suppliers] ORDER BY [CompanyName]"></asp:SqlDataSource>
            <asp:DropDownList ID="SupplierDropDownList" runat="server" DataTextField="CompanyName" DataValueField="Id" DataSourceID="SupplierSqlDataSource" AutoPostBack="True" CssClass="form-control"></asp:DropDownList>
            <asp:SqlDataSource ID="ProductSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ECommConnStr %>" SelectCommand="SELECT [Id], [ProductName], [SupplierId], [UnitPrice] FROM [Products] WHERE ([SupplierId] = @SupplierId) ORDER BY [UnitPrice]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="SupplierDropDownList" PropertyName="SelectedValue" Name="SupplierId" Type="Int32"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <br /><br />
            <div>
                <asp:GridView CssClass="table" ID="ProductGrid" runat="server" DataSourceID="ProductSqlDataSource" AutoGenerateColumns="False" DataKeyNames="Id" AllowSorting="True">
                    <Columns>
                        <asp:BoundField DataField="ProductName" HeaderText="Name"   SortExpression="ProductName"></asp:BoundField>
                        <asp:BoundField DataField="UnitPrice" HeaderText="Price"    SortExpression="UnitPrice"></asp:BoundField>
                    </Columns>
                </asp:GridView>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
