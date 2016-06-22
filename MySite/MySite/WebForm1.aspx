<%@ Page Language="C#" MasterPageFile="~/Master/Header.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MySite.WebForm1" Title="New User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
   <link href="Others/StyleFile.css" rel="stylesheet" type="text/css" /> 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <center>
    <table>
        <tr>
            <td>
                <h1>Create New Account</h1>
            </td>
        </tr>
        <tr>
            <td>
                <table class="LogInTable">        
                    <tr>
                        <td>
                            <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>                
                        </td>
                        <td>
                            <asp:TextBox ID="txtFirstName" runat="server" Width="205px"></asp:TextBox>
                        </td>            
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>                
                        </td>
                        <td>
                            <asp:TextBox ID="txtLastName" runat="server" Width="205px"></asp:TextBox>
                        </td>            
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>                
                        </td>
                        <td>
                            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="205px"></asp:TextBox>
                        </td>            
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblDistrict" runat="server" Text="District:"></asp:Label>                
                        </td>
                        <td>
                            <asp:TextBox ID="txtDistrict" runat="server" Width="205px"></asp:TextBox>
                        </td>            
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblCountry" runat="server" Text="Country:"></asp:Label>                
                        </td>
                        <td>
                            <asp:TextBox ID="txtCountry" runat="server" Width="205px"></asp:TextBox>
                        </td>            
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblGender" runat="server" Text="Gender:"></asp:Label>                
                        </td>
                        <td>
                            <asp:DropDownList ID="gender" runat="server" >
                                <asp:ListItem Selected="True">Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>            
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblDateOfBirth" runat="server" Text="Date of Birth:"></asp:Label>                
                        </td>
                        <td>
                            <asp:DropDownList ID="dayDD" runat="server">
                                <asp:ListItem Selected="True">Day</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>31</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="monthDD" runat="server">
                                <asp:ListItem Selected="True">Month</asp:ListItem>
                                <asp:ListItem>January</asp:ListItem>
                                <asp:ListItem>February</asp:ListItem>
                                <asp:ListItem>March</asp:ListItem>
                                <asp:ListItem>April</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>June</asp:ListItem>
                                <asp:ListItem>July</asp:ListItem>
                                <asp:ListItem>August</asp:ListItem>
                                <asp:ListItem>September</asp:ListItem>
                                <asp:ListItem>October</asp:ListItem>
                                <asp:ListItem>November</asp:ListItem>
                                <asp:ListItem>December</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="yearDD" runat="server">
                                <asp:ListItem Selected="True">Year</asp:ListItem>
                                <asp:ListItem>1961</asp:ListItem>
                                <asp:ListItem>1962</asp:ListItem>
                                <asp:ListItem>1963</asp:ListItem>
                                <asp:ListItem>1964</asp:ListItem>
                                <asp:ListItem>1965</asp:ListItem>
                                <asp:ListItem>1966</asp:ListItem>
                                <asp:ListItem>1967</asp:ListItem>
                                <asp:ListItem>1968</asp:ListItem>
                                <asp:ListItem>1969</asp:ListItem>
                                <asp:ListItem>1970</asp:ListItem>
                                <asp:ListItem>1971</asp:ListItem>
                                <asp:ListItem>1972</asp:ListItem>
                                <asp:ListItem>1973</asp:ListItem>
                                <asp:ListItem>1974</asp:ListItem>
                                <asp:ListItem>1975</asp:ListItem>
                                <asp:ListItem>1976</asp:ListItem>
                                <asp:ListItem>1977</asp:ListItem>
                                <asp:ListItem>1978</asp:ListItem>
                                <asp:ListItem>1979</asp:ListItem>
                                <asp:ListItem>1980</asp:ListItem>
                                <asp:ListItem>1981</asp:ListItem>
                                <asp:ListItem>1982</asp:ListItem>
                                <asp:ListItem>1983</asp:ListItem>
                                <asp:ListItem>1984</asp:ListItem>
                                <asp:ListItem>1985</asp:ListItem>
                                <asp:ListItem>1986</asp:ListItem>
                                <asp:ListItem>1987</asp:ListItem>
                                <asp:ListItem>1988</asp:ListItem>
                                <asp:ListItem>1989</asp:ListItem>
                                <asp:ListItem>1990</asp:ListItem>
                                <asp:ListItem>1991</asp:ListItem>
                                <asp:ListItem>1992</asp:ListItem>
                                <asp:ListItem>1993</asp:ListItem>
                                <asp:ListItem>1994</asp:ListItem>
                                <asp:ListItem>1995</asp:ListItem>
                                <asp:ListItem>1996</asp:ListItem>
                                <asp:ListItem>1997</asp:ListItem>
                                <asp:ListItem>1998</asp:ListItem>
                                <asp:ListItem>1999</asp:ListItem>
                                <asp:ListItem>2000</asp:ListItem>
                            </asp:DropDownList>
                        </td>            
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblMobile" runat="server" Text="Mobile No:"></asp:Label>                
                        </td>
                        <td>
                            <asp:TextBox ID="txtMobile" runat="server" Width="205px"></asp:TextBox>
                        </td>            
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>                
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" Width="205px"></asp:TextBox>
                        </td>            
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>                
                        </td>
                        <td>
                            <asp:TextBox ID="txtPassword" runat="server" Width="205px" TextMode="Password"></asp:TextBox>
                        </td>            
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblConPassword" runat="server" Text="Confirm Password:"></asp:Label>                
                        </td>
                        <td>
                            <asp:TextBox ID="txtConPassword" runat="server" Width="205px" 
                                TextMode="Password"></asp:TextBox>
                        </td>            
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:CheckBox ID="termsCheckBox" Text="I am agree with the terms and conditions." runat="server" />
                        </td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <asp:Button ID="btnRegister" runat="server" Text="Register" 
                                onclick="btnRegister_Click" />
                        </td>
                    </tr>
                </table>                
            </td>
        </tr>
        <tr style="height:50px;">
            <td>
            </td>
        </tr>
    </table>
    </center>
</asp:Content>
