<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="bookissue.aspx.cs" Inherits="LoginPage.bookissue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
            <h2 class="text-center mb-4">Book Issue</h2>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <asp:Label ID="lblipubli" runat="server" Text="Select a Publication:"></asp:Label>
                        <asp:DropDownList ID="ddlipubli" runat="server" CssClass="form-control" AutoPostBack="True"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblibook" runat="server" Text="Select a Book:"></asp:Label>
                        <asp:DropDownList ID="ddlibook" runat="server" CssClass="form-control" AutoPostBack="True"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblselect" runat="server" Text=""></asp:Label>
                        <asp:Button ID="btnselect" runat="server" Text="Select" OnClick="btnselect_Click" CssClass="btn btn-primary" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="mv-details">
                        <h2 class="text-center mb-4">Book Details</h2>
                        <div class="mv-part">
                            <h3>Book Name:
                                <asp:Label ID="lblBookName" runat="server" Text=""></asp:Label>
                            </h3>
                        </div>
                        <div class="mv-part">
                            <h3>Author:
                                <asp:Label ID="lblauthor" runat="server" Text=""></asp:Label>
                            </h3>
                        </div>
                        <div class="mv-part">
                            <h3>Publication:
                                <asp:Label ID="lblpublication" runat="server" Text=""></asp:Label>
                            </h3>
                        </div>
                        <div class="mv-part">
                            <h3>Branch:
                                <asp:Label ID="lblbranch" runat="server" Text=""></asp:Label>
                            </h3>
                        </div>
                        <div class="mv-part">
                            <h3>Price:
                                <asp:Label ID="lblprice" runat="server" Text=""></asp:Label>
                            </h3>
                        </div>
                        <div class="mv-part">
                            <h3>Total Quantity:
                                <asp:Label ID="lbltqty" runat="server" Text=""></asp:Label>
                            </h3>
                        </div>
                        <div class="mv-part">
                            <h3>Available Quantity:
                                <asp:Label ID="lblaqty" runat="server" Text=""></asp:Label>
                            </h3>
                        </div>
                        <div class="mv-part">
                            <h3>Details:
                                <asp:Label ID="lbldetails" runat="server" Text=""></asp:Label>
                            </h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer">
                <h5 class="text-center mb-3">Select Student Details for Issue Book</h5>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="Label9" runat="server" Text="Select Branch"></asp:Label>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="Label10" runat="server" Text="Select Student"></asp:Label>
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label ID="Label11" runat="server" Text="Days"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="text-center">
                    <asp:Button ID="btnissue" runat="server" Text="Issue Book" OnClick="btnissue_Click" CssClass="btn btn-success" />
                    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    <style>
        /* Custom styles can be added here */
        body {
            background-color: #f8f9fa; /* Light gray background */
        }
        .navbar {
            background-color: #e3f2fd; /* Light blue navbar */
        }
        .footer {
            background-color: #e3f2fd; /* Light blue footer */
            padding: 20px;
            margin-top: 20px;
            border-top: 1px solid #ddd; /* Gray border on top */
        }
        .mv-details {
            background-color: #fff; /* White background for book details */
            border: 1px solid #ddd; /* Light gray border */
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 8px; /* Rounded corners */
        }
        .form-group {
            margin-bottom: 20px; /* Space between form groups */
        }
        h2, h3 {
            color: #007bff; /* Blue headers */
        }

    </style>
</asp:Content>
