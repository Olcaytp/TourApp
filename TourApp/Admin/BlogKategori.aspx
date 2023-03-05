<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BlogKategori.aspx.cs" Inherits="TourApp.Admin.BlogKategori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Blog Category Page</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="form-sample">
        <div class="col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <div class="form-group">
                        <label for="exampleInputName1">Category Name</label>
                        <asp:TextBox ID="txtname" runat="server" CssClass="form-control" placeholder="Tour Name"></asp:TextBox>
                    </div>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Save" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
        <br /><br /><br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbGoTripConnectionString %>" DeleteCommand="DELETE FROM [tblBlogCategory] WHERE [id] = @id" InsertCommand="INSERT INTO [tblBlogCategory] ([Name]) VALUES (@Name)" SelectCommand="SELECT * FROM [tblBlogCategory]" UpdateCommand="UPDATE [tblBlogCategory] SET [Name] = @Name WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" CssClass="table table-borderless" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>

