<%@ Page Language="C#" MasterPageFile="~/Master/SecondMaster.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="MySite.Profile" %>

<asp:Content ID="profileBody" ContentPlaceHolderID="Information" runat="server">
    <table>
        <tr>
            <td style="width:30px;">
            </td>
            <td>
                <h2>Basic Information</h2>
                <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>  <br /> <br />  
                <asp:Label ID="lblAddress" runat="server" Text="Address: "></asp:Label>  <br /> <br /> 
                <asp:Label ID="lblDistrict" runat="server" Text="District: "></asp:Label>  <br /> <br /> 
                <asp:Label ID="lblCountry" runat="server" Text="Country: "></asp:Label>  <br /> <br /> 
                <asp:Label ID="lblGender" runat="server" Text="Gender: "></asp:Label>  <br /> <br /> 
                <asp:Label ID="lblDateOfBirth" runat="server" Text="Date of Birth: "></asp:Label>  <br /> <br /> 
                <asp:Label ID="lblMobile" runat="server" Text="Mobile No: "></asp:Label>  <br /> <br />              
            </td>
        </tr>
    </table>
</asp:Content>