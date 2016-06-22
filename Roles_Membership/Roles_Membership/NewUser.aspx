<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="NewUser.aspx.cs" Inherits="Roles_Membership.NewUser" %>

<asp:Content ID="NewUserHead" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="NewUserBody" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
            oncreateduser="CreateUserWizard1_CreatedUser">
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value="0">Regular</asp:ListItem>
            <asp:ListItem Value="1">Premium</asp:ListItem>
        </asp:RadioButtonList>
    </div>
</asp:Content>