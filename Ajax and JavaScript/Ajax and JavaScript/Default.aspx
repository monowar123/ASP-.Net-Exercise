<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ajax_and_JavaScript._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <script src="JScript1.js" type="text/javascript"></script>
    <script src="JScript2.js" type="text/javascript"></script>
    <link href="Stylesheet1.css" rel="stylesheet" type="text/css" />
    <script src="DOM.js" type="text/javascript"></script>
</head>
<body onclick="getElement()">
    <form id="form1" runat="server">
    <h1 id="hText" onmouseout="mouseOut()" onmouseover="mouseHover()">This is a header</h1>
    <input id="btn" type="button" value="mouse out" onmouseout="mouseOut()" onmouseover="mouseHover()" />
    
    <div id="txt" class="clock"></div>
    
    <input type="button" value="Start count!" onclick="timedCount()" />
    <input type="text" id="txtCount" />
    <input type="button" value="Stop count!" onclick="stopCount()" />
    <br />
    <script type="text/javascript">
        startTime()
        executeScript();
        browser_information();
    </script>
    
    <br /> <br />
    <input type="button" value="alert box" onclick="alert_box()" />
    <input type="button" value="confirm box" onclick="confirm_box()" />
    <input type="button" value="prompt box" onclick="prompt_box()" />
    <input type="button" value="Product" onclick="product()" /> 

    <input id="btnTryCatch" type="button" value="Try Catch" onclick="showError()" />
    <input id="btnThrow" type="button" value="Throw" onclick="throwError()" />
    <br /> <br />
    
    <form action="submitpage.htm" onsubmit="return validate_form(this)" method="post">
        <input type="text" name="email" size="30" /> 
        <input type="submit" value="Submit" /> 
    </form>
    
    <div id="myDiv"><h2>Ajax change this text</h2></div>
    <button type="button" onclick="LoadXMLDocument()">Change Content</button>
    
    <br /><br />
    <p id="pp">HTML-DOM starts here</p>
    <table id="myTable" width="100%" border="2px">
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>Alaska</td>
      </tr>
    </table>
    <script type="text/javascript">
        getElement();
    </script>
    
    </form>
</body>
</html>
