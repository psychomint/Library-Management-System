<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="LoginPage.Logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"> 
</asp:ScriptManager> 
<asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick"> 
</asp:Timer>

</asp:Content>

