<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="Default.aspx.cs" Inherits="Roles_Membership._Default" %>

<asp:Content ID="DefaultHead" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="DefaultBody" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        This is a Dummy Download Website<br />
        <br />
        Please select your Account type to enter:<br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ViewDownloads.aspx">Free Users</asp:HyperLink><br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Members/ViewDownloads.aspx">Regular Members</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/PremiumMembers/ViewDownloads.aspx">Premium Members</asp:HyperLink>
    </div>
</asp:Content>