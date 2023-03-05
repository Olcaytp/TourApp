<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TourApp.Admin.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">About Us</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
     <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">

                <div class="forms-sample">
                    <div class="form-group">
                        <label for="exampleInputName1">Header</label>
                        <asp:TextBox ID="txtHeader" runat="server" CssClass="form-control" placeholder="Header"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPhone3">Summary</label>
                        <asp:TextBox ID="txtSummary" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Summary"></asp:TextBox>
                        <asp:Label ID="lblDate" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <label for="exampleTextarea1">Details</label>
                        <asp:TextBox ID="txtdetail" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Detail"></asp:TextBox>
                        <asp:Label ID="label2" runat="server" Text=""></asp:Label>
                    </div>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" Text="Upload" OnClick="Button2_Click" />
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Update" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
