<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="PackageEdit.aspx.cs" Inherits="TourApp.Admin.PackageEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Tour Editing Page</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbGoTripConnectionString %>" DeleteCommand="DELETE FROM [tblTourPackage] WHERE [id] = @id" InsertCommand="INSERT INTO [tblTourPackage] ([Name], [Price], [Time], [Location], [Image], [Details]) VALUES (@Name, @Price, @Time, @Location, @Image, @Details)" SelectCommand="SELECT * FROM [tblTourPackage]" UpdateCommand="UPDATE [tblTourPackage] SET [Name] = @Name, [Price] = @Price, [Time] = @Time, [Location] = @Location, [Image] = @Image, [Details] = @Details WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="Time" Type="Int32" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Details" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="Time" Type="Int32" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Details" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" CssClass="table table-borderless" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
        </Columns>
    </asp:GridView>
        </div>
</asp:Content>
