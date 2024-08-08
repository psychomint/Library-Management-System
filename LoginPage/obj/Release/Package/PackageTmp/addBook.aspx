<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="addBook.aspx.cs" Inherits="LoginPage.addBook1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="intro" class="bg-image shadow-2-strong mt-5">
        <div class="mask d-flex align-items-center h-100" style="background-color: rgba(0, 0, 0, 0.2);">
            <div class="container">
                <div class="row g-3 m-4" >
          <div class="col-md-6">
            <label for="tbbookname" class="form-label fw-bolder text-primary">Book Name:</label>
            <asp:TextBox ID="tbbookname" runat="server" class="form-control" placeholder="Book Name" />
            <asp:RequiredFieldValidator ControlToValidate="tbbookname" ErrorMessage="Book Name is required." runat="server" CssClass="error-message" />
          </div>
          <div class="col-md-6">
            <label for="tbauthor" class="form-label fw-bolder text-primary">Author:</label>
            <asp:TextBox ID="tbauthor" runat="server" class="form-control" placeholder="Author Name"/>
            <asp:RequiredFieldValidator ControlToValidate="tbauthor" ErrorMessage="Author is required." runat="server" CssClass="error-message" />
          </div>
          <div class="col-12">
            <label for="tbdetail" class="form-label fw-bolder text-primary">Details:</label>
            <asp:TextBox ID="tbdetail" runat="server" class="form-control" TextMode="MultiLine" Rows="4" placeholder="Details....." />
            <asp:RequiredFieldValidator ControlToValidate="tbdetail" ErrorMessage="Details are required." runat="server" CssClass="error-message" />
          </div>
          <div class="col-md-6">
            <label for="ddlpub" class="form-label fw-bolder text-primary">Publication:</label>
            <asp:DropDownList ID="ddlpub" runat="server" class="form-select">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ControlToValidate="ddlpub" InitialValue="" ErrorMessage="Please select a publication." runat="server" CssClass="error-message" />
          </div>
          <div class="col-md-4">
            <label for="ddlbranch" class="form-label fw-bolder text-primary">Branch:</label>
            <asp:DropDownList ID="ddlbranch" runat="server" class="form-select">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ControlToValidate="ddlbranch" InitialValue="" ErrorMessage="Please select a branch." runat="server" CssClass="error-message" />
          </div>
          <div class="col-md-2">
           <label for="tbprice" class="form-label fw-bolder text-primary">Price (&#8377;):</label>
                    <asp:TextBox ID="tbprice" runat="server" class="form-control" TextMode="Number" placeholder="100"/>
                    <asp:RequiredFieldValidator ControlToValidate="tbprice" ErrorMessage="Price is required." runat="server" CssClass="error-message" />
                    <asp:RangeValidator ControlToValidate="tbprice" MinimumValue="1" MaximumValue="10000" Type="Double" ErrorMessage="Price must be between 1 and 10000." runat="server" CssClass="error-message" />
          </div>
          <div class="col-12">
            <label for="tbqty" class="form-label fw-bolder text-primary">Quantity:</label>
                    <asp:TextBox ID="tbqty" runat="server" class="form-control" TextMode="Number" placeholder="10" />
                    <asp:RequiredFieldValidator ControlToValidate="tbqty" ErrorMessage="Quantity is required." runat="server" CssClass="error-message" />
                    <asp:RangeValidator ControlToValidate="tbqty" MinimumValue="1" MaximumValue="1000" Type="Integer" ErrorMessage="Quantity must be between 1 and 1000." runat="server" CssClass="error-message" />
          </div>
          <div class="col-12">
            <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Add Book" OnClick="Button1_Click" />
          </div>
          <div class="col-12">
            <asp:Label ID="lblmsg" runat="server" Text="" class="form-label fw-bolder text-primary" />
          </div>
</div>
                </div>
            </div>
         </div>
</asp:Content>
