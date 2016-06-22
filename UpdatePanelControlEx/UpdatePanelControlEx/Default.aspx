<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UpdatePanelControlEx._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" Text="Refresh Panel" runat="server" />

        <asp:ScriptManager ID="ScriptManager" runat="server" />
        <br />
        
        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
        
            <Triggers>
                   <asp:AsyncPostBackTrigger ControlID="Button1" />
            </Triggers>

            <ContentTemplate>            
               <fieldset>
               <legend>UpdatePanel content</legend>
                <!-- Other content in the panel. -->
                <%=DateTime.Now.ToString() %>
                <br />
                <asp:Button ID="Button2" Text="Refresh Panel" runat="server" />
                </fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <asp:UpdatePanel ID="UpdatePanel2" UpdateMode="Conditional" runat="server">
            <ContentTemplate>
                <fieldset>
                    <legend>UpdatePanel 2</legend>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Button ID="myButton" runat="server" Text="Button" onclick="myButton_Click" />
                </fieldset>
            </ContentTemplate>
        </asp:UpdatePanel>

    </div>
    
    </form>
</body>
</html>
