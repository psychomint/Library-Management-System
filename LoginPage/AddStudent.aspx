<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="LoginPage.AddStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="intro" class="bg-image shadow-2-strong">
        <div class="mask d-flex align-items-center h-100" style="background-color: rgba(0, 0, 0, 0.3);">
            <div class="container">
                <div class="row g-3 m-4">
                      <div class="col-md-6">
                                <label class="form-label fw-bolder text-primary" for="tbstuname">Student Name :</label>
                                <asp:TextBox ID="tbstuname" runat="server" CssClass="form-control" placeholder="Student Name"/>
                                <asp:RequiredFieldValidator ControlToValidate="tbstuname" ErrorMessage="Student Name is required." runat="server" CssClass="error-message" ForeColor="Red" />
                      </div>
                      <div class="col-md-6">
                       <label for="ddlstubranch" class="form-label fw-bolder text-primary">Branch :</label>
                                <asp:DropDownList ID="ddlstubranch" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ControlToValidate="ddlstubranch" InitialValue="" ErrorMessage="Please select a branch." runat="server" CssClass="error-message" ForeColor="Red"/>
                      </div>
                      <div class="col-12">
                        <label for="tbaddress" class="form-label fw-bolder text-primary" >Address :</label>
                            <asp:TextBox ID="tbaddress" runat="server" CssClass="form-control" placeholder="Address" />
                            <asp:RequiredFieldValidator ControlToValidate="tbaddress" ErrorMessage="Address is required." runat="server" CssClass="error-message" ForeColor="Red" />
                      </div>
                      <div class="col-md-4">
                        <label for="tbdob"  class="form-label fw-bolder text-primary"> BirthDate :</label>
                            <asp:DropDownList ID="drpdd" runat="server">
                                        <asp:ListItem>DD</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                         <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                        <asp:ListItem>13</asp:ListItem>
                                        <asp:ListItem>14</asp:ListItem>
                                        <asp:ListItem>15</asp:ListItem>
                                        <asp:ListItem>16</asp:ListItem>
                                        <asp:ListItem>17</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>19</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                         <asp:ListItem>21</asp:ListItem>
                                        <asp:ListItem>22</asp:ListItem>
                                        <asp:ListItem>23</asp:ListItem>
                                        <asp:ListItem>24</asp:ListItem>
                                        <asp:ListItem>25</asp:ListItem>
                                        <asp:ListItem>26</asp:ListItem>
                                        <asp:ListItem>27</asp:ListItem>
                                        <asp:ListItem>28</asp:ListItem>
                                        <asp:ListItem>29</asp:ListItem>
                                        <asp:ListItem>30</asp:ListItem>
                                        <asp:ListItem>31</asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>
                            <asp:DropDownList ID="drpmm" runat="server">
                                        <asp:ListItem>MM</asp:ListItem>
                                        <asp:ListItem>Jan</asp:ListItem>
                                        <asp:ListItem>Feb</asp:ListItem>
                                        <asp:ListItem>Mar</asp:ListItem>
                                        <asp:ListItem>Apr</asp:ListItem>
                                        <asp:ListItem>May</asp:ListItem>
                                        <asp:ListItem>Jun</asp:ListItem>
                                        <asp:ListItem>Jul</asp:ListItem>
                                        <asp:ListItem>Aug</asp:ListItem>
                                        <asp:ListItem>Sep</asp:ListItem>
                                        <asp:ListItem>Oct</asp:ListItem>
                                        <asp:ListItem>Nov</asp:ListItem>
                                        <asp:ListItem>Dec</asp:ListItem>
                                    </asp:DropDownList>
                            <asp:DropDownList ID="drpyyyy" runat="server">
                                        <asp:ListItem>YYYY</asp:ListItem>
                                        <asp:ListItem>1980</asp:ListItem>
                                        <asp:ListItem>1981</asp:ListItem>
                                        <asp:ListItem>1982</asp:ListItem>
                                        <asp:ListItem>1983</asp:ListItem>
                                        <asp:ListItem>1984</asp:ListItem>
                                        <asp:ListItem>1985</asp:ListItem>
                                        <asp:ListItem>1986</asp:ListItem>
                                        <asp:ListItem>1987</asp:ListItem>
                                        <asp:ListItem>1988</asp:ListItem>
                                        <asp:ListItem>1989</asp:ListItem>
                                        <asp:ListItem>1990</asp:ListItem>
                                        <asp:ListItem>1991</asp:ListItem>
                                        <asp:ListItem>1992</asp:ListItem>
                                        <asp:ListItem>1993</asp:ListItem>
                                        <asp:ListItem>1994</asp:ListItem>
                                        <asp:ListItem>1995</asp:ListItem>
                                        <asp:ListItem>1996</asp:ListItem>
                                        <asp:ListItem>1997</asp:ListItem>
                                        <asp:ListItem>1998</asp:ListItem>
                                        <asp:ListItem>1999</asp:ListItem>
                                        <asp:ListItem>2000</asp:ListItem>
                                        <asp:ListItem>2001</asp:ListItem>
                                    </asp:DropDownList>
                      </div>
                      <div class="col-md-6">
                         <label for="tbmobile" class="form-label fw-bolder text-primary" >Mobile :</label>
                            <asp:TextBox ID="tbmobile" runat="server" CssClass="form-control" placeholder="Mobile Number"/>
                            <asp:RequiredFieldValidator ControlToValidate="tbmobile" ErrorMessage="Mobile Number is required." runat="server" CssClass="error-message" ForeColor="Red"/>
                      </div>
                      <div class="col-md-2">
                       <label for="tbgender" class="form-label fw-bolder text-primary" > Gender :</label>
                            <asp:RadioButtonList RepeatDirection="Horizontal" ID="RadioButtonList1" runat="server">
                                <asp:ListItem class="fw-bolder text-warning" >Male</asp:ListItem>  
                                <asp:ListItem class="fw-bolder text-warning">Female</asp:ListItem>
                            </asp:RadioButtonList>    
                      </div>
                      <div class="col-12">
                        <label for="tbcity" class="form-label fw-bolder text-primary" >City :</label>
                            <asp:TextBox ID="tbcity" runat="server" CssClass="form-control" placeholder="City Name" />
                            <asp:RequiredFieldValidator ControlToValidate="tbcity" ErrorMessage="City Name is required." runat="server" CssClass="error-message" ForeColor="Red"/>
                      </div>
                      <div class="col-12" > 
                         <label for="tbpincode" class="form-label fw-bolder text-primary" >Pincode :</label>
                            <asp:TextBox ID="tbpincode" runat="server" CssClass="form-control" placeholder="Pincode"/>
                            <asp:RequiredFieldValidator ControlToValidate="tbpincode" ErrorMessage="Pin code is required." runat="server" CssClass="error-message" ForeColor="Red"/>
                      </div>
                      <div class="col-12">
                        <label for="tbemail" class="form-label fw-bolder text-primary" >Email :</label>
                            <asp:TextBox ID="tbmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Email" />
                            <asp:RequiredFieldValidator ControlToValidate="tbmail" ErrorMessage="Email is required." runat="server" CssClass="error-message"  ForeColor="Red"/>
                      </div>
                      <div class="col-12">
                        <label for="tbpass" class="form-label fw-bolder text-primary" >Password :</label>
                            <asp:TextBox ID="tbpass" runat="server" CssClass="form-control" TextMode="Password" placeholder="Your Open Secret"/>
                            <asp:RequiredFieldValidator ControlToValidate="tbpass" ErrorMessage="Password is required." runat="server" CssClass="error-message" ForeColor="Red" />
                      </div>
                      <div class="col-12">
                        <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
                      </div>
                      <div class="col-12">
                       <asp:Button class="btn btn-primary btn-block btn-lg" ID="btnstudent" runat="server" Text="Add Student" OnClick="btnstudent_Click" />
                      </div>
                     </div>
                </div>
            </div>
         </div>
</asp:Content>
