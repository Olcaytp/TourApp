<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="TourApp.Admin.Settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Settings</h3>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">

                <div class="forms-sample">
                    <div class="form-group">
                        <label for="exampleInputName1">E-mail</label>
                        <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" placeholder="email"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputPhone3">Phone</label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Phone"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputAddress4">Address</label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100px" placeholder="Address"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputName1">Twitter</label>
                        <asp:TextBox ID="txtTwitter" runat="server" CssClass="form-control" placeholder="Twitter"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputName1">Youtube</label>
                        <asp:TextBox ID="txtYoutube" runat="server" CssClass="form-control" placeholder="Youtube"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputName1">Instagram</label>
                        <asp:TextBox ID="txtInstagram" runat="server" CssClass="form-control" placeholder="Instagram"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputName1">Facebook</label>
                        <asp:TextBox ID="txtFacebook" runat="server" CssClass="form-control" placeholder="Instagram"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Logo</label>
                        <input type="file" name="img[]" class="file-upload-default">
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblLLogo" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <label for="exampleTextarea1">Site Details</label>
                        <asp:TextBox ID="txtdetail" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Site Detail"></asp:TextBox>
                        <asp:Label ID="labelDate" runat="server" Text=""></asp:Label>
                    </div>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" Text="Upload" OnClick="Button2_Click" />
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Update" OnClick="Button1_Click"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
