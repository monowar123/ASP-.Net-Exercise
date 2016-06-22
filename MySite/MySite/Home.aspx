<%@ Page Language="C#" MasterPageFile="~/Master/SecondMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MySite.Home" %>

<asp:Content ID="homeBody" ContentPlaceHolderID="Information" runat="server">
    <table style="width:100%;">
        <tr>
            <td align="center">
                <h1>Welcome the home page.</h1>
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    <asp:Label ID="Label1" runat="server" Text="This is the account of Monowar."></asp:Label>
                </p>                                
            </td>
        </tr>
    </table>
</asp:Content>