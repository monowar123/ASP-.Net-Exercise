<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LogIn_Example._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Welcome to my website</h1>
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
        <br />
        <asp:HyperLink ID="HyperLink3" NavigateUrl="~/MemberPages/Members.aspx" runat="server">Member Page</asp:HyperLink>
        <br />
        <asp:LoginView ID="LoginView1" runat="server">
            <LoggedInTemplate>
                <strong>You are logged in. Welcome 
                    <asp:LoginName ID="LoginName1" runat="server" />
                    <br /> <br />
                    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/MemberPages/Members.aspx" runat="server"> Member Page</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink4" NavigateUrl="~/MemberPages/ChangePassword.aspx" runat="server">Change Password</asp:HyperLink>
                </strong>&nbsp;
            </LoggedInTemplate>
            <AnonymousTemplate>
                <strong>Hello! You are not logged in. Click the <span class="search-highlight">Login</span> link to sign in</strong>.
                <br /><strong>Have not an account? 
                    <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Register.aspx" runat="server">Register Here</asp:HyperLink></strong>
            </AnonymousTemplate>
        </asp:LoginView>
    </div>
    </form>
</body>
</html>
