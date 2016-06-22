<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recommendations.aspx.cs" Inherits="Session_Cookies.Recommendations" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblRecommendations" runat="server" Text="Recommendations" Font-Bold="true" Font-Size="X-Large"></asp:Label>
        <br /> <br />
        <asp:ListBox ID="booksListBox" runat="server" Height="125px" Width="450px"></asp:ListBox>
        <br /> <br />
        <asp:HyperLink ID="languageLink" runat="server" NavigateUrl="~/Default.aspx">Click here to chose another language</asp:HyperLink>
    </div>
    </form>
</body>
</html>
