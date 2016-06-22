<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Album._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <table>
        <tr>                       
            <td>
                Upload Image: <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>                
                <asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" /> <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>               
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
