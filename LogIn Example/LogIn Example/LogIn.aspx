<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="LogIn_Example.LogIn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Login ID="Login1" runat="server">
        </asp:Login>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            ValidationGroup="Login1" />
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/RecoverPassword.aspx" runat="server">Forgot your password?</asp:HyperLink>
    </div>
    </form>
</body>
</html>
