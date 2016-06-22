<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="testWebApp._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test Web Application</title>
</head>
<body>
    <form id="form1" runat="server">
    <center>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Input A:"></asp:Label>
                </td>
                <td>
                </td>
                <td>
                    <asp:TextBox ID="txt_A" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Input B:"></asp:Label>
                </td>
                <td>
                </td>
                <td>
                    <asp:TextBox ID="txt_B" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td style="text-align:left">
                    <asp:Button ID="btn_Save" runat="server" Text="Save" 
                        onclick="btn_Save_Click"  />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Sum"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td style="text-align:left">
                    <asp:Label ID="lbl_Show_Sum" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </center>
    </form>
</body>
</html>
