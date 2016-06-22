<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>    
</head>
<body>
    <form id="form1" runat="server">
    <center>
        <h1 style="font-weight: bold; font-family: Aharoni">This is a header</h1>
    </center>
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                &nbsp&nbsp&nbsp<asp:Button ID="btnShow" ToolTip="Click" runat="server" Text="Show" 
                    onclick="btnShow_Click" />                
            </td>        
        </tr>
        <tr>
            <td>
                <asp:GridView ID="MyGridView" runat="server" AllowPaging="True" PageSize="2" 
                    OnPageIndexChanging="Page_Changing" BackColor="#CCCCCC" 
                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                    CellSpacing="2" ForeColor="Black" Width="313px">
                    <RowStyle BackColor="White" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <PagerStyle ForeColor="Black" HorizontalAlign="Left" BackColor="#CCCCCC" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
                </td>        
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label2" runat="server" Text="message"></asp:Label> <br />
                
                <asp:TextBox AccessKey="a" BackColor="Black" ForeColor="White" BorderColor="Blue"
                BorderStyle="Dashed" Font-Size="30px" BorderWidth="4"
                Enabled="true" Height="40" Width="200" TabIndex="1" ToolTip="Hover text here"
                Visible="true" ID="TextBox1" runat="server" Text="Hello World">
                </asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
        <asp:CheckBox ID="CheckBox1" Text="Show Panel" runat="server" 
        AutoPostBack="True" oncheckedchanged="CheckBox1_CheckedChanged" /> <br />
        
        <asp:Panel ID="Panel1" runat="server" Height="137px" Width="494px" 
        Visible="false">
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="2" Height="118px" 
                Width="435px" onfinishbuttonclick="Wizard1_FinishButtonClick">
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" Title="About You" 
                        StepType="Start">
                        <asp:Label ID="Label3" runat="server" Text="Type your name:"></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Favourite Language" 
                        StepType="Finish">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>C#</asp:ListItem>
                            <asp:ListItem>Visual Basic</asp:ListItem>
                            <asp:ListItem>CSS</asp:ListItem>
                        </asp:DropDownList>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep3" runat="server" Title="Ready">
                        <asp:Label ID="lblResust" runat="server" Text="Label"></asp:Label>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </asp:Panel>
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblState" runat="server" Text="lblState"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="btnSetDate" runat="server" Text="Set Date" 
                        onclick="btnSetDate_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
                <td>
                    <asp:Button ID="btnPlainPostBack" runat="server" Text="Plain PostBack" />
                </td>
            </tr>
        </table>
        
    </form>
</body>
</html>
