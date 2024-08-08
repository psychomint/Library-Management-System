<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentNew.Master" AutoEventWireup="true" CodeBehind="changePassword.aspx.cs" Inherits="LoginPage.Student1.changePassword1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="intro">
            <div class="container form-container">
                <h2 class="text-center mb-4">Change Password</h2>
                <div class="mb-3">
                    <asp:Label ID="lbloldpassword" runat="server" Text="Enter Old Password:" AssociatedControlID="tboldpassword" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="tboldpassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Old Password" />
                </div>
                <div class="mb-3">
                    <asp:Label ID="lblnewpassword" runat="server" Text="Enter New Password:" AssociatedControlID="tbnewpassword" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="tbnewpassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="New Password" />
                </div>
                <div class="text-center">
                    <asp:Button ID="btnchnage" runat="server" Text="Change Password" CssClass="btn btn-primary" OnClick="btnchnage_Click"  />
                </div>
                <div class="text-center mt-3 p-0">
                    <asp:Label ID="lblmsg" runat="server" CssClass="text-danger" Text=""></asp:Label>
                </div>
            </div>
        </div>
     
    
    <style>
        .form-container {
            background: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width:45%;
        }
    </style>
</asp:Content>
