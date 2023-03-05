<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="SelectedBlogEdit.aspx.cs" Inherits="TourApp.Admin.SelectedBlogEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Blog Edit Page</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">

                <div class="forms-sample>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbGoTripConnectionString %>" SelectCommand="SELECT * FROM [tblBlogCategory]"></asp:SqlDataSource>
                    <div class="form-group">
                        <label for="exampleInputName1">Header</label>
                        <asp:TextBox ID="txtheader" runat="server" CssClass="form-control" placeholder="Header"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Summary</label>
                        <asp:TextBox ID="txtsummary" runat="server" CssClass="form-control" placeholder="Summary"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword4">Category</label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="id"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label>Blog Image upload</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                        <asp:Button ID="Button2" runat="server" Text="Image Upload" OnClick="Button2_Click" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblImage" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <label for="exampleTextarea1">Blog Details</label>
                        <asp:TextBox ID="txtdetail" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Blog Detail"></asp:TextBox>
                        <asp:Label ID="labelDate" runat="server" Text=""></asp:Label>
                    </div>
                    <asp:Button ID="Button3" runat="server" Text="Upload"  CssClass="btn btn-gradient-primary mr-2" OnClick="Button3_Click" />
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Update" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
