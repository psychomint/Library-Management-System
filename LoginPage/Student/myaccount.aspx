<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentNew.Master" AutoEventWireup="true" CodeBehind="myaccount.aspx.cs" Inherits="LoginPage.Student1.myaccount1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="intro">
        <div class="container">
            <section class="actions">
                <div class="text-center">
                    <h2 class="px-2 text-dark d-inline-block rounded-3" style="background-color:#f8f9fa;">Actions</h2>
                </div>
                
                <div class="action-buttons text-center">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="btn btn-primary">Edit Account</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CssClass="btn btn-primary ms-2">Change Password</asp:LinkButton>
                </div>
            </section>
            <section class="user-details mt-4">
                <h2 class="text-center text-white mb-4">User Information</h2>
                <table class="table table-striped table-bordered">
                    <tr>
                        <td>Name:</td>
                        <td><asp:Label ID="lblname" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Mobile:</td>
                        <td><asp:Label ID="lblmobile" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Address:</td>
                        <td><asp:Label ID="lbladdress" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>City:</td>
                        <td><asp:Label ID="lblcity" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Pincode:</td>
                        <td><asp:Label ID="lblpincode" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td><asp:Label ID="lblmail" runat="server" Text=""></asp:Label></td>
                    </tr>
                </table>
            </section>
        </div>
    </div>

    <style>
    .user-details {
            background-color: #fff;
            padding: 20px;
            margin-top: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
        }
        .actions {
            margin-top: 20px;
        }
        .action-buttons {
            margin-top: 10px;
        }
        table {
            width: 100%;
        }
        table td {
            padding: 8px;
        }
    </style>
</asp:Content>
