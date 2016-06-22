<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Session_Cookies._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblPromt" runat="server" Text="Select a programming language.<br /> <br />" Font-Bold="true" Font-Size="Large">
        </asp:Label>
        
        <asp:RadioButtonList ID="languageList" runat="server">
            <asp:ListItem>Visual Basic 2008</asp:ListItem>
            <asp:ListItem>Visual C# 2008</asp:ListItem>
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>C++</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
            onclick="btnSubmit_Click" />
    </div>
    <div>
        <asp:Label ID="lblResponse" runat="server" Text="Welcome to cookies." Font-Bold="true" Font-Size="Large" Visible="false"></asp:Label>
        <br /> <br />
        <asp:HyperLink ID="languageLink" runat="server" NavigateUrl="~/Default.aspx" Visible="false">Click here to chose another language.
        </asp:HyperLink>
        <br /> <br />
        <asp:HyperLink ID="recomendationLink" runat="server" NavigateUrl="~/Recommendations.aspx" Visible="false">Click here to get book recommendation.
        </asp:HyperLink>
    </div>
    <br /><br />
    <table width="100%" border="2px">
        <tr>
            <td colspan="4">
            </td>
            <td>
                M
            </td>           
        </tr>
        <tr>
            <td colspan="3">
            </td>            
            <td colspan="2">
                B
            </td>                       
        </tr>
        <tr>
            <td colspan="2">
            </td>            
            <td colspan="3">
                S
            </td>            
        </tr>
        <tr>
            <td>
            </td>            
            <td colspan="4">
                T
            </td>            
        </tr>
        <tr>
            <td>
                U
            </td>            
            <td colspan="4">
            </td>            
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>            
        </tr>
    </table>
    </form>
</body>
</html>
