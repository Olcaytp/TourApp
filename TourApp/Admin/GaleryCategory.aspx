<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="GaleryCategory.aspx.cs" Inherits="TourApp.Admin.GaleryCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Galery Category Page</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">

                <div class="forms-sample">
                    <div class="form-group">
                        <label for="exampleInputName1">Category Name</label>
                        <asp:TextBox ID="txtname" runat="server" CssClass="form-control" placeholder="Tour Name"></asp:TextBox>
                    </div>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Add Category" OnClick="Button1_Click" /> 
                     </div>
            </div>
        </div>
    </div>
</asp:Content>
