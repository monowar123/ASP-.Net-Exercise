<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CallBackEX._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    
    <script type="text/ecmascript">
    function LookUpStock()
    {
        var lb = document.getElementById("ListBox1");
        var product = lb.options[lb.selectedIndex].text;
        CallServer(product, "");
    }

    function ReceiveServerData(rValue)
    {   
        document.getElementById("ResultsSpan").innerHTML = rValue;
    }    
    </script>
    
    <script runat="server" >
      void Selection_Change(Object sender, EventArgs e)
      {
          Label1.Text = DropDownList1.SelectedItem.ToString();
      }
   </script>


</head>
<body>
    <form id="form1" runat="server">
    <div>
          <asp:ListBox ID="ListBox1" Runat="server"></asp:ListBox>
          <br />
          <br />
          <button type="Button" onclick="LookUpStock()">Look Up Stock</button>
          <br />
          <br />
          Items in stock: <span id="ResultsSpan" runat="server"></span>
          <br /><br />
          
        
        <asp:DropDownList ID="DropDownList1" AutoPostBack="true" OnSelectedIndexChanged="Selection_Change" runat="server">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Alphabetic</asp:ListItem>
            <asp:ListItem>Numeric</asp:ListItem>
        </asp:DropDownList>        
      
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        
       
        
    </div>
    </form>
</body>
</html>
