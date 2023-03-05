<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BlogEdit.aspx.cs" Inherits="TourApp.Admin.BlogEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Blog Edit Page</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbGoTripConnectionString %>" SelectCommand="SELECT * FROM [tblBlog]" DeleteCommand="DELETE FROM [tblBlog] WHERE [id] = @id" InsertCommand="INSERT INTO [tblBlog] ([Header], [Summary], [CategoryId], [Image], [Details], [Date]) VALUES (@Header, @Summary, @CategoryId, @Image, @Details, @Date)" UpdateCommand="UPDATE [tblBlog] SET [Header] = @Header, [Summary] = @Summary, [CategoryId] = @CategoryId, [Image] = @Image, [Details] = @Details, [Date] = @Date WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Header" Type="String" />
                <asp:Parameter Name="Summary" Type="String" />
                <asp:Parameter Name="CategoryId" Type="Int32" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="Details" Type="String" />
                <asp:Parameter Name="Date" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Header" Type="String" />
                <asp:Parameter Name="Summary" Type="String" />
                <asp:Parameter Name="CategoryId" Type="Int32" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="Details" Type="String" />
                <asp:Parameter Name="Date" Type="DateTime" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" CssClass="table table-responsive text-center" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#Eval("id", "SelectedBlogEdit.aspx?id={0}") %>' runat="server">Update</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Header" HeaderText="Header" SortExpression="Header" />
                <asp:BoundField DataField="Summary" HeaderText="Summary" SortExpression="Summary" />
                <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" SortExpression="CategoryId" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
