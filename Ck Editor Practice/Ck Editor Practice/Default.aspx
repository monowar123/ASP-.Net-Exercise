<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ck_Editor_Practice._Default" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>    
    <script src="JScript1.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>   
        <CKEditor:CKEditorControl ID="CKEditorControl1" BasePath="~/ckeditor" 
            runat="server"></CKEditor:CKEditorControl>
        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" /> &nbsp
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br /> <br />
        <asp:Button ID="Button2" runat="server" Text="Database" 
            onclick="Button2_Click" />     
                  
    </div> 
    </form>   
</body>
</html>
