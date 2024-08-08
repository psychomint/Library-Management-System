<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentNew.Master" AutoEventWireup="true" CodeBehind="BookReport.aspx.cs" Inherits="LoginPage.Student1.BookReport1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
            <h1>View Book Report</h1>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="drpbranch">Select Branch:</label>
                        <asp:DropDownList ID="drpbranch" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="drppublication">Select Publication:</label>
                        <asp:DropDownList ID="drppublication" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="text-center">
                <asp:Button id="btnviewbranch" runat="server" class="btn btn-primary m-2" onclick="btnviewbranch_Click" Text="View Branch"></asp:Button>
                <asp:Button id="btnviewpublication" runat="server" class="btn btn-primary m-2" onclick="btnviewpublication_Click" Text="View Publication"></asp:Button>
            </div>
            <div class="table-container">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <asp:Label ID="lblmsg0" runat="server" Text="" />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped">
                            <Columns>
                                <asp:BoundField DataField="bookname" HeaderText="Book Name" />
                                <asp:BoundField DataField="price" HeaderText="Price" />
                                <asp:BoundField DataField="quantity" HeaderText="Available Quantity" />
                            </Columns>
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        </asp:GridView>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <div class="card p-4">
                            <div class="book-detail">
                                <div class="detail-group">
                                    <label>Book Name:</label>
                                    <asp:Label ID="lblbname" runat="server" Text="" CssClass="font-weight-bold" />
                                </div>
                                <div class="detail-group">
                                    <label>Author:</label>
                                    <asp:Label ID="lblauthor" runat="server" Text="" />
                                </div>
                                <div class="detail-group">
                                    <label>Publication:</label>
                                    <asp:Label ID="lblpub" runat="server" Text="" />
                                </div>
                                <div class="detail-group">
                                    <label>Branch:</label>
                                    <asp:Label ID="lblbran" runat="server" Text="" />
                                </div>
                                <div class="detail-group">
                                    <label>Price:</label>
                                    <asp:Label ID="lblprice" runat="server" Text="" />
                                </div>
                                <div class="detail-group">
                                    <label>Available Quantity:</label>
                                    <asp:Label ID="lblaqnt" runat="server" Text="" />
                                </div>
                                <div class="detail-group">
                                    <label>Detail:</label>
                                    <asp:Label ID="lbldetail" runat="server" Text="" />
                                </div>
                            </div>
                            <asp:Button ID="Button11" runat="server" CssClass="btn btn-primary btn-back mt-3" Text="Back" OnClick="Button11_Click" />
                        </div>
                    </asp:View>
                </asp:MultiView>
            </div>
        </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('https://www.pixel-studios.com/blog/wp-content/uploads/2018/12/012.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
            height:100vh;
            display:flexbox;
        }
        .container {
            max-width: 900px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8); /* Adjust opacity if needed */
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            margin-top: 20px;
            
        }
        h1 {
            color: #333;
            margin-bottom: 30px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .table-container {
            margin-top: 30px;
        }
        .btn-back {
            margin-top: 20px;
        }
        .book-detail {
            margin-top: 20px;
        }
        .book-detail .detail-group label {
            font-weight: bold;
            color: #333;
            display: inline-block;
            width: 150px;
        }
        .book-detail .detail-group span {
            color: #555;
        }
    </style>
</asp:Content>
