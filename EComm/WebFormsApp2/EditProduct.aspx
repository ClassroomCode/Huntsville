<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="WebFormsApp2.EditProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="ProductSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ECommConnStr %>" DeleteCommand="DELETE FROM [Products] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Products] ([ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (@ProductName, @SupplierId, @UnitPrice, @Package, @IsDiscontinued)" SelectCommand="SELECT [Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued] FROM [Products] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [SupplierId] = @SupplierId, [UnitPrice] = @UnitPrice, [Package] = @Package, [IsDiscontinued] = @IsDiscontinued WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductName" Type="String"></asp:Parameter>
            <asp:Parameter Name="SupplierId" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="UnitPrice" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Package" Type="String"></asp:Parameter>
            <asp:Parameter Name="IsDiscontinued" Type="Boolean"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="id" Name="Id" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String"></asp:Parameter>
            <asp:Parameter Name="SupplierId" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="UnitPrice" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Package" Type="String"></asp:Parameter>
            <asp:Parameter Name="IsDiscontinued" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="ProductFormView" runat="server" DataSourceID="ProductSqlDataSource" DataKeyNames="Id">
        <EditItemTemplate>
            Id:
            <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel1" /><br />
            ProductName:
            <asp:TextBox Text='<%# Bind("ProductName") %>' runat="server" ID="ProductNameTextBox" /><br />
            SupplierId:
            <asp:TextBox Text='<%# Bind("SupplierId") %>' runat="server" ID="SupplierIdTextBox" /><br />
            UnitPrice:
            <asp:TextBox Text='<%# Bind("UnitPrice") %>' runat="server" ID="UnitPriceTextBox" /><br />
            Package:
            <asp:TextBox Text='<%# Bind("Package") %>' runat="server" ID="PackageTextBox" /><br />
            IsDiscontinued:
            <asp:CheckBox Checked='<%# Bind("IsDiscontinued") %>' runat="server" ID="IsDiscontinuedCheckBox" /><br />
            <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ProductName:
            <asp:TextBox Text='<%# Bind("ProductName") %>' runat="server" ID="ProductNameTextBox" /><br />
            SupplierId:
            <asp:TextBox Text='<%# Bind("SupplierId") %>' runat="server" ID="SupplierIdTextBox" /><br />
            UnitPrice:
            <asp:TextBox Text='<%# Bind("UnitPrice") %>' runat="server" ID="UnitPriceTextBox" /><br />
            Package:
            <asp:TextBox Text='<%# Bind("Package") %>' runat="server" ID="PackageTextBox" /><br />
            IsDiscontinued:
            <asp:CheckBox Checked='<%# Bind("IsDiscontinued") %>' runat="server" ID="IsDiscontinuedCheckBox" /><br />
            <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /><br />
            ProductName:
            <asp:Label Text='<%# Bind("ProductName") %>' runat="server" ID="ProductNameLabel" /><br />
            SupplierId:
            <asp:Label Text='<%# Bind("SupplierId") %>' runat="server" ID="SupplierIdLabel" /><br />
            UnitPrice:
            <asp:Label Text='<%# Bind("UnitPrice") %>' runat="server" ID="UnitPriceLabel" /><br />
            Package:
            <asp:Label Text='<%# Bind("Package") %>' runat="server" ID="PackageLabel" /><br />
            IsDiscontinued:
            <asp:CheckBox Checked='<%# Bind("IsDiscontinued") %>' runat="server" ID="IsDiscontinuedCheckBox" Enabled="false" /><br />
            <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
