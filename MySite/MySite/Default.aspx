<%@ Page Language="C#" MasterPageFile="~/Master/Header.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MySite._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link href="Others/StyleFile.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server" > 
    <table style="width:100%; height:100%">
        <tr>
            <td align="right">                
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">New User ?</asp:LinkButton>                                 
            </td>
        </tr>
        <tr style="height:140px;">
            <td>                                                           
            </td>
        </tr>
        <tr>
            <td>
                <center>
                <table class="LogInTable">
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Label ID="lblLogIn" runat="server" Text="Log In" Font-Bold="True" 
                                Font-Underline="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblUaserName" runat="server" Text="Email:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtUserName" runat="server" Width="165px" 
                                ontextchanged="txtUserName_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                        </td>
                        <td>                                                    
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="165px"></asp:TextBox>                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="left">                            
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Password" />                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">                            
                            <asp:Button ID="btnLogIn" runat="server" Text="Enter" Width="71px" 
                                onclick="btnLogIn_Click" />                            
                        </td>
                    </tr>
                </table>
                </center>
            </td>
        </tr>
        <tr style="height:150px;">
            <td>
            </td>
        </tr>        
    </table>
</asp:Content>
