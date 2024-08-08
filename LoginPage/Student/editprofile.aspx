<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentNew.Master" AutoEventWireup="true" CodeBehind="editprofile.aspx.cs" Inherits="LoginPage.Student1.editprofile1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="intro">
            <div class="container form-container">
                <h1 class="text-center mb-4">Update Your Profile</h1>
                <div class="mb-3">
                    <asp:Label ID="lblname" runat="server" Text="Name:" AssociatedControlID="tbname" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="tbname" runat="server" CssClass="form-control" placeholder="Your Name" />
                </div>
                <div class="mb-3">
                    <asp:Label ID="lbldob" runat="server" Text="Date of Birth:" AssociatedControlID="tbdob" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="tbdob" runat="server" TextMode="Date" CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <asp:Label ID="lblphone" runat="server" Text="Mobile Number:" AssociatedControlID="tbphone" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="tbphone" runat="server" CssClass="form-control" placeholder="Phone Number"/>
                </div>
                <div class="mb-3">
                    <asp:Label ID="lbladdress" runat="server" Text="Address:" AssociatedControlID="tbaddress" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="tbaddress" runat="server" CssClass="form-control" placeholder="Address"/>
                </div>
                <div class="mb-3">
                    <asp:Label ID="lblcity" runat="server" Text="City:" AssociatedControlID="tbcity" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="tbcity" runat="server" CssClass="form-control" placeholder="City Name" />
                </div>
                <div class="mb-3">
                    <asp:Label ID="lblpincode" runat="server" Text="Pincode:" AssociatedControlID="tbpincode" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="tbpincode" runat="server" CssClass="form-control" placeholder="Pincode" />
                </div>
                <div class="mb-3">
                    <asp:Label ID="lblmail" runat="server" Text="E-mail:" AssociatedControlID="tbnewmail" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="tbnewmail" runat="server" TextMode="Email" CssClass="form-control" placeholder="Email"/>
                </div>
                <div class="text-center">
                    <asp:Button ID="btnupdate" runat="server" Text="Update Information" CssClass="btn btn-primary" OnClick="btnupdate_Click" />
                </div>
                <div class="text-center mt-3">
                    <asp:Label ID="lblmsg" runat="server" CssClass="text-danger" Text=""></asp:Label>
                </div>
            </div>
        </div>



    <style>
       .form-container {
            background: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.8);
            width:60%;
        }
    </style>
</asp:Content>
