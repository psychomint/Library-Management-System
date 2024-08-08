<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="LoginPage.LoginPage" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Place your head content here -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav class="navbar navbar-expand-lg navbar-dark d-none d-lg-block bg-dark" style="z-index: 2000;">
        <div class="container-fluid">
            <!-- Navbar brand -->
            <a class="navbar-brand nav-link" target="_blank" href="#">
                <strong>LBMS</strong>
            </a>
            
            <div class="collapse navbar-collapse" id="navbarExample01">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link" href="#intro">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" rel="nofollow" target="_blank">Details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About Us</a>
                    </li>
                </ul>

                <ul class="navbar-nav d-flex flex-row">
                    <!-- Icons -->
                    <li class="nav-item me-3 me-lg-0">
                        <a class="nav-link" href="#" rel="nofollow" target="_blank">
                            <i class="fab fa-youtube"></i>
                        </a>
                    </li>
                    <li class="nav-item me-3 me-lg-0">
                        <a class="nav-link" href="#" rel="nofollow" target="_blank">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                    </li>
                    <li class="nav-item me-3 me-lg-0">
                        <a class="nav-link" href="#" rel="nofollow" target="_blank">
                            <i class="fab fa-twitter"></i>
                        </a>
                    </li>
                    <li class="nav-item me-3 me-lg-0">
                        <a class="nav-link" href="#" rel="nofollow" target="_blank">
                            <i class="fab fa-github"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div id="intro" class="bg-image shadow-2-strong">
        <div class="mask d-flex align-items-center h-100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-5 col-md-8">
                        <div class="login-form bg-white rounded shadow-5-strong p-5">
                            <!-- Email input -->
                            <div class="form-outline mb-4">
                                <asp:Label ID="lblusername" runat="server" Text="Username:"></asp:Label>
                                <asp:TextBox ID="txtusername" runat="server" TextMode="Email" placeholder="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="* Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>

                            <!-- Password input -->
                            <div class="form-outline mb-4">
                                <asp:Label ID="lblpassword" runat="server" Text="Password:"></asp:Label>
                                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                                
                                <!-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="* Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator> -->
                            </div>

                            <div class="row mb-4">
                                <div class="col d-flex justify-content-center">
                                    <div class="form-check">
                                        <asp:RadioButton ID="rdolibrary" runat="server" Checked="True" ForeColor="Black" GroupName="a" Text="Librarian" />
                                    </div>
                                    <div class="form-check">
                                        <asp:RadioButton ID="rdostudent" runat="server" ForeColor="Black" GroupName="a" Text="Student" />
                                    </div>
                                </div>
                            </div>

                            <div class="text-center">
                                <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn btn-primary btn-block btn-lg" OnClick="btnlogin_Click" />
                            </div>
                            <div class="text-center">
                                <asp:Label ID="lblerror" runat="server" Text="" ForeColor="Red"></asp:Label>
                            </div>
                             <div class="text-center mt-4">
                                <asp:LinkButton ID="lnkForgotPassword" runat="server" CssClass="btn btn-link" OnClientClick="$('#forgotPasswordModal').modal('show'); return false;">Forgot Password?</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="forgotPasswordModal" tabindex="-1" aria-labelledby="forgotPasswordModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="forgotPasswordModalLabel">Forgot Password</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <asp:Label ID="lblModalMessage" runat="server" Text="" CssClass="text-danger"></asp:Label>
                    <div class="form-group">
                        <label for="txtModalEmail">Email address</label>
                        <asp:TextBox ID="txtModalEmail" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtModalEmail" ErrorMessage="* Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="btnResetPassword" runat="server" Text="Reset Password" CssClass="btn btn-primary" OnClick="btnResetPassword_Click" />
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <style>
        #intro {
            background-image: url(https://images.unsplash.com/photo-1505664194779-8beaceb93744?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D);
            background-size: cover;
            background-position: center;
            min-height: 100vh;
            padding-top: 100px;
            padding-bottom: 50px;
            border-radius: 4px;
        }

        @media (min-width: 992px) {
            #intro {
                margin-top: -58.59px;
            }
        }

        .navbar .nav-link {
            color: #fff !important;
        }
    </style>
</asp:Content>
