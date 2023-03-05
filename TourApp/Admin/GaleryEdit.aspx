<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="GaleryEdit.aspx.cs" Inherits="TourApp.Admin.GaleryEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Galery Page</h3>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">

                <div class="forms-sample">
                    <h3>Galery Image Upload</h3>
                    <div class="form-group">
                        <label for="exampleInputName1">Image Name</label>
                        <asp:TextBox ID="txtImageName" CssClass="form-control" placeholder="Image Name" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputName1">Category Name</label>
                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblImage" runat="server" Text=""></asp:Label>
                        </div>
                    <div class="form-group">
                        <label>Galery Image</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info"/>
                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Add Image" OnClick="Button2_Click" /> 
                    </div> <br />
                    <div class="form-group">
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Save" /> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
