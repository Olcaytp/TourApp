<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="PackagesAdd.aspx.cs" Inherits="TourApp.Admin.PackagesAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">New Tour Adding Page</h3>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">

                <div class="forms-sample">
                    <div class="form-group">
                        <label for="exampleInputName1">Tour Name</label>
                        <asp:TextBox ID="txtname" runat="server" CssClass="form-control" placeholder="Tour Name"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">Tour Price</label>
                        <asp:TextBox ID="txtprice" runat="server" CssClass="form-control" placeholder="Tour Price"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword4">Tour Time</label>
                        <asp:TextBox ID="txttime" runat="server" CssClass="form-control" placeholder="Tour Time"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleSelectGender">Tour Location</label>
                        <asp:TextBox ID="txtlocation" runat="server" CssClass="form-control" placeholder="Tour Location"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Tour Image</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                        <asp:Button ID="Button2" runat="server" Text="Upload Image" CssClass="btn btn-gradient-primary mr-2" OnClick="Button2_Click" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblImage" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <label for="exampleTextarea1">Tour Details</label>
                        <asp:TextBox ID="txtdetail" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Tour Detail"></asp:TextBox>
                    </div>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Save" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
