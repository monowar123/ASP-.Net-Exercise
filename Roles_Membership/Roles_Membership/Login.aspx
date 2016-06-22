<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="Login.aspx.cs" Inherits="Roles_Membership.Login" %>

<asp:Content ID="LoginHead" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="LoginBody" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        Please sign in using your credentials<br />
        <br />
        <asp:Login ID="Login1" runat="server">
        </asp:Login>
        <br />
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/NewUser.aspx" runat="server">Create Account Now</asp:HyperLink>
    </div>
</asp:Content>
