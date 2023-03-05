<%@ Page Title="" Language="C#" MasterPageFile="~/BranchPage.Master" AutoEventWireup="true" CodeBehind="Packages.aspx.cs" Inherits="TourApp.Packages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Our Packages</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-tittle text-center">
                    <span>FEATURED TOURS Packages</span>
                    <h2>Favourite Places</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbGoTripConnectionString %>" SelectCommand="SELECT * FROM [tblTourPackage]"></asp:SqlDataSource>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="images/<%# Eval("Image") %>" alt='<%# Eval("Name") %>'>
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>8.0 Superb</span> </span>
                                    <h3><a href="#"><%# Eval("Name") %></a></h3>
                                    <p class="dolor"><%# Eval("Price") %> <span>/ Per Person</span></p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i><%# Eval("Time") %></li>
                                        <li><i class="fas fa-map-marker-alt"></i><%# Eval("Location") %></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</asp:Content>

