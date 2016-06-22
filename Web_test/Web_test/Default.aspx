<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_test._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Calculator</title>
    <style type="text/css">
        .styleTxt
        {
            width: 144px;
        }
        .styleLbl
        {
            width: 100px;
        }
    </style>
    <script type="text/javascript">
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <center>
    <div>
        <h3>AdRotator Example</h3>
        <p>            
            <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="adXmlDataSource" />
    
            <asp:XmlDataSource ID="adXmlDataSource" runat="server" DataFile="~/App_Data/AdRotatorInformation.xml">               
            </asp:XmlDataSource>      
        </p>
    </div>
    </center>
    
    <center>
    <table style="width: 75%;">
        <tr>
            <td class="styleLbl">
                <asp:Label ID="Label1" runat="server" Text="Input A :"></asp:Label>
            </td>            
            <td class="styleTxt">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="styleLbl">
                <asp:Label ID="Label3" runat="server" Text="Select :"></asp:Label>
            </td>
            <td class="styleTxt">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="144px">
                    <asp:ListItem>Add</asp:ListItem>
                    <asp:ListItem>Subtract</asp:ListItem>
                    <asp:ListItem>Multiplication</asp:ListItem>
                    <asp:ListItem>Division</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="styleLbl">
                <asp:Label ID="Label2" runat="server" Text="Input B :"></asp:Label>
            </td>            
            <td class="styleTxt">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="styleLbl">
                <asp:Label ID="Label4" runat="server" Text="Ans :"></asp:Label>
            </td>
            <td class="styleTxt">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>   
        <tr>
            <td colspan="4" align="center">            
                <asp:Button ID="btnShow" runat="server" Text="Show" onclick="btnShow_Click" />
            </td>            
        </tr> 
        <tr>
            <td colspan="4" align="center"> 
                <asp:Label ID="lblTime" runat="server" Text="Time"></asp:Label>
            </td>            
        </tr>    
    </table>
    </center>
    </form>
</body>
</html>
