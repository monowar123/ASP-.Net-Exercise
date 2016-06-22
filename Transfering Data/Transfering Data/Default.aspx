<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Transfering_Data._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Transfering values and controls</h1>
        <br />
        Enter Name: 
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Button ID="btnResponseRedirect" runat="server" Text="Response Redirect" 
            onclick="btnResponseRedirect_Click" /><br /><br />
        <asp:Button ID="btnSessionVariable" runat="server" Text="Session Variable" 
            onclick="btnSessionVariable_Click" /><br /><br />
        <asp:Button ID="btnCookies" runat="server" Text="Cookies" 
            onclick="btnCookies_Click" /><br /><br />
        <asp:Button ID="btnApplicationState" runat="server" Text="Application State" 
            onclick="btnApplicationState_Click" /><br /><br />
        <asp:Button ID="btnServerTransfer" runat="server" Text="Server Transfer" 
            onclick="btnServerTransfer_Click" />
    </div>
    </form>
</body>
</html>
