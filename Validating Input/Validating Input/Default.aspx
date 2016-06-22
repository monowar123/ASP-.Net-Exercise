<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Validating_Input._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <center>
    <table>
        <tr>
            <td colspan="3">
                Please fill out the following form.
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height:20px;">
               
            </td>
        </tr>
        <tr>
            <td>
                Name:
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>                
            </td>
            <td>
                e g. Your name.
                <asp:RequiredFieldValidator ID="nameValidator" runat="server" ControlToValidate="txtName"
                ErrorMessage="Please enter your name" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Email Address:
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td>
                e g. user@domain.com
                <asp:RequiredFieldValidator ID="emailValidator" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Please enter your email." Display="Dynamic"></asp:RequiredFieldValidator>
                
                <asp:RegularExpressionValidator ID="emailFormatValidator" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Please enter in correct format." Display="Dynamic"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Phone Number:
            </td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            </td>
            <td>
                e g 01558 65 12 05
                <asp:RequiredFieldValidator ID="phoneValidator" runat="server" ControlToValidate="txtPhone"
                ErrorMessage="Please enter your phone number." Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                    onclick="btnSubmit_Click" />
            </td>
        </tr>
    </table>
    </center>
    <table>
        <tr>
            <td>
                <asp:Label ID="lblOutput" runat="server" Text="Thank you for your submission." Visible="false"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
